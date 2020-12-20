<%-- 
    Document   : view
    Created on : 15 Dec, 2020, 7:51:13 PM
    Author     : User
--%>
<%@page import="oracle.net.aso.d"%>
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
                background-repeat: no-repeat;
                background-size:250%;
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
                 color:darkmagenta;
             }
            </style>
    </head>
    <body>
      
        <%
            String s1=request.getParameter("a");
            String p1=request.getParameter("c");
            String x=request.getParameter("d");
            
            int p11=Integer.parseInt(p1);
            
       try{
       Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hema","54321");
   Statement st=con.createStatement();
   ResultSet rs=st.executeQuery("select * from customers where account='"+s1+"'");
  
   %>
   <table cellpadding="15" border="1">
       <center><p style="color:white; padding-top: 5%;"><u><b>FROM DETAILS BEFORE AND AFTER TRANSACTION</b></u></p></center> </br> 
         <tr>
                <th>ACCOUNT NUMBER</th>
                <th>FIRST NAME</th>
                <th>LAST NAME</th>
                <th>EMAIL-ID</th> 
                <th>ADDRESS</th>
                <th>PHONE_NO</th>
                <th>BALANCE_before_TRANSFER</th>
                  <th>REMARK</th>
                
                
               
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
                  <td><%out.println(x);%>
                    
    </tr></table></br></br>
     <%
   String p111=request.getParameter("c");
   int p1111=Integer.parseInt(p1);
   String a1=rs.getString(7);
   int a=Integer.parseInt(a1);
   int res=a-p1111;
   %> 
        
              <table cellpadding="15" border="1">
         <tr>
                <th>ACCOUNT NUMBER</th>
                <th>FIRST NAME</th>
                <th>LAST NAME</th>
                <th>EMAIL-ID</th> 
                <th>ADDRESS</th>
                <th>PHONE_NO</th>
                <th>BALANCE_after_TRANSFER</th>
                <th>REMARK</th>
                
                
         </tr>  
    <tr>
                <td><%=rs.getString(1)%>
                <td><%=rs.getString(2)%>
                <td><%=rs.getString(3)%>
                <td><%=rs.getString(4)%>
                <td><%=rs.getString(5)%>
                 <td><%=rs.getString(6)%>
                 <td><% out.print(res);  %> </td>
                 <td><%out.println(x);%>
                    
    </tr></table></br></br>
                    
    <%}
}
catch(Exception e)
          {
             out.println(e);
           }

            String s11=request.getParameter("b");
            String pa1=request.getParameter("c");
            int pa11=Integer.parseInt(p1);
            
       try{
       Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hema","54321");
   Statement st1=con1.createStatement();
   ResultSet rs1=st1.executeQuery("select * from customers where account='"+s11+"'");
String d=request.getParameter("d");
   %>
   <table cellpadding="15" border="1">
       <center><p style="color:white; padding-top: 5%;"><u><b>TO DETAILS BEFORE AND AFTER TRANSACTION</b></u></p></center> </br> 
         <tr>
                <th>ACCOUNT NUMBER</th>
                <th>FIRST NAME</th>
                <th>LAST NAME</th>
                <th>EMAIL-ID</th> 
                <th>ADDRESS</th>
                <th>PHONE_NO</th>
                <th>BALANCE_before</th>
                <th>REMARK</th>
                
                
               
            </tr>
         <%
   while(rs1.next())
   {
     %>   
    <tr>
                <td><%=rs1.getString(1)%>
                <td><%=rs1.getString(2)%>
                <td><%=rs1.getString(3)%>
                <td><%=rs1.getString(4)%>
                <td><%=rs1.getString(5)%>
                 <td><%=rs1.getString(6)%>
                 <td><%=rs1.getString(7)%>
                 <td><% out.println(d);%></td>
               
                   
                    
    </tr></table></br></br>
     <%
     
    String da=request.getParameter("d");
   String p111=request.getParameter("c");
   int p1111=Integer.parseInt(p1);
   String a1=rs1.getString(7);
   int a=Integer.parseInt(a1);
   int res=a+p1111;
   %> 
        
              <table cellpadding="15" border="1">
         <tr>
                <th>ACCOUNT NUMBER</th>
                <th>FIRST NAME</th>
                <th>LAST NAME</th>
                <th>EMAIL-ID</th> 
                <th>ADDRESS</th>
                <th>PHONE_NO</th>
                <th>BALANCE_after</th>
                   <th>REMARK</th>
         </tr>  
    <tr>
                <td><%=rs1.getString(1)%>
                <td><%=rs1.getString(2)%>
                <td><%=rs1.getString(3)%>
                <td><%=rs1.getString(4)%>
                <td><%=rs1.getString(5)%>
                 <td><%=rs1.getString(6)%>
                 <td><% out.print(res);  %> </td>
                 <td><% out.println(da);%></td>
                    
    </tr></table></br></br>
             
        <% }
}

catch(Exception e)
          {
             out.println(e);
           }

    %>
  
   </table></br></br></br>
    
<center><form action="index.html"  method="post">
         <input type="submit" class="button" value="BACK TO HOME">
    </form></center>
    </body>
</html>