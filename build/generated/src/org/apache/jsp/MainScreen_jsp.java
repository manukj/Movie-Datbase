package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Random;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class MainScreen_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


   
        String welcomename;
        Connection  connection ;
        Statement statment_mv,statment_tv ; 
        ResultSet mv_s,tv_s;
        String mv_retrive,tv_retrive;
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String dbName = "movies";
        String userId = "root";
        String password = "";
        
    
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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    ");

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
      out.write("     border-color: white;\n");
      out.write("      padding: 25px;\n");
      out.write("    margin: 25px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("        \n");
      out.write("</style>\n");
      out.write("<body bgcolor = \"#000000\">\n");
      out.write("    \n");
      out.write("    \n");
      out.write("   \n");
      out.write("\n");
      out.write("\n");
      out.write("  <ul>  \n");
      out.write("\n");
      out.write("     <li><h2 style=\"color:white;\"> ");
      out.print(welcomename);
      out.write("</a></li>\n");
      out.write("     <li style=\"float:right\">   <form action=\"login_signup.jsp\">\n");
      out.write("             <input type=\"image\" src=\"logout.png\" style=\"padding:10px;margin-left:25px;\" height=\"72\" width=\"72\" >\n");
      out.write("  </form></li>\n");
      out.write(" <li style=\"float:right\">   <form action=\"UserHistory.jsp\">\n");
      out.write("  <input type=\"image\" src=\"hostory.gif\" height=\"72\" width=\"102\" >\n");
      out.write("  </form></li>\n");
      out.write("</ul>\n");
      out.write("\n");
      out.write("\n");
      out.write("  \n");
      out.write("<form action=\"search_page.jsp\">\n");
      out.write("<center>\n");
      out.write("<p style=\"color:white;\"class='seven'>\n");
      out.write("Category:\n");
      out.write("<select name=\"MorT\">\n");
      out.write("<option value=\"movie\" selected=\"movie\">Movie</option>\n");
      out.write("<option value=\"tvshow\">TvShow</option>\n");
      out.write("</select>\n");
      out.write("\n");
      out.write("Genre:\n");
      out.write("<select name=\"genre\">\n");
      out.write("<option value=\"all\" selected=\"selected\">All</option>\n");
      out.write("<option value=\"action\">Action</option>\n");
      out.write("<option value=\"adventure\">Adventure</option>\n");
      out.write("<option value=\"comedy\">Comedy</option>\n");
      out.write("<option value=\"crime\">Crime</option>\n");
      out.write("<option value=\"drama\">Drama</option>\n");
      out.write("<option value=\"horror\">Horror</option>\n");
      out.write("<option value=\"thriller\">Thriller</option>\n");
      out.write("</select>\n");
      out.write("\n");
      out.write("Rating:\n");
      out.write("<select name=\"rating\">\n");
      out.write("<option value=\"0\" selected=\"selected\">All</option>\n");
      out.write("<option value=\"9\">9+</option>\n");
      out.write("<option value=\"8\">8+</option>\n");
      out.write("<option value=\"7\">7+</option>\n");
      out.write("<option value=\"6\">6+</option>\n");
      out.write("<option value=\"5\">5+</option>\n");
      out.write("<option value=\"4\">4+</option>\n");
      out.write("<option value=\"3\">3+</option>\n");
      out.write("<option value=\"2\">2+</option>\n");
      out.write("<option value=\"1\">1+</option>\n");
      out.write("</select>\n");
      out.write("\n");
      out.write("      <input type=\"text\" placeholder=\"Movie Search..\" name=\"search\">\n");
      out.write("      <button type=\"submit\">Search</button>\n");
      out.write("    \n");
      out.write("   \n");
      out.write("</p>\n");
      out.write(" </center>\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("  \n");
      out.write("\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<!-- Header -->\n");
      out.write("<div class=\"header\">\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- Photo Grid -->\n");
      out.write("<div class=\"row\"> \n");
      out.write(" \n");
      out.write("      ");

          while(mv_s.next())
          {
          String urlr = "\""+ mv_s.getString("url") +"\"";
          String m = "movie/"+mv_s.getString("id");
          
      out.write("\n");
      out.write("       \n");
      out.write("          <div class=\"column\">  \n");
      out.write("    <form action=\"AddWatchList.jsp\" method=\"get\" >\n");
      out.write("        <input type=\"image\" class=\"img-responsive poster\"  src=");
      out.print(urlr);
      out.write(" value=");
      out.print(m);
      out.write(" hspace=\"20\" name=\"selected\" height=\"350\" width=\"250\" >\n");
      out.write("      </form>\n");
      out.write("        ");
if(mv_s.next())
        {
          String urlc = "\""+ mv_s.getString("url") +"\"";
          
           String mm = "movie/"+mv_s.getString("id");
        
      out.write("\n");
      out.write("     <form action=\"AddWatchList.jsp\" method=\"get\" >\n");
      out.write("        <input type=\"image\" class=\"img-responsive poster\"  src=");
      out.print(urlc);
      out.write(" value=");
      out.print(mm);
      out.write("  hspace=\"20\" name=\"selected\" height=\"350\" width=\"250\">\n");
      out.write("      </form>\n");
      out.write("        ");
}
      out.write("\n");
      out.write("  </div>\n");
      out.write("\n");
}
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("  \n");
      out.write("      \n");
      out.write("      ");

          while(tv_s.next())
          {
          String urlr = "\""+ tv_s.getString("url") +"\"";
           String t = "tvshow/"+tv_s.getString("id");
          
      out.write("\n");
      out.write("          <div class=\"card\">\n");
      out.write("          <div class=\"column\">  \n");
      out.write("    <form action=\"AddWatchList.jsp\" method=\"get\" >\n");
      out.write("        <input type=\"image\" class=\"img-responsive poster\"  src=");
      out.print(urlr);
      out.write(" value=");
      out.print(t);
      out.write("  hspace=\"20\" name=\"selected\" height=\"350\" width=\"250\" >\n");
      out.write("      </form>\n");
      out.write("          </div>\n");
      out.write("        ");
if(tv_s.next())
        {
          String urlc = "\""+ tv_s.getString("url") +"\"";
           String tt = "tvshow/"+tv_s.getString("id");
        
      out.write("\n");
      out.write("        <div class=\"card\">\n");
      out.write("     <form action=\"AddWatchList.jsp\" method=\"get\" >\n");
      out.write("        <input type=\"image\" class=\"img-responsive poster\"  src=");
      out.print(urlc);
      out.write(" value=");
      out.print(tt);
      out.write("  hspace=\"20\" name=\"selected\"height=\"350\" width=\"250\" >\n");
      out.write("      </form>\n");
      out.write("        </div>\n");
      out.write("        ");
}
      out.write("\n");
      out.write("  </div>\n");
      out.write("\n");
}
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("     \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("S");
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
