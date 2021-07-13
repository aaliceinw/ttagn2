
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>preg</title>
        <link rel="stylesheet" type="text/css" href="style.css" media="screen" />
    </head>
    <body>
       <center>
        <div class="form">
        <form action="" method="post">

            <h1> Patient Registration Form<h1>

            <table border="1">

                <tr>
                    <td>Name:<input type="text" name="name" value="" /> </td>
                    <td>Date of Birth: <input type="text" name="dob" value="" /></td>
                </tr>
                <tr>
                    <td>Address: <input type="text" name="address" value="" /></td>
                    <td>Postcode: <input type="text" name="pcode" value="" /></td>
                </tr>
                <tr>

            <td>Password: <input type="password" name="password" value="" /></td>
                    <td>Confirm Password: <input type="text" name="cpassword" value="" /></td>
                </tr>

                <br/>
                <tr>
                    <td><input id="s1" type="submit" value="Submit" /></td>

                    <td><input id="s1" type="reset" value="Clear" /></td>
                </tr>



        </table>
</form>
  </div>  
    </center>   


    </body>
</html>