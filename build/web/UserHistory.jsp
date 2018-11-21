n<%-- 
    Document   : UserHistory
    Created on : Nov 4, 2018, 11:12:05 PM
    Author     : manu
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<style>
    p.seven {
        border-style: double;
    border-width: thick;
     border-color: black;
    
    margin: 25px;
}
button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}
    </style>
    <center><p class='seven'><h1>Movies and Tv-Show Watched</h1></p></center>

<center><p class='seven'><h1></h1></p></center>



<%
    Connection  connection ;
        Statement statment,statment1 ;
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String dbName = "movies";
        String userId = "root";
        String password = "";
        String name,id;
        ResultSet rs,rs1,rs2;
        String query; 
        ArrayList movie_id = new ArrayList();
        ArrayList tv_id = new ArrayList();
        int i = 0;
        int j = 0;
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(connectionUrl+dbName,userId,password);
        statment = connection.createStatement();
        statment1 = connection.createStatement();
    %>

 <%
              
               String  s = request.getParameter("add");
               name =(String)session.getAttribute("UserID");
               id = (String)session.getAttribute("UserID");
               query = "select * from customer where name = '"+name+"'";
               rs = statment.executeQuery(query);
               rs.next();
               id = rs.getString("u_id");
               query = "select Distinct user_id,tv_mv_id from watchlist where user_id ='"+id+"'";
             
               rs2 = statment.executeQuery(query);
               while(rs2.next())
                {
                String s1 = rs2.getString("tv_mv_id");
                
                if(s1.contains("M"))
                {
                    movie_id.add(s1);
                }
                if(s1.contains("T"))
                {
                   tv_id.add(s1);
                }
                
                
            }
               
               Iterator mv_i = movie_id.iterator();
               Iterator tv_i = tv_id.iterator();
               if(!mv_i.hasNext() && !tv_i.hasNext())
               {
                   %>
                   <center><h1> No data</h1><img src="qb.gif"></center>
                   <%
               }

               
               while(mv_i.hasNext())
               {
                String a = "select * from movie_details where id = '"+mv_i.next()+"'";
                ResultSet mm = statment1.executeQuery(a);
                mm.next();
                String urlc = "\""+ mm.getString("url") +"\"";
                %>
               
                <img   src=<%=urlc%>  hspace="20" name="selected"height="350" width="250" >
      
                <%
                }
               while(tv_i.hasNext())
               {
                String a = "select * from tvshow_details where id  = '"+tv_i.next()+"'";
                ResultSet mm = statment1.executeQuery(a);
                mm.next();
                String urlc = "\""+ mm.getString("url") +"\"";
                %>
               
                <img   src=<%=urlc%>  hspace="20" name="selected"height="350" width="250" >
      
                <%
                } 
        %>
        <form action="Recomendation.jsp">
        <button style="width: 100%;height: 5%;text-transform: capitalize" >Recommend</button>
        </form>