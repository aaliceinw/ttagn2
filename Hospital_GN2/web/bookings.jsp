
<%@page import="java.sql.*"%>
<%@page import="com.hospital.model.MyConnection"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking Confirmation</title>
        <link rel="stylesheet" type="text/css" href="style.css" media="screen" />
        
    </head>
    <body>
                <div id="main_container">
            <div class="header">
                <div id="logo"><a href="index.jsp"><img src="images/logo.png" alt="" width="162" height="54" border="0" /></a></div>
                <div class="right_header">
                    <div class="top_menu"> <a href="login.jsp" class="login">login</a><a href="logout" class="sign_up">Logout</a> </div>
                    <div id="menu">
                        <ul>
                            <li><a class="current" href="index.jsp">Home</a></li>
                            <li><a href="displayRecords.jsp" width="20px">Patient History</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="middle_box">
                <div class="middle_box_content"><img src="images/banner_content.jpg" alt="" /></div>
            </div>
        
        <center
       
         <div class="table">
                <div class="form">
             <form action="booking" method="post">    <center         
        <legend>
           <h3> Patient Booking Confirmation</h3>
        </legend>
        <fieldset>
      <%
               String name =request.getParameter("name");
      int phone = Integer.parseInt(request.getAttribute("phone").toString());
 
      String dob =request.getParameter("dob");
      String problem =request.getParameter("problem");
      String docName =request.getParameter("docName");
      String bookingDate = request.getParameter("bookingDate");
      Connection con = MyConnection.connect();
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("select * from record where phone="+phone);
                %>
                <table border="1">
                    
                <%
                if(rs.next())
                {
                    name=rs.getString("name");
                    phone=rs.getInt("phone");
                   dob = rs.getString("dob");
                   problem= rs.getString("problem");
                   docName=rs.getString("docName");
                   bookingDate=rs.getString("bookingDate");
                   
  %>
            
                                          <tr>
                                            <th width="15%">Patient's Name</th>
                                            <th width=10%">Phone</th>
                                            <th width="10%">DOB</th>
                                            <th width="40%">Problem</th>
                                            <th width="15%">Doctor's Name</th>
                                            <th width="10%">Booking Date </th>
                                          </tr>

                    <tr>
                        <th><%= name%></th>
                        <th><%= phone%></th>
                        <th><%= dob%></th>
                        <th><%= problem%></th>
                        <th><%= docName%></th>
                        <th><%= bookingDate%></th>
                   </tr>
                   
              
<%
                           }
                
      %>
                                    </form>
                               </table>
                            </fieldset>
                                </div>
                                    
                            </center>
    </body>
</html>