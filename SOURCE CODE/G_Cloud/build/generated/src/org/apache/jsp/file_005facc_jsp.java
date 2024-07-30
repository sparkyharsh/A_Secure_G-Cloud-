package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class file_005facc_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>A Secure G-Cloud-Based Framework for Government Healthcare Services</title>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap -->\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/jquery.bxslider.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/isotope.css\" media=\"screen\" />\t\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/animate.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"js/fancybox/jquery.fancybox.css\" type=\"text/css\" media=\"screen\" />\n");
      out.write("        <link href=\"css/prettyPhoto.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\">\t\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                margin-top: 200px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("   <body style=\"background: #ee9ca7;  /* fallback for old browsers */\n");
      out.write("background: -webkit-linear-gradient(to right, #ffdde1, #ee9ca7);  /* Chrome 10-25, Safari 5.1-6 */\n");
      out.write("background: linear-gradient(to right, #ffdde1, #ee9ca7); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */\">\n");
      out.write("        <header>\t\t\n");
      out.write("            <nav class=\"navbar navbar-default navbar-fixed-top\" role=\"navigation\" >\n");
      out.write("                <div class=\"navigation\" style=\"background: #3a7bd5;  /* fallback for old browsers */\n");
      out.write("background: -webkit-linear-gradient(to right, #3a6073, #3a7bd5);  /* Chrome 10-25, Safari 5.1-6 */\n");
      out.write("background: linear-gradient(to right, #3a6073, #3a7bd5); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */\n");
      out.write("\">\n");
      out.write("                    <div class=\"container\">\t\t\t\t\t\n");
      out.write("                        <div class=\"navbar-header\">\n");
      out.write("                            <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\".navbar-collapse.collapse\">\n");
      out.write("                                <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                            </button>\n");
      out.write("                            <div class=\"navbar-brand\">\n");
      out.write("                                <center><a href=\"index2.jsp\"><h1 style=\"color: #fff\">A Secure G-Cloud-Based Framework for Government Healthcare Services</h1></a></center>\n");
      out.write("                            </div>\n");
      out.write("                            <br><br><br><br>\n");
      out.write("                            <div class=\"navbar-collapse collapse\">\t\t\t\t\t\t\t\n");
      out.write("                                <div class=\"menu\">\n");
      out.write("                                    <ul class=\"nav nav-tabs\" role=\"tablist\">\n");
      out.write("                                        <li role=\"presentation\"><a href=\"user_home.jsp\">User Home</a></li>\n");
      out.write("                                        <li role=\"presentation\"><a href=\"search.jsp\">Search File</a></li>\n");
      out.write("                                        <li role=\"presentation\"><a href=\"file_acc.jsp\" class=\"active\">Access File</a></li>\n");
      out.write("                                        <li role=\"presentation\"><a href=\"index.jsp\">Logout</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\t\t\t\t\t\t\n");
      out.write("                    </div>\n");
      out.write("                </div>\t\n");
      out.write("            </nav>\t\t\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("        <div class=\"services\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"text-center\">\n");
      out.write("                    <div class=\"services-box\">\n");
      out.write("                        <div class=\"wow bounceInDown\" data-wow-offset=\"0\" data-wow-delay=\"0.3s\">\n");
      out.write("                            <h3 style=\"font-size: 30px; font-family: sans-serif\">FILE KEY VERIFICATION </h3>\t<br><br>\t\t\t\t\n");
      out.write("                        </div>\n");
      out.write("                        <style>\n");
      out.write("                            input[type=text], select,input[type=password] {\n");
      out.write("                                width: 25%;\n");
      out.write("                                padding: 12px 20px;\n");
      out.write("                                margin: 8px 0;\n");
      out.write("                                color: black;\n");
      out.write("                                display: inline-block;\n");
      out.write("                                border: 1px solid #ccc;\n");
      out.write("                                border-radius: 4px;\n");
      out.write("                                box-sizing: border-box;\n");
      out.write("                            }\n");
      out.write("\n");
      out.write("                            input[type=submit] {\n");
      out.write("                                width: 300px;\n");
      out.write("                                height: 50px;\n");
      out.write("                                background-color: #00abf0;\n");
      out.write("                                color: black;\n");
      out.write("                                padding: 14px 20px;\n");
      out.write("                                margin: 8px 0;\n");
      out.write("                                border: none;\n");
      out.write("                                border-radius: 4px;\n");
      out.write("                                cursor: pointer;\n");
      out.write("                            }\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                            input[type=submit]:hover {\n");
      out.write("                                background-color: #3e8f3e;\n");
      out.write("                            }\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </style>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div style=\"width:100%; margin:0 auto;\">\n");
      out.write("                <div style=\"width: 50%; float: left\">\n");
      out.write("                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                    <img style=\"height: 200px; width: 400px\" src=\"img/Verification-e1474861482103.jpg\">\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div style=\"width: 50%; float: right\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <!--<p>Please fill in this form to create an account.</p>-->\n");
      out.write("                    \n");
      out.write("                    <form action=\"verified.jsp\" method=\"get\">\n");
      out.write("                        <table style=\"width:80%\">\n");
      out.write("                            <br><br>\n");
      out.write("                            <tr>\n");
      out.write("                                <th><label style=\"color: #3c763d; font-size: 18px\">Secret Key:</label></th>\n");
      out.write("                                <th><input type=\"text\" id=\"fname\" style=\"width: 300px\" name=\"sskey\" required=\"\" placeholder=\"Enter Key\"><br></th> \n");
      out.write("                            </tr>\n");
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <td></td>\n");
      out.write("                                <td><strong><input type=\"submit\" value=\"verify\"></strong></td> \n");
      out.write("                            </tr>\n");
      out.write("\n");
      out.write("                        </table>\n");
      out.write("\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                    <br>\n");
      out.write("                    <BR><BR>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
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
