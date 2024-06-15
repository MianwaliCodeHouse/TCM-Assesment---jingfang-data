<?php

namespace App\Http\Controllers;

use App\Models\AdminModel;
use App\Models\Category;
use App\Models\Invitations;
use App\Models\Maingroup;
use Illuminate\Http\Request;
use DB;

class GraphsController extends Controller
{
    public function viewAssessmentResult(Request $request)
    {
        $request->validate(
            [
                'name' => 'required',
                'id' => 'required'
            ]
        );
        $graph_subtitle = '';
        $note=Maingroup::select('notes')->where('id',$request->id)->first();
        $note=$note->notes;
        $graph_title = $request->name;
        $graph_subtitle = '';
        if ($request->name == 'CCMQ' || $request->name == 'CCMQ-SF') {
            
            $categoriesNames = Category::select('name')->where('module', $request->name)->get();
            $dates = Invitations::select('attemptdate')->where('clientid', $request->clientId)->where('maingroup_id', $request->id)->get();
            $categories = $dates->pluck('attemptdate')->toArray();
            // dd($categories);
            $data = [];
            foreach ($categoriesNames as $value) {
                if($request->name != 'CCMQ-SF'){
                  $graph_subtitle = 'If the “Balaced category” is >= to 60, display “This patient is relatively balaned in constitution';
                  $graph_subtitle = '';
                    // Push a new series into the $data array for each category name
                    $data[] = ['name' => $value->name, 'data' => $this->results($value->name, $request->clientId)];
                }else{
                    $data[] = ['name' => $value->name, 'data' => $this->resultCCMQ_SF($value->name, $request->clientId)];
                }
            }

            return view('assessment.graphs.lineGraph', ['categories'=>$categories, 'data'=>$data, 'graph_title'=>$graph_title, 'graph_subtitle'=>$graph_subtitle,'note'=>$note]);

        } 
        else {
          // BCQs ,BCQs +ve and BCQs -ve 
            $categoriesNames = Category::select('name')->where('module', $request->name)->get();
            $dates = Invitations::select('attemptdate')->where('clientid', $request->clientId)->where('maingroup_id', $request->id)->get();
            $dates=$dates->toArray();
            foreach ($categoriesNames as $value) {
                $result = DB::select('SELECT questions.category_id, categories.name AS category_name, invitations.attemptdate, SUM(COALESCE(results.answer, 0)) AS total_answer_sum, COUNT(questions.category_id) AS count FROM invitations INNER JOIN results ON invitations.id = results.customerid INNER JOIN questions ON questions.id = results.questionid INNER JOIN categories ON questions.category_id = categories.id WHERE invitations.clientid = '.$request->clientId.' and invitations.maingroup_id='.$request->id.' GROUP BY questions.category_id, categories.name, invitations.attemptdate;');
                
                $result=$result;
                
               
            }
            return view('assessment.graphs.NoGraph',['dates'=>$dates,'results'=>$result,'note'=>$note]);
        }
    }

    private function resultCCMQ_SF($cat_name, $client_id)
    {
        $result = DB::select('SELECT
        questions.category_id,
        categories.name AS category_name,
        invitations.attemptdate,
        SUM(COALESCE(results.answer, 0)) AS total_answer_sum
      FROM
        invitations
        INNER JOIN results ON invitations.id = results.customerid
        INNER JOIN questions ON questions.id = results.questionid
        INNER JOIN categories ON questions.category_id = categories.id
      WHERE
        invitations.clientid = ' . $client_id . '
        AND categories.name = "' . $cat_name . '"
        AND categories.module = "CCMQ-SF"
      GROUP BY
        questions.category_id, categories.name, invitations.attemptdate
      ORDER BY
        invitations.attemptdate ASC;');
        $dates = [];

        $cat_names_get = $this->cat_names();


        foreach ($result as $date) {
            $cat_search = array_search($cat_name, $cat_names_get);

            $count = DB::table('questions')->where('category_id', $cat_search)->count();



            $total = ($date->total_answer_sum>0) ? (100*($date->total_answer_sum - $count) / ($count * 5)) : 0.0;
            $dates[] = $total;
        }

        return $dates;
    }
    private function results($cat_name, $client_id)
    {
        $result = DB::select('SELECT
        questions.category_id,
        categories.name AS category_name,
        invitations.attemptdate,
        SUM(COALESCE(results.answer, 0)) AS total_answer_sum
      FROM
        invitations
        INNER JOIN results ON invitations.id = results.customerid
        INNER JOIN questions ON questions.id = results.questionid
        INNER JOIN categories ON questions.category_id = categories.id
      WHERE
        invitations.clientid = ' . $client_id . '
        AND categories.name = "' . $cat_name . '"
        AND categories.module = "CCMQ"
      GROUP BY
        questions.category_id, categories.name, invitations.attemptdate
      ORDER BY
        invitations.attemptdate ASC;');
        $dates = [];

        $cat_names_get = $this->cat_names();


        foreach ($result as $date) {
            $cat_search = array_search($cat_name, $cat_names_get);

            $count = DB::table('questions')->where('category_id', $cat_search)->count();



            $total = ($date->total_answer_sum>1) ? (($date->total_answer_sum - $count) / ($count * 4)) * 100 : 0;
            $total = ($date->total_answer_sum>0) ? (($date->total_answer_sum - $count) / ($count * 4)) * 100 : 0.0;
            $dates[] = $total;
        }

        return $dates;
    }
    private function cat_names()
    {
        $cat_names = Category::select('id', 'name')->get()->toArray();
        $cat_n = [];
        foreach ($cat_names as $index => $value) {
            $cat_n[$value['id']] = $value['name'];
        }
        return $cat_n;
    }
}
