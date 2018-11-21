
<%-- 
    Document   : login_check
    Created on : Oct 14, 2018, 10:25:38 PM
    Author     : manu
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        String name = "\""+request.getParameter("uname") + "\"";
        String pass = "\"" + request.getParameter("psw") + "\"";
        
        ResultSet result = null;
        String check;
        
        Connection  connection ;
        Statement statment ; 
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String dbName = "movies";
        String userId = "root";
        String password = "";
        
        try {
               Class.forName("com.mysql.jdbc.Driver");
               connection = DriverManager.getConnection(connectionUrl+dbName,userId,password);
               
               statment = connection.createStatement();
               check =  "select * from customer where name = " + name +" and us_psw = " + pass +";";
               result = statment.executeQuery(check);
              
           } catch (ClassNotFoundException ex) {
           }         
    if(result.next())
    {
    %>
    <meta http-equiv="Refresh" content="1;url=MainScreen.jsp?name=<%=result.getString("name")%>">
    <%
        }else
        {%>
        <center><h1>Wrong Username or Password</h1></center>
        <meta http-equiv="Refresh" content="2;url=login_signup.jsp">
           <% }
%>