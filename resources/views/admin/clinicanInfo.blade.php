<script>
    var active = "clinicanInfo"

    $("#" + active).css("background-color", "blue")
    $("#" + active + "_a").css("color", "white")
</script>
<div class="mx-auto ms-lg-80">
    <div class="py-8 px-6">
        <div class="col-12 col-lg-auto mb-4 mb-lg-0">
            <div class="d-flex align-items-center">
                <h4 class="mb-0 me-2">Clinican Info</h4>
            </div>
        </div>
        <form method="POST" action="{{ route('updateClinicianInfo') }}">
          @csrf
          <textarea name="content" rows="20" cols="50" class="form-control rounded bg-white mt-5">
              <?php
                  // Read the content of clinicanInfo.html and display it in the textarea
                  $content = file_get_contents(public_path('clinicanInfo.html'));
                  echo htmlspecialchars($content);
              ?>
          </textarea>
          <br>
          <input type="submit" value="Update" class="btn btn-primary btn-lg">
      </form>

    </div>
</div>
