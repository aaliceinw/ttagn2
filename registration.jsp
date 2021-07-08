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
        <title>registration</title>
    </head>
    <body>
       <form name="registrationForm" onsubmit="return validateForm()" action="confirmation.php" method="post">
    <h2>Registration Form</h2>

    <div class="row">
        <label>Select User</label>
        <div class="form-inline">
            <label><input type="radio" name="duser" value="doctor"> Doctor</label>
            <label><input type="radio" name="puser" value="patient"> Patient</label>
        </div>
        <div class="error" id="genderErr"></div>
    </div>
    
    </div>        
    <div class="row">
        <input type="submit" value="Submit">
    </div>
</form>
    </body>
</html>
