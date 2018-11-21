
<%-- 
    Document   : AddWatchList
    Created on : Nov 3, 2018, 8:18:32 PM
    Author     : manu
--%>

<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%!
    Connection  connection ;
        Statement statment_mv,statment_gn; 
        ResultSet mv_s,gn_s;
        String retrive;
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String dbName = "movies";
        String userId = "root";
        String password = "";
        String s_name,s_year,s_geners,s_rating,s_img;
        String selected;
        String a[] = new String[3];
    %>
<html>
   <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title {
  color: grey;
  font-size: 18px;
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

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}
</style>
    <%
        
               try {
               Class.forName("com.mysql.jdbc.Driver");
               connection = DriverManager.getConnection(connectionUrl+dbName,userId,password);
               statment_mv = connection.createStatement();
               statment_gn = connection.createStatement();
               
               selected = request.getParameter("selected");
               a = selected.split("/");
               if(selected.contains("movie"))
               {
               retrive = "select* from movie_details where id  = '"+a[1]+"'";
               mv_s= statment_mv.executeQuery(retrive);
               mv_s.next();
               s_name = mv_s.getString("name");
               s_year = mv_s.getString("year");
               s_geners = mv_s.getString("gen_id");
               s_rating = mv_s.getString("rating");
               s_img = mv_s.getString("url");
               gn_s = statment_gn.executeQuery("select * from genres where gen_id = '"+s_geners+"'");
               gn_s.next();
               s_geners = gn_s.getString("genres_name");
               }
               else 
               {
                retrive = "select* from tvshow_details where id  = '"+a[1]+"'";
               mv_s= statment_mv.executeQuery(retrive);
               mv_s.next();
               s_name = mv_s.getString("name");
               s_year = mv_s.getString("year");
               s_geners = mv_s.getString("gen_id");
               s_rating = mv_s.getString("rating");
               s_img = mv_s.getString("url");
               gn_s = statment_gn.executeQuery("select * from genres where gen_id = '"+s_geners+"'");
               gn_s.next();
               s_geners = gn_s.getString("genres_name");
               }
             
                } catch (ClassNotFoundException ex) {
           }   
  %>

  
  <html>
    
   <div class="card">
       <img src=<%=s_img%>  style="width:100%">
       <h1><%=s_name%></h1>
  <p class="title"><%=s_year%></p>
  <p class="title"><%= s_rating%> IMDB  </p>
  <p><%=s_geners%></p>
  <form action="AddingToWatchList.jsp">
      <p><button name ="add"value=<%=a[1]%>> <b> + <b> to Watch List</button></p>
                      </form>
</div>
          
  </html>