
<!DOCTYPE html>

<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%!
   
        String welcomename;
        Connection  connection ;
        Statement statment_mv,statment_tv ; 
        ResultSet mv_s,tv_s;
        String mv_retrive,tv_retrive;
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String dbName = "movies";
        String userId = "root";
        String password = "";
        
    %>
<html>
    <%
               welcomename ="Welcome "+request.getParameter("name");
               session.setAttribute("UserID",request.getParameter("name"));
             
               try {
               Class.forName("com.mysql.jdbc.Driver");
               connection = DriverManager.getConnection(connectionUrl+dbName,userId,password);
               statment_mv = connection.createStatement();
               statment_tv = connection.createStatement();
               mv_retrive = "select* from movie_details";
               mv_s= statment_mv.executeQuery(mv_retrive);
               
               tv_retrive = "select* from tvshow_details";
               tv_s= statment_tv.executeQuery(tv_retrive);
               
               
             
                } catch (ClassNotFoundException ex) {
           }   
        %>
<style>
* {
    box-sizing: border-box;
}


/* Create two equal columns that floats next to each other */
.column {
    float: left;
    width: 20%;
    padding: 10px;
}

.column img {
    margin-top: 20px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
  
    text-decoration: none;
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
li a:hover:not(.active) {
    background-color: #111;
}
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.active {
    background-color: #4CAF50;
}

nav{
  text-align: center;
}
nav ul{
  display: inline-block;
}
p.seven {
        border-style: double;
    border-width: thick;
     border-color: black;
      padding: 25px;
    margin: 25px;
}

        
</style>
<body bgcolor = "#FFFFFF">
    
    
   


  <ul>  

     <li><h2 style="color:white;"> <%=welcomename%></a></li>
     <li style="float:right">   <form action="login_signup.jsp">
             <input type="image" src="logout.png" style="padding:10px;margin-left:25px;" height="72" width="72" >
  </form></li>
 <li style="float:right">   <form action="UserHistory.jsp">
  <input type="image" src="hostory.gif" height="72" width="102" >
  </form></li>
</ul>


  
<form action="search_page.jsp">
<center>
<p class='seven'>
Category:
<select name="MorT">
<option value="movie" selected="movie">Movie</option>
<option value="tvshow">TvShow</option>
</select>

Genre:
<select name="genre">
<option value="all" selected="selected">All</option>
<option value="action">Action</option>
<option value="adventure">Adventure</option>
<option value="comedy">Comedy</option>
<option value="crime">Crime</option>
<option value="drama">Drama</option>
<option value="horror">Horror</option>
<option value="thriller">Thriller</option>
</select>

Rating:
<select name="rating">
<option value="0" selected="selected">All</option>
<option value="9">9+</option>
<option value="8">8+</option>
<option value="7">7+</option>
<option value="6">6+</option>
<option value="5">5+</option>
<option value="4">4+</option>
<option value="3">3+</option>
<option value="2">2+</option>
<option value="1">1+</option>
</select>

      <input type="text" placeholder="Movie Search.." name="search">
      <input type="submit" value ="Search">
    
   
</p>
 </center>
</form>






  


<body>

<!-- Header -->
<div class="header">

</div>

<!-- Photo Grid -->
<div class="row"> 
 
      <%
          while(mv_s.next())
          {
          String urlr = "\""+ mv_s.getString("url") +"\"";
          String m = "movie/"+mv_s.getString("id");
          %>
       
          <div class="column">  
    <div class="card">
        <img   src=<%=urlr%> hspace="20"  height="350" width="250">
        <form action="AddWatchList.jsp">
      <p><button name ="selected"value=<%=m%>> more info</button></p>
                      </form>
        </div>
        <%if(mv_s.next())
        {
          String urlc = "\""+ mv_s.getString("url") +"\"";
          
           String mm = "movie/"+mv_s.getString("id");
        %>
        <div class="card">
        <img   src=<%=urlc%> hspace="20"  height="350" width="250">
        <form action="AddWatchList.jsp">
      <p><button name ="selected"value=<%=mm%>> more info</button></p>
                      </form>
        </div>
        <%}%>
  </div>

<%}%>


  
      
      <%
          while(tv_s.next())
          {
          String urlr = "\""+ tv_s.getString("url") +"\"";
           String t = "tvshow/"+tv_s.getString("id");
          %>
          
          <div class="column">  
   <div class="card">
        <img   src=<%=urlr%> hspace="20"  height="350" width="250">
        <form action="AddWatchList.jsp">
      <p><button name ="selected"value=<%=t%>> more info</button></p>
                      </form>
        </div>
        <%if(tv_s.next())
        {
          String urlc = "\""+ tv_s.getString("url") +"\"";
           String tt = "tvshow/"+tv_s.getString("id");
        %>
        <div class="card">
        <img   src=<%=urlc%> hspace="20"  height="350" width="250">
        <form action="AddWatchList.jsp">
      <p><button name ="selected"value=<%=tt%>> more info</button></p>
                      </form>
        </div>
        <%}%>
  </div>

<%}%>


     





</body>
</html>
