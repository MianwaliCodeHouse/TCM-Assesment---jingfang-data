<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AssessmentModel;
use App\Models\Category;
use App\Models\Clinicans;
use App\Models\Emailtemplates;
use App\Models\Maingroup;
use App\Models\Processing;
use Illuminate\Support\Facades\Session;
use Hash;
use Str;
use Mail;
use App\Services\PayUService\Exception;
use DateTime;
use Illuminate\Support\Facades\DB;

class Assessment extends Controller
{
  public function settings()
  {
    $clinicanId = session()->get('user');
    $clinicanData = Clinicans::select("*")->where('id', $clinicanId)->first();
    $emailTemplate = Emailtemplates::select('template')->where('clinican_id', $clinicanId)->first();
    if ($emailTemplate) {
      $emailTemplate = $emailTemplate->toArray();
    } else {
      $emailTemplate = Emailtemplates::select('template')->where('clinican_id', 0)->first()->toArray();
    }
    return view("assessment.assessmenttop") . view("assessment.settings", ['clinican' => $clinicanData->toArray(), 'emailTemplate' => $emailTemplate]);
  }
  public function updateEmailTemplate(Request $request)
  {
      $request->validate(
        [
          'template' => 'required',
          'clinican_id' => 'required'
        ]
      );
      $clinicanId = $request->clinican_id;
      $emailTemplate = Emailtemplates::select('template')->where('clinican_id', $clinicanId)->first();
      if ($emailTemplate) {
        DB::select('update emailtemplates set template="' . $request->template . '" where clinican_id=' . $clinicanId . '');
        return redirect(route('settings'));
      } else {
        $addEmailTemplate = new Emailtemplates;
        $addEmailTemplate->template = $request->template;
        $addEmailTemplate->clinican_id = $clinicanId;
        $addEmailTemplate->save();
        return redirect(route('settings'));
      }


    // if (strpos($request->template, '%UserFirstName%') && strpos($request->template, '%UserLastName%') &&  strpos($request->template, '%TestLink%')) {
    //   $request->validate(
    //     [
    //       'template' => 'required',
    //       'clinican_id' => 'required'
    //     ]
    //   );
    //   $clinicanId = $request->clinican_id;
    //   $emailTemplate = Emailtemplates::select('template')->where('clinican_id', $clinicanId)->first();
    //   if ($emailTemplate) {
    //     DB::select('update emailtemplates set template="' . $request->template . '" where clinican_id=' . $clinicanId . '');
    //     return redirect(route('settings'));
    //   } else {
    //     $addEmailTemplate = new Emailtemplates;
    //     $addEmailTemplate->template = $request->template;
    //     $addEmailTemplate->clinican_id = $clinicanId;
    //     $addEmailTemplate->save();
    //     return redirect(route('settings'));
    //   }
    // } else {
    //   return redirect(route('settings'));
    // }
  }
  public function updateProfile(Request $request)
  {
    $request->validate(
      [
        'first_name' => 'required',
        'last_name' => 'required',
        'email' => 'required',
      ]
    );
    $updateClinican = Clinicans::find($request->clinican_id);
    $updateClinican->firstname = $request->first_name;
    $updateClinican->lastname = $request->last_name;
    $updateClinican->email = $request->email;
    $updateClinican->practice_address = $request->practice_address;
    $updateClinican->mailing_address = $request->mailing_address;
    $updateClinican->phone_number = $request->phone_number;
    $updateClinican->licence_number = $request->licence_number;
    $updateClinican->country_licence_issued = $request->country_licence_issued;
    $updateClinican->save();

    return redirect(route('settings'));
  }
  public function assessment(Request $r)
  {
    $code = $r->input("code");
    $examId = $r->input("examId");
    $assessment = new AssessmentModel();
    $user = $assessment->getClientDetailByCode($code);
    if (count($user) > 0) {
      //  Session::put("user",$user[0]->id);


      if ($user[0]->stage == "Closed") {
        echo "This assessment is Closed";
      } else {
        if ($user[0]->attempt == 'y') {
          $txt = "Continue Evaluation";
        } else {
          $txt = "Start Evaluation";
        }
          return View("assessment/top") . View("assessment/assessment", ["data" => $user, "status" => $txt, "code" => $code, 'examId' => $examId]);
        
      }
    }
  }

