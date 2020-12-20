

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <body>
      <head>
         <title> withdrawal form</title>
         <style>
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
 body{
                background-image: url("bank6.jpg");
                background-repeat: no-repeat;
                background-size:100%;
 }
 </style>
      </head>
      <center><p style="color:white; padding-top: 200px;"><h3><b><u>ENTER THE DETAILS FOR TRANSACTION:</u></b></h3></p>
       <form action="transfer_1.jsp" method="post">
           <div style="padding-top:50px;">
           <label style="color:darkorchid;">ENTER YOUR ACCOUNT NUMBER:</label> <input type="text" name="a"></p>
         <br>
         <label style="color:darkorchid;">ENTER THE RECEIVERS ACCOUNT NUMBER :</label> <input type="text" name="b"></p>
         <br>
          <label style="color:darkorchid;">ENTER AMOUNT TO TRANSFER:</label> <input type="text" name="c"></p>
         <br>
         <label style="color:darkorchid;">ENTER PURPOSE TRANSFER:</label> <input type="text" name="d"></p>
         <br>
         <br> <br> <br> <br>
         <center><input type="submit" class="button" value="ENTER"></center>
           </div>
       </form></center>
   <
</html>