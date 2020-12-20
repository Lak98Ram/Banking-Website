<%-- 
    Document   : withdraw
    Created on : 16 Dec, 2020, 7:48:02 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <body>
      <head>
         <title> withdrawal form</title>
         <style>
 body{
                background-image: url("bank6.jpg");
                background-repeat: no-repeat;
                background-size:100%;
 }
         .button {
  background-color: back;
  border: none;
  color: black;
  padding: 8px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  font-color:white;
  margin: 2px 2px;
  cursor: pointer;
}
 </style>
      </head>
      <center><p style="color:white; padding-top: 200px;"><h3><b><u>ENTER YOUR DETAILS:</u></b></h3></p>
       <form action="withdraw.jsp" method="post">
           <div style="padding-top:50px;">
           <label style="color:purple;">ENTER YOUR NAME:</label> <input type="text" name="name"></p>
         <br>
         <label style="color:purple;">ENTER YOUR ACCOUNT NUMBER:</label> <input type="text" name="number"><br><br><br>
          <label style="color:purple;">ENTER AMOUNT FOR WITHDRAWAL:</label><input type="text" name="balance"></p>
         <br>
         <br> <br> <br> <br>
         <center><input type="submit" class="button" value="ENTER"></center>
           </div>
       </form></center>
   <
</html>