<?php
include 'inc/header.php';
Session::CheckSession();
$sId =  Session::get('roleid');
if ($sId === '1') { ?>

<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['addCompany'])) {

  $userCompany = $users->addNewCompanyByAdmin($_POST);
}

if (isset($userCompany)) {
  echo $userCompanyAdd;
}


 ?>


 <div class="card ">
   <div class="card-header">
          <h3 class='text-center'>Add New Compnay</h3>
        </div>
        <div class="cad-body">



            <div style="width:600px; margin:0px auto">

            <form class="" action="" method="post">
               <div class="form-group pt-3">
                  <label for="companyname">Company name</label>
                  <input type="text" name="companyname"  class="form-control">
                </div>
               <div class="form-group pt-3">
		  <label for="typecompany">Type of Company</label>
                    <select class="form-control" name="typecompany">
                      <option value="SA">SA</option>
                      <option value="SAS">SAS</option>
                      <option value="SARL">SARL</option>
                      <option value="Association">Association</option>
                    </select>
                </div>
                <div class="form-group">
                  <label for="address1">Address 1</label>
                  <input type="text" name="address1"  class="form-control">
		</div>
              <div class="form-group">
                  <label for="address2">Address 2</label>
                  <input type="text" name="address2"  class="form-control">
                </div>
                <div class="form-group">
                  <label for="zipcode">ZIP CODE</label>
                  <input type="text" name="zipcode"  class="form-control">
                </div>
                <div class="form-group">
                  <label for="city">City</label>
                  <input type="text" name="city"  class="form-control">
		</div>
               <div class="form-group">
                  <label for="area">Area</label>
                  <input type="text" name="area"  class="form-control">
                </div>
               <div class="form-group">
                  <label for="department">Department</label>
                  <input type="text" name="department"  class="form-control">
                </div>
               <div class="form-group">
                  <label for="Region">Region</label>
                  <input type="text" name="Region"  class="form-control">
                </div>

               <div class="form-group">
                  <label for="adminrepre">Admintratif Representative</label>
                  <input type="text" name="adminrepre"  class="form-control">
                </div>
               <div class="form-group">
                  <label for="salesrepre">Sales Representative</label>
                  <input type="text" name="salesrepre"  class="form-control">
                </div>

               <div class="form-group">
                  <label for="techrepre">Technique Representative</label>
                  <input type="text" name="techrepre"  class="form-control">
                </div>
               <div class="form-group">
                  <label for="website">Website</label>
                  <input type="text" name="website"  class="form-control">
                </div>
             <div class="form-group">
                  <label for="emailcontact">Email contact</label>
                  <input type="email" name="emailcontact"  class="form-control">
                </div>


                  
                <div class="form-group">
                  <button type="submit" name="addCompany" class="btn btn-success">Register</button>

                </div>


            </form>
          </div>


        </div>
      </div>

<?php
}else{

  header('Location:index.php');



}
 ?>

  <?php
  include 'inc/footer.php';

  ?>
