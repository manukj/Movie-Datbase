<%-- 
    Document   : AddingToWatchList.jsp
    Created on : Nov 4, 2018, 9:47:22 PM
    Author     : manu
--%>
    <%@page import="java.util.Random"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.Connection"%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>


    <%!
        Connection  connection ;
            Statement statment ;
            String connectionUrl = "jdbc:mysql://localhost:3306/";
            String dbName = "movies";
            String userId = "root";
            String password = "";
            String name ;
        %>

     <%

                   try {
                   Class.forName("com.mysql.jdbc.Driver");
                   connection = DriverManager.getConnection(connectionUrl+dbName,userId,password);
                   statment = connection.createStatement();
                   String  s = request.getParameter("add");
                   name =(String)session.getAttribute("UserID");
                   ResultSet rs = statment.executeQuery("select * from customer where name = '"+name+"'");
                   rs.next();
                   statment.executeUpdate("insert into watchlist values('"+rs.getString("u_id")+"','"+s+"')");

                    } catch (ClassNotFoundException ex) {
               }   
            %>






<html>
    
    <meta http-equiv="Refresh" content="1;url=MainScreen.jsp?name=<%=name%>">
</html>
