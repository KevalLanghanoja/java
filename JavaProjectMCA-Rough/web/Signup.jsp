<html>
  <link rel="stylesheet" href="Style/signup.css">
  <script src="Style/cities.js"></script>
<body style="background: #384047;">
  <form action="#" method="post" class="main">
    <h2 class="headerS">Mechanic Sign Up</h2>
    <div>
      <p class="pcol">
        <label for="Name" class="floatLabel">Name</label>
        <input required="required" id="Name" name="Name" type="text" class="txtbox">

        <label for="Mobile No" class="floatLabel1">Mobile No</label>
        <input required="required" id="Mobile No" name="Mobile No" type="text" class="txtbox">

      </p>
      <p class="pcol">

        <label for="Email" class="floatLabel">Email</label>
        <input required="required" id="Email" name="Email" type="text" class="txtbox">

        <label for="Gender" class="floatLabel1">Gender</label>
        <!-- <input id="Gender" name="Gender" type="text"> -->
        <select required="required" id="Gender" class="genderDropDowm" name="Gender">
          
          <option value="Male">Male</option>
          <option value="Female">Female</option>
          <option value="Other">Other</option>
         
        </select>

      </p>

      <p class="pcol">
        <label for="password" class="floatLabel"> Password</label>
        <input id="password" name="password" type="password" class="txtbox">

        <label for="State" class="floatLabel1">State</label>
        <select onchange="print_city('state', this.selectedIndex);" id="State" name ="stt" class="stateDropdown" required></select>
        
      </p>
      <p class="pcol">

        <label for="confirm_password" class="floatLabel">Confirm Password</label>
        <input id="confirm_password" name="confirm_password" type="password" class="txtbox">
        <label for="City" class="floatLabel1">City</label>
        <select id ="state" class="cityDropDown" required>
          <option >Select City</option>
        </select>
<script language="javascript">print_state("State");</script>

      </p>

      <p class="pcol">

        <label for="Work type" class="floatLabel">Work Type</label>
        <select id="Gender" class="workTypeDropDowm" name="Gender">
          
          <option value="2 Wheeler">2 Wheeler</option>
          <option value="4 Wheeler">4 Wheeler</option>
          <option value="2 Wheeler & 4 Wheeler">2 Wheeler & 4 Wheeler</option>
         
        </select>

      </p>
    </div>
    <p>
      <input type="submit" value="Create My Account" id="submit" class="submitbtn">
    </p>

  </form>
</body>

</html>