  public function getQuestions(Request $r)
  {
    
    $code = $r->get("code");
    $examId = $r->get("examId");
    $assessment = new AssessmentModel();
    $user = $assessment->getClientDetailByCode($code);
    if ($user[0]->stage == "Closed") {
      return "closed";
    } else if ($user[0]->stage == "1st phase") {
      $p = new Processing();

      $result = $p->checkIfFirstPhasePassed($user[0]->id);
      $res = $p->getPhase2Questions($result);
      $result = $assessment->getQuestions();

      return [$res, count($result)];
    } else if ($user[0]->stage == "Not attempted") {
      $assessment = new AssessmentModel();
      $questions = $assessment->getQuestions($examId);
      $questions = $assessment->getQuestions($examId);

      return [$questions, 0];
    }
  }

  function generateNewPassword($id)
  {
    $assessment = new AssessmentModel();

    $flag = 0;
    while ($flag == 0) {
      $password = Str::random(10);
      $result = $assessment->matchPassword($password);
      if (count($result) == 0) {
        $flag = 1;
        $assessment->setPassword($id, $password);
      }
    }
    return $password;
  }
  public function sendPasswordInEmail($first, $last)
  {
    $assessment = new AssessmentModel();
    $id = Session::get("user");
    $invites = $assessment->getInvites($id);
    $email = $invites[0]->emailaddress;

    $data = array("password" => $password, "firstname" => $first, "lastname" => $last);

    Mail::send("assessment.sendpassword", $data, function ($messages) use ($email, $first, $last) {
      $messages->to($email);
      $messages->subject("Results Ready for " . $first . " " . $last);
    });
    return "";
  }

  public function login()
  {
    return view("assessment.top") . view("assessment.login", ["loginfailed" => ""]);
  }

  public function clientsubmit(Request $r)
  {

    $email = $r->get("email");
    $password = $r->get("password");
    $assessment = new AssessmentModel();
    $result = $assessment->getClinicanRecord($email, $password);
    if (count($result) > 0) {
      Session::put("user", $result[0]->id);
      return redirect("/usersmanagement");
    } else {
      return view("assessment.top") . view("assessment.login", ["loginfailed" => "Either credentials does not match or account is deactive"]);
    }
  }

  public function submitQuestionAnswers(Request $r)
  {
    try {
      $id = Session::get("user");
      $questions = $r->get("questions");
      $list = $r->get("list");
      $code = $r->get("code");

      $assessment = new AssessmentModel();
      $customer = $assessment->getClientDetailByCode($code);

      if ($customer[0]->stage == "1st phase") {
        $p = new Processing();
        $p->processQuestions($customer[0]->id, $questions, $list);
        $assessment->closeStage($customer[0]->id);

        $clinician = $assessment->getClinicianDetailsById($id);
        $email = $clinician[0]->email;
        $data = $assessment->getClientDetailById($customer[0]->id);
        $firstname = $data[0]->firstname;
        $lastname = $data[0]->lastname;
        $data = array("firstname" => $firstname, "lastname" => $lastname);
        Mail::send("assessment.notify", $data, function ($messages) use ($email, $firstname, $lastname) {
          $messages->to($email);
          $messages->subject("Assessment Completed for " . $firstname . " " . $lastname);
        });

        return "closed";
      } else {
        $p = new Processing();

        $p->processQuestions($customer[0]->id, $questions, $list);

        $assessment->updateEvaluationStatus($customer[0]->id);
        $result = $p->checkIfFirstPhasePassed($customer[0]->id);

        $subquestions = [];
        $txt = "";
        if (count($result) < 1) {
          $assessment->closeStage($customer[0]->id);
          $clinican = $assessment->getClinicianDetailsById($id);
          $email = $clinican[0]->email;
          $data = $assessment->getClientDetailById($customer[0]->id);
          $firstname = $data[0]->firstname;
          $lastname = $data[0]->lastname;
          $data = array("firstname" => $firstname, "lastname" => $lastname);
          Mail::send("assessment.notify", $data, function ($messages) use ($email, $firstname, $lastname) {
            $messages->to($email);
            $messages->subject("Assessment Completed for " . $firstname . " " . $lastname);
          });
          return [[], 0];
        } else {
          $res = $p->getPhase2Questions($result);
          return [$res, count($questions) - 1];
        }
      }
    } catch (\Exception $e) {
      $message2 = addslashes($e->getMessage());
      $recipient = "qaisar.qk17@gmail.com";
      Mail::raw($message2, function ($email) use ($recipient) {
        $email->to($recipient); // Add custom headers
      });
      return $message2;
    }
  }


