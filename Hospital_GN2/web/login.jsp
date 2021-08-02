<!DOCTYPE html> <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        <link rel="stylesheet" type="text/css" href="formstyle.css" media="screen" />
    </head>
    <body>
       
<div class="form">
     <form name="loginForm" action="login" method="post">
        
      <h1>Login</h1>
      <fieldset>
        <legend>
          <h3>Login Form</h3>
          
        </legend>

        <div class="form-inner">
            <h1>Select User</h1>
               Doctor: <input type="radio" value="doctor" name="user" required/>
               Patient: <input type="radio" value="patient" name="user" required/> 
               <button type="submit" value="Login">Login</button>
             
        </div>
          
      </fieldset>
    </form>
    </div>
      </body>
</html>

