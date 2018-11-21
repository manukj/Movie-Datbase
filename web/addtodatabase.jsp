
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
     
     String show = "\""+request.getParameter("show") + "\"";
     String showname = "\""+ request.getParameter("showname") + "\"";
     String showgenres = "\""+ request.getParameter("showgenres") + "\"";
     String showurl ="\""+ request.getParameter("showurl") + "\"";
     String year ="\""+ request.getParameter("year") + "\"";
     String rating = "\""+ request.getParameter("rating") + "\"";
     Random r = new Random();
     
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
               statment = connection.createStatement();
               String gen_id_query = "select gen_id from genres where genres_name = "+showgenres ;
               out.println(show);
               ResultSet rs1 = statment.executeQuery(gen_id_query);
               rs1.next();
               String gen_id = "\""+ rs1.getString("gen_id")+"\"";
               if(show.contains("Movie"))
               {
                   
                   String insertmv = "insert into movie_details values("+showname+","+year+","+gen_id+","+rating+","+showurl+","+"'M"+r.nextInt(10000)+"','0')";
                   result = statment.executeUpdate(insertmv);
                   out.print(insertmv);
               }
               if(show.contains("Tv"))
               {
                   
                   
                   String insertmv = "insert into tvshow_details values("+showname+","+year+","+gen_id+","+rating+","+showurl+","+"'T"+r.nextInt(10000)+"','0')";
                   //out.print(insertmv);
                   result = statment.executeUpdate(insertmv);
               }
               
               
           } catch (ClassNotFoundException ex) {
           }         

if(result == 1)
{
%>
   <jsp:forward page="login_signup.jsp"></jsp:forward>
<%
}
%>