  public function test()
  {
    $password = Str::random(10);
    echo $password;
    return;
    $p = new Processing();
    $assessment = new AssessmentModel();
    $result = $p->checkIfFirstPhasePassed(2);
    $subquestions = [];
    $txt = "";
    //print_r($result);
    //return;
    for ($i = 0; $i < count($result); $i++) {
      if ($i == count($result) - 1) {
        $txt .= "maingroupid=" . $result[$i];
      } else {
        $txt .= "maingroupid=" . $result[$i] . "  or ";
      }
    }
    $txt = "select * from questions where (" . $txt . ") and subgroupid!=0";
    $res = $assessment->getSubCategoryQuestions($txt);
    print_r($res);
  }

  function viewResultSubmit(Request $r)
  {
    $password = $r->get("password");

    $assessment = new AssessmentModel();
    $result = $assessment->matchPassword($password);

    if (count($result) > 0) {
      $code = $result[0]->invitationcode;
      $id = $result[0]->id;
      $user = $assessment->getClientDetailById($id);
      if ($user[0]->stage == "Closed") {
        $results = $assessment->getResults($user[0]->id);
        
        $p = new Processing;
        $data = $p->calculateTheResult($results, $r->id);

        $maingroups2 = $data[0];
        $mainGroupsAnsweredCorrect2 = $data[1];
        $mainGroupsAnsweredIncorrect2 = $data[2];

        $maingroupsTotalQuestions2 = $data[3];
        $maingroupsCorrectQuestions2 = $data[4];

        $maingroups = [];
        $mainGroupsAnsweredCorrect = [];
        $mainGroupsAnsweredIncorrect = [];
        $maingroupsTotalQuestions = [];
        $maingroupsCorrectQuestions = [];


        $priorityQuestions2 = $data[5];
        $sGroups2 = $data[7];
        $sGroupsPostiveAnswered2 = $data[8];
        $sGroupsUnknownAnswered2 = $data[9];
        $sGroupsNegativeOrNAAnswered2 = $data[10];
        $firstname = $data[11];
        $lastname = $data[12];
        $attemptdate = $data[13];

        $priorityQuestions = [];
        $sGroups = [];
        $sGroupsPostiveAnswered = [];
        $sGroupsUnknownAnswered = [];
        $sGroupsNegativeOrNAAnswered = [];


        $percentages = [];
        for ($i = 0; $i < count($maingroups2); $i++) {
          $percentages['' . $maingroupsCorrectQuestions2[$i] / $maingroupsTotalQuestions2[$i] . ''] = $maingroups2[$i];
        }

        krsort($percentages);
        $p = array_keys($percentages);
        for ($i = 0; $i < count($maingroups2); $i++) {

          $flag = 0;
          for ($j = 0; $j < count($p); $j++) {
            $g = $percentages[$p[$j]];
            if ($g == $maingroups2[$i]) {
              $flag = 1;
              break;
            }
          }
          if ($flag == 0) {
            $percentages[$maingroups2[$i]] = $maingroups2[$i];
          }
        }
        $p = array_keys($percentages);
        for ($i = 0; $i < count($p); $i++) {
          $g = $percentages[$p[$i]];
          for ($j = 0; $j < count($maingroups2); $j++) {
            if ($g == $maingroups2[$j]) {
              $maingroups[$i] = $maingroups2[$j];
              $mainGroupsAnsweredCorrect[$i] = $mainGroupsAnsweredCorrect2[$j];
              $mainGroupsAnsweredIncorrect[$i] = $mainGroupsAnsweredIncorrect2[$j];
              $maingroupsCorrectQuestions[$i] = $maingroupsCorrectQuestions2[$j];
              $maingroupsTotalQuestions[$i] = $maingroupsTotalQuestions2[$j];
              $priorityQuestions[$i] = $priorityQuestions2[$j];
              $sGroups[$i] = $sGroups2[$j];
              $sGroupsPostiveAnswered[$i] = $sGroupsPostiveAnswered2[$j];
              $sGroupsUnknownAnswered[$i] = $sGroupsUnknownAnswered2[$j];
              $sGroupsNegativeOrNAAnswered[$i] = $sGroupsNegativeOrNAAnswered2[$j];
            }
          }
        }
        Session::put("user", $id);
        return View("assessment.assessmenttop") . View("assessment/viewResultSubmit", ["firstname" => $firstname, "lastname" => $lastname, "maingroups" => $maingroups, "maingroupstotalquestions" => $maingroupsTotalQuestions, "maingroupscorrectquestions" => $maingroupsCorrectQuestions, "maingroupsansweredcorrect" => $mainGroupsAnsweredCorrect, "maingroupsansweredincorrect" => $mainGroupsAnsweredIncorrect, "sgroups" => $sGroups, "sgroupsansweredpositively" => $sGroupsPostiveAnswered, "sgroupsunknownanswered" => $sGroupsUnknownAnswered, "sgroupsnegativeonaanswered" => $sGroupsNegativeOrNAAnswered, "attemptdate" => $attemptdate]);
      } else {
        Session::put("user", $id);
        return redirect("/assessment?code=" . $code);
      }
    } else {
      return view("assessment.top") . view("assessment.login", ["loginfailed" => "Password is wrong"]);
    }
  }

