<%-- 
    Document   : registration
    Created on : 8 Jul 2021, 09:20:46
    Author     : joanlaine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <form name="registrationForm" onsubmit="return validateForm()" action="confirmation.php" method="post">
    <h2>Registration Form</h2>
    <div class="row">
        <label>First Name</label>
        <input type="text" name="fname" placeholder="First Name">
        <div class="error" id="fnameErr"></div>
    </div>
    <div class="row">
        <label>Last Name</label>
        <input type="text" name="lname" placeholder="Last Name">
        <div class="error" id="lnameErr"></div>
    </div>
    <div class="row">
        <label>Mobile Number</label>
        <input type="text" name="mobile" placeholder="Mobile Number" maxlength="10">
        <div class="error" id="mobileErr"></div>
    </div>
    <div class="row">
        <label>Email Address</label>
        <input type="text" name="email" placeholder="Email Address">
        <div class="error" id="emailErr"></div>
    </div>
    <div class="row">
        <label>Password</label>
        <input type="text" name="pw1" placeholder="Password">
        <div class="error" id="pw1Err"></div>
    </div>
    <div class="row">
        <label>Country</label>
        <select name="country">
            <option>Select</option>
            <option>France</option>
            <option>Germany</option>
            <option>India</option>
            <option>Jamaica</option>
            <option>South Africa</option>
            <option>United States</option>
            <option>United Kingdom</option>
        </select> 
        <div class="error" id="countryErr"></div>
    </div>
    <div class="row">
        <label>Gender</label>
        <div class="form-inline">
            <label><input type="radio" name="gender" value="gender"> Male</label>
            <label><input type="radio" name="gender" value="gender"> Female</label>
            <label><input type="radio" name="gender" value="gender"> Other</label>
        </div>
        <div class="error" id="genderErr"></div>
    </div>
    <div class="row">
        <label>Courses <i>(Optional)</i></label>
        <div class="form-inline">
            <label><input type="checkbox" name="courses[]" value="change"> Change</label>
            <label><input type="checkbox" name="courses[]" value="projects"> Projects</label>
            <label><input type="checkbox" name="courses[]" value="coding"> Coding</label>  
        </div>
    </div>        
    <div class="row">
        <input type="submit" value="Submit">
    </div>
</form>
    </body>
</html>
