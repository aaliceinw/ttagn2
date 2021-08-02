<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" type="text/css" href="formstyle.css" media="screen" />
    </head>
    <body>
    <center>
 <div class="form">
        <form name="registrationForm" onsubmit="return validateForm()" action="register" method="post">
      <fieldset>
        <legend>
          <h3>Registration Form</h3>
          
        </legend>

        <div class="form-inner">
            <h1>Select User</h1>
               Doctor: <input type="radio" value="doctor" name="user" required/>
               Patient: <input type="radio" value="patient" name="user" required/> 
               <button type="submit" value="Register">Register</button>
             
            </div
          </form>
      </fieldset>
   </div>
    </center>
    </body>
</html>