  function sendPassword(Request $r)
  {
    $email = $r->get("email");
    $assessment = new AssessmentModel();
    $customer = $assessment->getClientDataByEmail($email);


    if ($customer[0]->password != "") {
      $this->sendPasswordInEmail($customer[0]->password, $customer[0]->firstname, $customer[0]->lastname, $customer[0]->emailaddress);
    } else {
      $password = $this->generateNewPassword($customer[0]->id);

      $this->sendPasswordInEmail($password, $customer[0]->firstname, $customer[0]->lastname, $customer[0]->emailaddress);
    }

    return "";
  }

  function usersmanagement()
  {
    $id = Session::get("user");
    $ad = new AssessmentModel();
    $result = $ad->getClientsInvitedByMe($id);
    
    $data = [];
    foreach ($result as $r) {
      $invites = $ad->getInvites($r->clientid, $id);
      $r->invites = $invites;
    }
    $maingroups = Maingroup::select('id', 'name','parent_id')->get();
    $cat_names = Category::select('module')->get()->toArray();
    $cat_n = [];
    foreach ($cat_names as $index => $value) {
      $cat_n[] = $value['module'];
    }
    return view("assessment.assessmenttop") . view("assessment.usersmanagement", ["invites" => $result, 'maingroups' => $maingroups, 'cat_names' => $cat_n]);
  }

  function fillsurveys()
  {
    $id = Session::get("user");
    $ad = new AssessmentModel();
    $result = $ad->getClientsInvitedByMeForPendingSurveys($id);
    return view("assessment.assessmenttop") . view("assessment.pendingsurveys", ["invites" => $result]);
  }



