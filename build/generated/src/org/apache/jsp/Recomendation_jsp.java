package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Iterator;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.*;

public final class Recomendation_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("  \n");
      out.write("\n");
      out.write("<style>\n");
      out.write("* {\n");
      out.write("    box-sizing: border-box;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("/* Create two equal columns that floats next to each other */\n");
      out.write(".column {\n");
      out.write("    float: left;\n");
      out.write("    width: 20%;\n");
      out.write("    padding: 10px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".column img {\n");
      out.write("    margin-top: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Clear floats after the columns */\n");
      out.write(".row:after {\n");
      out.write("    content: \"\";\n");
      out.write("    display: table;\n");
      out.write("    clear: both;\n");
      out.write("}\n");
      out.write("ul {\n");
      out.write("    list-style-type: none;\n");
      out.write("    margin: 0;\n");
      out.write("    padding: 0;\n");
      out.write("    overflow: hidden;\n");
      out.write("    background-color: #333;\n");
      out.write("}\n");
      out.write("\n");
      out.write("li {\n");
      out.write("    float: left;\n");
      out.write("}\n");
      out.write("\n");
      out.write("li a {\n");
      out.write("    display: block;\n");
      out.write("    color: white;\n");
      out.write("    text-align: center;\n");
      out.write("  \n");
      out.write("    text-decoration: none;\n");
      out.write("}\n");
      out.write(".title {\n");
      out.write("  color: grey;\n");
      out.write("  font-size: 18px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("button {\n");
      out.write("  border: none;\n");
      out.write("  outline: 0;\n");
      out.write("  display: inline-block;\n");
      out.write("  padding: 8px;\n");
      out.write("  color: white;\n");
      out.write("  background-color: #000;\n");
      out.write("  text-align: center;\n");
      out.write("  cursor: pointer;\n");
      out.write("  width: 100%;\n");
      out.write("  font-size: 18px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("a {\n");
      out.write("  text-decoration: none;\n");
      out.write("  font-size: 22px;\n");
      out.write("  color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write("button:hover, a:hover {\n");
      out.write("  opacity: 0.7;\n");
      out.write("}\n");
      out.write("li a:hover:not(.active) {\n");
      out.write("    background-color: #111;\n");
      out.write("}\n");
      out.write(".card {\n");
      out.write("  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);\n");
      out.write("  max-width: 300px;\n");
      out.write("  margin: auto;\n");
      out.write("  text-align: center;\n");
      out.write("  font-family: arial;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".active {\n");
      out.write("    background-color: #4CAF50;\n");
      out.write("}\n");
      out.write("\n");
      out.write("nav{\n");
      out.write("  text-align: center;\n");
      out.write("}\n");
      out.write("nav ul{\n");
      out.write("  display: inline-block;\n");
      out.write("}\n");
      out.write("p.seven {\n");
      out.write("        border-style: double;\n");
      out.write("    border-width: thick;\n");
      out.write("     border-color: black;\n");
      out.write("      padding: 25px;\n");
      out.write("    margin: 25px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("        \n");
      out.write("</style>\n");
      out.write(" <center><p class='seven'><h1>Recommended Show For you</h1></p></center>\n");
      out.write("\n");
      out.write("<center><p class='seven'><h1></h1></p></center>\n");
      out.write("\n");
      out.write("\n");

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
               
                
      out.write("\n");
      out.write("                \n");
      out.write("                    <div class=\"column\">\n");
      out.write("               <div class=\"card\">\n");
      out.write("        <img   src=");
      out.print(urlc);
      out.write(" hspace=\"20\"  height=\"350\" width=\"250\">\n");
      out.write("        <form action=\"AddWatchList.jsp\">\n");
      out.write("      <p><button name =\"selected\"value=");
      out.print(mmm);
      out.write("> more info</button></p>\n");
      out.write("                      </form>\n");
      out.write("                      \n");
      out.write("        </div>\n");
      out.write("                    </div>\n");
      out.write("              \n");
      out.write("                ");

                }
               while(tv_i.hasNext())
               {
                String a = "select * from tvshow_details where id  = '"+tv_i.next()+"'";
                ResultSet mm = statment1.executeQuery(a);
                mm.next();
                 String urlc = "\""+ mm.getString("url") +"\"";
                String tt = "tvshow/"+mm.getString("id");
                
      out.write("\n");
      out.write("                \n");
      out.write("                <div class=\"column\">\n");
      out.write("               <div class=\"card\">\n");
      out.write("        <img   src=");
      out.print(urlc);
      out.write(" hspace=\"20\"  height=\"350\" width=\"250\">\n");
      out.write("        <form action=\"AddWatchList.jsp\">\n");
      out.write("      <p><button name =\"selected\"value=");
      out.print(tt);
      out.write("> more info</button></p>\n");
      out.write("                      </form>\n");
      out.write("                      \n");
      out.write("        </div>\n");
      out.write("                    </div>\n");
      out.write("               \n");
      out.write("                      \n");
      out.write("                ");

                } 
           } catch (ClassNotFoundException ex) {
           } 

      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
