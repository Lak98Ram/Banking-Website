<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
}</style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Page</title>
    </head>
    <body>
        <%try{
       Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hema","54321");
   Statement st=con.createStatement();
   ResultSet rs=st.executeQuery("select * from customers");
   %>
    <center> <table cellpadding="20" border="1">
         <tr>
                <th>ACCOUNT NUMBER</th>
                <th>FIRST NAME</th>
                <th>LAST NAME</th>
                <th>EMAIL-ID</th>
                   <th>ADDRESS</th> 
                <th>PHONE NO</th>     
               
            </tr>
         <%
   while(rs.next())
   {
     %>   
    <tr>
        <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
           <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
            </tr>
            
           
        
    <%}
      
         }
          catch(Exception e)
          {
             out.println(e);
           }

    %>
        </table></center>
    
        <center> <form action="index.html"  method="post">
                <input type="submit" class="button" value="GO TO HOME">
            </form></center>
     </form>
    </body>
</html>