  function addinvitebyuser(Request $r)
  {
    try {
    


        $firstname = $r->get("firstname");
        $lastname = $r->get("lastname");
        $emailaddress = $r->get("emailaddress");
        $testinguser = $r->get("testinguser");
        $id = Session::get("user");

       
        

        $clinicanId = session()->get('user');
        $emailTemplate = Emailtemplates::select('template')->where('clinican_id', $clinicanId)->first();
        if ($emailTemplate) {
          $emailTemplate = $emailTemplate->toArray();
        } else {
          $emailTemplate = Emailtemplates::select('template')->where('clinican_id', 0)->first()->toArray();
        }

        

        $ad = new AssessmentModel();
        $clientid = $ad->addClient($firstname, $lastname, $emailaddress);

        $now = new DateTime();
        $mon = $now->format('m');
        $day = $now->format('d');
        $year = $now->format('Y');
        $date2 = $year . '-' . $mon . '/' . $day;

        if ($testinguser == "No") {
          $testinguser = 0;
        } else if ($testinguser == "Yes") {
          $testinguser = 1;
        }
        $maingroup = $r->get("maingroup");

        // foreach ($maingroups as $maingroup) {
          $random = rand(0, 99999999);
          $mainGroups = Maingroup::select('id', 'name')->where('id', $maingroup)->first();

          $mainGroupName=$mainGroups->name;
        $data = array("first" => $firstname, "lastname" => $lastname, "emailaddress" => $emailaddress, "random" => $random, "maingroup" => $maingroup, 'emailTemplate' => $emailTemplate,'assessmentName'=>$mainGroupName);
        Mail::send("admin.invitetemplate2", $data, function ($messages) use ($emailaddress) {
          $messages->to($emailaddress);
          $messages->subject("Jing Fang Assessment Invitation..!");
        });
        $last = $ad->addInviteByUser($clientid, $random, $id, $date2, $testinguser, $maingroup);
      // }
      return "success";
    } catch (\Exception $e) {
      $message = addslashes($e->getMessage());
      return $message;
    }
  }

  function userchangepassword()
  {
    return view("assessment.assessmenttop") . view("assessment.changepassword");
  }

  function userchangepassword2(Request $r)
  {
    $oldpassword = $r->get("oldpassword");
    $newpassword = $r->get("newpassword");
    $id = Session::get("user");
    $assessment = new AssessmentModel();
    $result = $assessment->matchPassword($oldpassword);
    if (count($result) > 0) {
      $assessment->setPassword($id, $newpassword);
      return "";
    } else {
      return "n";
    }
  }

