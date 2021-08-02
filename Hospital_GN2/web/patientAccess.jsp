
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.hospital.model.MyConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient Booking</title>
        <link rel="stylesheet" type="text/css" href="formstyle.css" media="screen" />
    </head>
    <body>
        <div id="main_container">
            <div class="header">
                <div id="logo"><a href="index.jsp"><img src="images/logo.png" alt="" width="162" height="54" border="0" /></a></div>
                <div class="right_header">
                    <div class="top_menu"> <a href="login.jsp" class="login">login</a><a href="logout" class="sign_up">Logout</a> </div>
                    <div id="menu">
                <div class="middle_box_content"><img src="images/banner_content.jpg" alt="" /></div>
            </div>
        
  
              <div class="form">
              
             <%
             String name = request.getAttribute("name").toString();
             request.setAttribute("name",name);
             
             %>
                                    
                 <div class="main-block"> 
                 <form action="booking" method="post">

                  <fieldset>
        <legend>
           <h3> Patient Booking Form</h3>
          
        </legend>
                     <div class="form-inner">
                                            
                    Patient Name: <input type="text" name="name" value="<%= name%>">

                    Phone Number:<input type="text" name="phone" value="" />
                    Date of Birth: <input type="date" name="dob" value="">

                    Problem:<textarea name="problem" rows="4" cols="20">
                        </textarea>

                     <%
       Connection con = MyConnection.connect();
       Statement stmt = con.createStatement();
       ResultSet rs1 = stmt.executeQuery("select * from doctor");
       %>
    <select name="docName">
             <%
       while(rs1.next())
       {
           %>
            
           <option value=<%= rs1.getString("docName")%>><%=rs1.getString("docName")%></option>  
                   <%
                   }
                   %>
           </select>
 
           Booking Date: <input type="date" name="bookingDate">

                <br/>

                <input type="submit" value="Submit Booking" name="book" />
                <input type="reset" value="Clear Form" name="reset" />
                     </div>
                
       </fieldset>
    </form>                                     
  </div>   
              </div>
    </body>
</html>