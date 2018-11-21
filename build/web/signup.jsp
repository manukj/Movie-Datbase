
<%-- 
    Document   : signup
    Created on : Oct 13, 2018, 10:12:44 PM
    Author     : manu
--%>

<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%  
     
     String name = "\""+request.getParameter("name") + "\"";
     String email = "\""+ request.getParameter("email") + "\"";
     String us_psw = "\""+ request.getParameter("psw") + "\"";
     String dob ="\""+ request.getParameter("dob") + "\"";
 
     Random r = new Random();
     String u_id = "\""+ request.getParameter("name") + r.nextInt(100) + "\"";
     int result = 33 ;
     String insert = "dsds";
     Connection  connection ;
        Statement statment ; 
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String dbName = "movies";
        String userId = "root";
        String password = "";
        
               try {
               Class.forName("com.mysql.jdbc.Driver");
               connection = DriverManager.getConnection(connectionUrl+dbName,userId,password);
               
               connection.setAutoCommit(false);
               statment = connection.createStatement();
                insert = "insert into customer values (" + name +"," + u_id +"," + email +"," + us_psw +"," + dob +");";
               result = statment.executeUpdate(insert);
               connection.commit();
               
           } catch (ClassNotFoundException ex) {
           }         

if(result == 1)
{
%>
   <jsp:forward page="MainScreen.jsp"></jsp:forward>
<%
}
%>