  function inviteagain(Request $r)
  {
    $clientid = $r->get("clientid");
    $maingroupId = $r->get("maingroupId");

    $mainGroups = Maingroup::select('id', 'name')->where('id', $maingroupId)->first();

    $mainGroupName=$mainGroups->name;

    $ad = new AssessmentModel();
    $result = $ad->getClient($clientid);

    $firstname = $result[0]->firstname;
    $lastname = $result[0]->lastname;
    $emailaddress = $result[0]->email;
    $id = Session::get("user");


    $random = rand(0, 99999999);

    $clinicanId = session()->get('user');
        $emailTemplate = Emailtemplates::select('template')->where('clinican_id', $clinicanId)->first();
        if ($emailTemplate) {
          $emailTemplate = $emailTemplate->toArray();
        } else {
          $emailTemplate = Emailtemplates::select('template')->where('clinican_id', 0)->first()->toArray();
        }

    $data = array("first" => $firstname, "lastname" => $lastname, "emailaddress" => $emailaddress, "random" => $random, "maingroup" => $maingroupId, 'emailTemplate' => $emailTemplate,'assessmentName'=>$mainGroupName);
    Mail::send("admin.invitetemplate2", $data, function ($messages) use ($emailaddress) {
      $messages->to($emailaddress);
      $messages->subject("Jing Fang Assessment Invitation..!");
    });


    $now = new DateTime();
    $mon = $now->format('m');
    $day = $now->format('d');
    $year = $now->format('Y');
    $date2 = $year . '-' . $mon . '/' . $day;

    $result = $ad->seeIfClientIsTesting($clientid);
    if (count($result) > 0) {
      $last = $ad->addInviteByUser($clientid, $random, $id, $date2, 1, $maingroupId);
    } else {
      $last = $ad->addInviteByUser($clientid, $random, $id, $date2, 0, $maingroupId);
    }
    return [$last, $firstname, $lastname, $emailaddress, $mainGroups];
  }
  function s(Request $r)
  {
    try {
      $invitationid = $r->get("invitationid");
      $firstfamily = $r->get("topformula");

      $secondfamily = $r->get("secondformula");
      $thirdfamily = $r->get("thirdformula");
      $resultsuseful = $r->get("resultsuseful");

      $assessment = new AssessmentModel();
      $assessment->putSurveyResult($invitationid, $firstfamily, $secondfamily, $thirdfamily, $resultsuseful);
      return "";
    } catch (\Exception $e) {
      $message = addslashes($e->getMessage());
      return $message;
    }
  }
  function submitsurvey(Results $r)
  {
    try {
      return "";
      $invitationid = $r->get("invitationid");
      $firstfamily = $r->get("topformula");

      $secondfamily = $r->get("secondformula");
      $thirdfamily = $r->get("thirdformula");
      $resultsuseful = $r->get("resultsuseful");

      $assessment = new AssessmentModel();
      $assessment->putSurveyResult($invitationid, $firstfamily, $secondfamily, $thirdfamily, $resultsuseful);
      return "";
    } catch (\Exception $e) {
      $message = addslashes($e->getMessage());
      $ad->createLog($logid, $message, "Failed");
    }
  }

  function comparison(Request $r)
  {
    $clientid = $r->get("clientid");
    $assessment = new AssessmentModel();
    $res = $assessment->getClientDetailsForResultComparison($clientid);
    $p = new Processing();
    $groups = [];
    $dates = [];
    $percent = [];
    for ($i = 0; $i < count($res); $i++) {
      $results = $assessment->getResults($res[$i]->id);

      $data = $p->process($results, $res[$i]->id);
      $maingroups = $data[0];
      $maingroupstotalquestions = $data[1];
      $maingroupscorrectquestions = $data[2];

      for ($m = 0; $m < count($maingroups); $m++) {
        $index = array_search($maingroups[$m], $groups);
        if ($index !== false) {
          $a = $dates[$index];
          array_push($a, $res[$i]->attemptdate);
          $dates[$index] = $a;

          $a = $percent[$index];
          array_push($a, ($maingroupscorrectquestions[$m] / $maingroupstotalquestions[$m]) * 100);
          $percent[$index] = $a;
        } else {
          array_push($groups, $maingroups[$m]);
          $a = [];
          array_push($a, $res[$i]->attemptdate);
          array_push($dates, $a);
          $a = [];
          array_push($a, ($maingroupscorrectquestions[$m] / $maingroupstotalquestions[$m]) * 100);
          array_push($percent, $a);
        }
      }
    }


    //return view('charts.index', compact('charts'));

    return view("assessment.top") . view("assessment.comparison", ["groups" => $groups, "dates" => $dates, "percent" => $percent]);
  }

  function searchByTerms(Request $r)
  {
    $id = Session::get("user");
    $searchterm = $r->get("searchterm");
    $ad = new AssessmentModel();
    $result = $ad->getClientsInvitedByMe($id);
    $data = [];
    foreach ($result as $r) {
      if ($searchterm != "") {
        $invites = $ad->getInvitesBySearchTerm($r->clientid, $id, $searchterm);
      } else {
        $invites = $ad->getInvites($r->clientid, $id);
      }
      $r->invites = $invites;
    }

    return $result;
  }

  function logout_user()
  {
    Session::forget("user");
    return redirect("/login");
  }
}
