<%-- 
    Document   : view
    Created on : 15 Dec, 2020, 7:51:13 PM
    Author     : User
--%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer details</title>
        <style>
             body{
                background-image: url("bank6.jpg");
                background-repeat: repeat;
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
 table{
                 color:black;
             }
            </style>
    </head>
    <body>
      
        <%
            String s1=request.getParameter("number");
            String p1=request.getParameter("balance");
            int p11=Integer.parseInt(p1);
            
       try{
       Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hema","54321");
   Statement st=con.createStatement();
   ResultSet rs=st.executeQuery("select * from customers where account='"+s1+"'");
  
   %>
   <table cellpadding="15" border="1">
       <center><p style="color:darkmagenta; padding-top: 5%;">BALANCE BEFORE WITHDRAWAL</p></center> </br> 
         <tr>
                <th>ACCOUNT NUMBER</th>
                <th>FIRST NAME</th>
                <th>LAST NAME</th>
                <th>EMAIL-ID</th> 
                <th>ADDRESS</th>
                <th>PHONE_NO</th>
                <th>BALANCE_before_Withdrawal</th>
                
                
               
            </tr>
         <%
   while(rs.next())
   {
     %>   
    <tr>
                <td><%=rs.getString(1)%>
                <td><%=rs.getString(2)%>
                <td><%=rs.getString(3)%>
                <td><%=rs.getString(4)%>
                <td><%=rs.getString(5)%>
                 <td><%=rs.getString(6)%>
                 <td><%=rs.getString(7)%>     
                    
    </tr></table></br></br>
     <%
     

   String p111=request.getParameter("balance");
   int p1111=Integer.parseInt(p1);
   String a1=rs.getString(7);
   int a=Integer.parseInt(a1);
   int res=a-p1111;
   %>
            
            <center><p style="color:darkmagenta;">BALANCE AFTER WITHDRAWAL</p></center>  
        
              <table cellpadding="15" border="1">
         <tr>
                <th>ACCOUNT NUMBER</th>
                <th>FIRST NAME</th>
                <th>LAST NAME</th>
                <th>EMAIL-ID</th> 
                <th>ADDRESS</th>
                <th>PHONE_NO</th>
                <th>BALANCE_after_Withdrawal</th>
         </tr>  
    <tr>
                <td><%=rs.getString(1)%>
                <td><%=rs.getString(2)%>
                <td><%=rs.getString(3)%>
                <td><%=rs.getString(4)%>
                <td><%=rs.getString(5)%>
                 <td><%=rs.getString(6)%>
                 <td><% out.print(res);  %> </td>
                    
    </tr></table></br></br>
                    
    <%}
      
         }

catch(Exception e)
          {
             out.println(e);
           }

    %>
  
   </table></br></br>
    
     <form action="index.html" method="post">
         <center><input type="submit" class="button" value="BACK TO HOME"></center>
     </form>
    </body>
</html>