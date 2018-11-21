<%-- 
    Document   : inistalize
    Created on : Oct 14, 2018, 9:52:44 AM
    Author     : manu
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <%
       
       
        
        String driverName = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String dbName = "movie";
        String userId = "root";
        String password = "";

        try {
            Class.forName(driverName);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        try{ 
            connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
            statement=connection.createStatement();
            
        }catch(Exception e )
        {
        }
        String option = request.getParameter("option");
        if(option.equals("login"))
        {%>
            <jsp:forward page = "check.jsp" />
         <%
        }
        else
        if(option.equals("signup"))
        {
        }
        %>
</html>
