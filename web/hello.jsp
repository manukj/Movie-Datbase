<%-- 
    Document   : hello
    Created on : 12 Nov, 2018, 8:58:22 PM
    Author     : manu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%String hello = request.getParameter("selected");%>
        <title></title>
    </head>
    <body>
        <h1><%=hello%></h1>
    </body>
</html>
