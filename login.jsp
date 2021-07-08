<%-- 
    Document   : login
    Created on : 8 Jul 2021, 09:16:42
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
        <form name="loginForm" onsubmit="return validateForm()" action="confirmation.php" method="post">
    <h2>Login Form</h2>
    <div class="row">
        <label>User Name<label>
        <input type="text" name="uname" placeholder="User Name">
        <div class="error" id="unameErr"></div>
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
        <input type="submit" value="Submit">
    </div>
</form>
    </body>
</html>
