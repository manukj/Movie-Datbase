<%@page import="java.util.Random"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.Connection"%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    
    <style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}
.column {
    float: left;
    width: 20%;
    padding: 10px;
}

.column img {
    margin-top: 20px;
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
            Connection  connection ;
            Statement statment ;
            String connectionUrl = "jdbc:mysql://localhost:3306/";
            String dbName = "movies";
            String userId = "root";
            String password = "";
            String name ; 
            String mv_tv_name = request.getParameter("search");
            String geners = request.getParameter("genre");
            String rating = request.getParameter("rating");
            String tv_or_mov = request.getParameter("MorT");
            String url = "mv_url";
            String query ="";
            String query1 = "";
            String and ="";
            if(tv_or_mov.equals("tvshow"))
            {
                query = "select * from tvshow_details as m , genres as g where g.gen_id = m.gen_id  and ";
                query1 = query;
               
            }
            if(tv_or_mov.equals("movie"))
            {
                query = "select * from movie_details as m , genres as g where g.gen_id = m.gen_id and ";
                query1 = query;
               
            }
            if(!geners.equals("all"))
            {
                query = query + "  g.genres_name = '"+geners+"'";
                and = " and ";
            }
            if(rating.length() != 0)
            {
                query = query + and +" rating >= '"+rating+"'";
            }
            if(mv_tv_name.length() != 0)
            {
                query = query1 + " name ='"+mv_tv_name+"'";
            }
            

            try {
                   Class.forName("com.mysql.jdbc.Driver");
                   connection = DriverManager.getConnection(connectionUrl+dbName,userId,password);
                   statment = connection.createStatement();
                 
                   
                     ResultSet rs = statment.executeQuery(query);
                     boolean b = rs.next();
                    if(!b)
                    {
                         %>
                   <center><h1> No data</h1><img src="qb.gif"></center>
                   <%
                    }
                    while(b)
                    {
                        %>
                   
                        <div class="column"> 
                            <div class="card" style="margin-bottom:10px">
                            <button><b><%=rs.getString("name")%></button>
                             <p class="title"></p>
                        <img src=<%=rs.getString("url")%>  height="350" width="250">
                         </div>

                        </div>
                        <%
                            b = rs.next();
                    }
                    } catch (ClassNotFoundException ex) {
               }   
%>
    