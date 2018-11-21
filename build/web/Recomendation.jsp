<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
 <center><p class='seven'><h1>Recommended Show For you</h1></p></center>

<center><p class='seven'><h1></h1></p></center>


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
        ResultSet rs;
        ArrayList movie_id = new ArrayList();
        ArrayList tv_id = new ArrayList();
        Statement statment1;
        
        try {
               Class.forName("com.mysql.jdbc.Driver");
               connection = DriverManager.getConnection(connectionUrl+dbName,userId,password);
               
               CallableStatement cStmt = connection.prepareCall("{call update_recomendation()}");
               cStmt.execute();
               Statement s = connection.createStatement();
                statment1 = connection.createStatement();
               rs = s.executeQuery("select * from recommendation");
                while(rs.next())
                {
                String s1 = rs.getString("mv_tv_id");
                
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
                 while(mv_i.hasNext())
               {
                String a = "select * from movie_details where id = '"+mv_i.next()+"'";
                ResultSet mm = statment1.executeQuery(a);
                mm.next();
              String urlc = "\""+ mm.getString("url") +"\"";
          
                String mmm = "movie/"+mm.getString("id");
               
                %>
                
                    <div class="column">
               <div class="card">
        <img   src=<%=urlc%> hspace="20"  height="350" width="250">
        <form action="AddWatchList.jsp">
      <p><button name ="selected"value=<%=mmm%>> more info</button></p>
                      </form>
                      
        </div>
                    </div>
              
                <%
                }
               while(tv_i.hasNext())
               {
                String a = "select * from tvshow_details where id  = '"+tv_i.next()+"'";
                ResultSet mm = statment1.executeQuery(a);
                mm.next();
                 String urlc = "\""+ mm.getString("url") +"\"";
                String tt = "tvshow/"+mm.getString("id");
                %>
                
                <div class="column">
               <div class="card">
        <img   src=<%=urlc%> hspace="20"  height="350" width="250">
        <form action="AddWatchList.jsp">
      <p><button name ="selected"value=<%=tt%>> more info</button></p>
                      </form>
                      
        </div>
                    </div>
               
                      
                <%
                } 
           } catch (ClassNotFoundException ex) {
           } 
%>
