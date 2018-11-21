package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Admin_005f_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<style>\n");
      out.write("    body {\n");
      out.write("\tmargin: 0;\n");
      out.write("\tpadding: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".container {\n");
      out.write("\tpadding: 20px;\n");
      out.write("\tbackground-color: rgba(209, 209, 209, 0.58);\n");
      out.write("\tmargin: auto;\n");
      out.write("\tmargin-top: 20px;\n");
      out.write("\tline-height: 30px;\n");
      out.write("\twidth: 500px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".title {\n");
      out.write("\ttext-align: center;\n");
      out.write("\ttext-decoration: underline;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".container span {\n");
      out.write("\tmargin-top: 10px;\n");
      out.write("\tpadding-left: 40px;\n");
      out.write("\tdisplay: inline-block;\n");
      out.write("\twidth: 30%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".container input {\n");
      out.write("\tmin-height: 25px;\n");
      out.write("\tdisplay: inline-block;\n");
      out.write("\twidth: 50%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#gender input {\n");
      out.write("\tmin-height: inherit;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".container textarea {\n");
      out.write("\tdisplay: inline-block;\n");
      out.write("\tmargin-top: 10px;\n");
      out.write("\twidth: 50%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#gender input {\n");
      out.write("\twidth: auto;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#submit,\n");
      out.write("#reset {\n");
      out.write("\tdisplay: inline-block;\n");
      out.write("\twidth: auto;\n");
      out.write("\tmargin-top: 10px;\n");
      out.write("\tmargin-left: 40%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#reset {\n");
      out.write("\tmargin-left: 10%;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("<div class=\"container\">\n");
      out.write("\t\t<h2 class=\"title\">Admin Page</h2>\n");
      out.write("         <form action=\"addtodatabase.jsp\">\n");
      out.write("        <div id=\"gender\"> <span>Gender</span>\n");
      out.write("          <input type=\"radio\" name=\"show\">Movie\n");
      out.write("          <input type=\"radio\" name=\"show\">TV SHOW\n");
      out.write("          </div>\n");
      out.write("        \n");
      out.write("        <div > <span>Name of the Show </span>\n");
      out.write("            <input type=\"text\" name=\"showname\"> </div>\n");
      out.write("        <div > <span>Year</span>\n");
      out.write("          <input type=\"text\" name=\"year\"> </div>\n");
      out.write("        <div > <span>Genres</span>\n");
      out.write("            <input type=\"text\" name=\"showgenres\"> </div>\n");
      out.write("        <div > <span>Rating</span>\n");
      out.write("          <input type=\"text\"> </div>\n");
      out.write("        <div > <span>Show URL</span>\n");
      out.write("          <input type=\"text\"name=\"showurl\"> </div>\n");
      out.write("       \n");
      out.write("    \n");
      out.write("        <input type=\"submit\" id=\"submit\" value=\"submit\">\n");
      out.write("       \n");
      out.write("    </form>\n");
      out.write("</div>");
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
