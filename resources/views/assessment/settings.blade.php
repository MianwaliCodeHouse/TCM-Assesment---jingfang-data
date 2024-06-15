<script>
  var active="settings"
  
  $("#"+active).css("background-color","blue")
  $("#"+active+"_a").css("color","white")
  
  </script>

<div class="container mt-5 pt-5">
    <div class="row">
        <div class="col-10 col-lg-8 mx-auto">

            <nav>
                <div class="nav nav-tabs text-center" id="nav-tab" role="tablist">
                    <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home"
                        type="button" role="tab" aria-controls="nav-home" aria-selected="true">Profile</button>
                    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile"
                        type="button" role="tab" aria-controls="nav-profile" aria-selected="false">Email
                        Template</button>
                </div>
            </nav>
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                  <form action="{{ route("updateProfile.info") }}" method="Post">
                    @csrf
                    <div class="mt-5 p-5 bg-white rounded">
                      <input type="number" name="clinican_id" value="{{ session()->get("user") }}" hidden>
                        <div class="mb-6">
                            <input type="hidden" id="hiddenid">
                            <label class="form-label" for="">First Name</label>
                            <input class="form-control" id="firstname" type="text" name="first_name" value="{{ $clinican['firstname'] ? $clinican['firstname'] : "" }}" >
                        </div>
                        <div class="mb-6">
                            <label class="form-label" for="">Last Name</label>
                            <input class="form-control" id="lastname" type="text" name="last_name"
                                placeholder="Enter Last Name"  value="{{ $clinican['lastname'] ? $clinican['lastname'] : "" }}">
                        </div>
                        <div class="mb-6">
                            <label class="form-label" for="">Email Address</label>
                            <input class="form-control" id="emailaddress" type="text" name="email"
                                placeholder="Enter Email Address"  value="{{ $clinican['email'] ? $clinican['email'] : "" }}">
                        </div>
                        <div class="mb-6">
                          <label class="form-label" for="">Practice Address</label>
                          <input class="form-control" id="practice_address" type="text" name="practice_address" value="{{ $clinican['practice_address'] ? $clinican['practice_address'] : "" }}"></div>
                          <div class="mb-6">
                            <label class="form-label" for="">Mailing Address</label>
                            <input class="form-control" id="mailing_address" type="text" name="mailing_address" value="{{ $clinican['mailing_address'] ? $clinican['mailing_address'] : "" }}"></div>
                          <div class="mb-6">
                            <label class="form-label" for="">Phone Number</label>
                            <input class="form-control" id="phone_number" type="number" name="phone_number" value="{{ $clinican['phone_number'] ? $clinican['phone_number'] : "" }}"></div>
                            <div class="mb-6">
                            <label class="form-label" for="">Licence Number</label>
                            <input class="form-control" id="licence_number" type="number" name="licence_number" value="{{ $clinican['licence_number'] ? $clinican['licence_number'] : "" }}"></div>
                            <div class="mb-6">
                            <label class="form-label" for="">Country Licence Issued</label>
                            <input class="form-control" id="country_licence_issued" type="text" name="country_licence_issued" value="{{ $clinican['country_licence_issued'] ? $clinican['country_licence_issued'] : "" }}"></div>
                        <button class="btn btn-primary">Update Profile</button>
                    </div>
                  </form>
                </div>
                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab ">
                  <form action="{{ route("updateEmailTemplate") }}" method="POST">
                    @csrf
                    <input type="number" name="clinican_id" value="{{ session()->get("user") }}" hidden>
                    <div class="mt-5 p-5 bg-white rounded">
                      <label for="" class="form-label">Edit Email Template</label>
                      <textarea name="template" id="" cols="30" rows="10" class="form-control mb-3">{{ $emailTemplate['template'] }}</textarea>
                      <button class="btn btn-primary">Update Eamilt Template</button>
                    </div>
                  </form>
                </div>
            </div>
        </div>
    </div>
</div>

