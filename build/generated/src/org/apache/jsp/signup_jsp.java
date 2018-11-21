package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write(" ");

String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "movie";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

      out.write("\n");
      out.write("<h2 align=\"center\"><font><strong>Retrieve data from database in jsp</strong></font></h2>\n");
      out.write("<table align=\"center\" cellpadding=\"5\" cellspacing=\"5\" border=\"1\">\n");
      out.write("<tr>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("<tr bgcolor=\"#A52A2A\">\n");
      out.write("<td><b>id</b></td>\n");
      out.write("<td><b>user_id</b></td>\n");
      out.write("<td><b>Password</b></td>\n");
      out.write("<td><b>Name</b></td>\n");
      out.write("<td><b>Email</b></td>\n");
      out.write("</tr>\n");

try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM manu;";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){

      out.write("\n");
      out.write("<tr bgcolor=\"#DEB887\">\n");
      out.write("\n");
      out.write("<td>");
      out.print(resultSet.getInt("name") );
      out.write("</td>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("\n");
 
}

} catch (Exception e) {
e.printStackTrace();
}

      out.write("\n");
      out.write("</table>");
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
