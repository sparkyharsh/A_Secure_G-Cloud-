package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import com.mysql.jdbc.ResultSetInternalMethods;
import java.sql.Statement;
import Database.SqlConnection;
import java.sql.Connection;

public final class result_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>A Secure G-Cloud-Based Framework for Government Healthcare Services Cloud System</title>\n");
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
      out.write("        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\n");
      out.write("        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("          <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n");
      out.write("          <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background: #ee9ca7;  /* fallback for old browsers */\n");
      out.write("          background: -webkit-linear-gradient(to right, #ffdde1, #ee9ca7);  /* Chrome 10-25, Safari 5.1-6 */\n");
      out.write("          background: linear-gradient(to right, #ffdde1, #ee9ca7); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */\">\n");
      out.write("        <header>\t\t\n");
      out.write("            <nav class=\"navbar navbar-default navbar-static-top\" role=\"navigation\">\n");
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
      out.write("                                <center><a href=\"#\"><h1 style=\"color: #fff\">A Secure G-Cloud-Based Framework for Government Healthcare Services</h1></a></center>\n");
      out.write("                            </div>\n");
      out.write("                            <br><br><br><br>\n");
      out.write("                            <div class=\"navbar-collapse collapse\">\t\t\t\t\t\t\t\n");
      out.write("                                <div class=\"menu\">\n");
      out.write("                                    <ul class=\"nav nav-tabs\" role=\"tablist\">\n");
      out.write("                                        <li role=\"presentation\"><a href=\"user_home.jsp\">User Home</a></li>\n");
      out.write("                                        <li role=\"presentation\"><a href=\"search.jsp\" class=\"active\">Search File</a></li>\n");
      out.write("                                        <li role=\"presentation\"><a href=\"file_acc.jsp\">Access File</a></li>\n");
      out.write("                                        <li role=\"presentation\"><a href=\"index.jsp\">Logout</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\t\t\t\t\t\t\n");
      out.write("                        </div>\n");
      out.write("                    </div>\t\n");
      out.write("            </nav>\t\t\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("        <div class=\"services\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"text-center\">\n");
      out.write("                    <div class=\"services-box\">\n");
      out.write("                        <div class=\"wow bounceInDown\" data-wow-offset=\"0\" data-wow-delay=\"0.3s\">\n");
      out.write("                            <h3 style=\"font-size: 35px\">File Details</h3>\t\t\t\t\t\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <form method=\"post\" action=\"bio_info_upload\" enctype=\"multipart/form-data\">\n");
      out.write("\n");
      out.write("                            <style>\n");
      out.write("                                table {\n");
      out.write("                                    border-collapse: collapse;\n");
      out.write("                                    width: 100%;\n");
      out.write("                                }\n");
      out.write("\n");
      out.write("                                th, td {\n");
      out.write("                                    text-align: left;\n");
      out.write("                                    padding: 8px;\n");
      out.write("                                }\n");
      out.write("\n");
      out.write("                                tr:nth-child(even){background-color: #f2f2f2}\n");
      out.write("\n");
      out.write("                                th {\n");
      out.write("                                    background-color: #4CAF50;\n");
      out.write("                                    color: white;\n");
      out.write("                                }\n");
      out.write("                            </style>\n");
      out.write("                            <center><table>\n");
      out.write("\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th style=\"color: #080808; background-color: #00abf0\">File Id</th>\n");
      out.write("                                        <th style=\"color: #080808; background-color: #00abf0\">File Name</th>\n");
      out.write("                                        <th style=\"color: #080808; background-color: #00abf0\">Date & Time</th>\n");
      out.write("                                        <th style=\"color: #080808; background-color: #00abf0\">Owner ID</th>\n");
      out.write("                                        <th style=\"color: #080808; background-color: #00abf0\">Owner Name</th>\n");
      out.write("                                        <th style=\"color: #080808; background-color: #00abf0\">Access Policy</th>\n");
      out.write("                                        <th style=\"color: #080808; background-color: #00abf0\">Request</th>\n");
      out.write("\n");
      out.write("                                    </tr>\n");
      out.write("                                    ");


                                        String role = (String) session.getAttribute("sroles");
                                        Connection con = SqlConnection.getConnection();
                                        Statement st = con.createStatement();
                                        ResultSet rs = st.executeQuery("select * from upload where policy LIKE '%" + role + "%'");
                                        while (rs.next()) {
                                            String policy = rs.getString("policy");
                                            System.out.println("After : " + policy);
                                            policy = policy.replace("null", "");
                                            policy = policy.replace(",", " ");
                                            System.out.println("After : " + policy);
                                    
      out.write("\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td style=\"color: #080808\">");
      out.print(rs.getString("id"));
      out.write("</td>\n");
      out.write("                                        <td style=\"color: #080808\">");
      out.print(rs.getString("fname"));
      out.write("</td>\n");
      out.write("                                        <td style=\"color: #080808\">");
      out.print(rs.getString("utime"));
      out.write("</td>\n");
      out.write("                                        <td style=\"color: #080808\">");
      out.print(rs.getString("oid"));
      out.write("</td>\n");
      out.write("                                        <td style=\"color: #080808\">");
      out.print(rs.getString("oname"));
      out.write("</td>\n");
      out.write("                                        <td style=\"color: #080808\">");
      out.print(policy);
      out.write("</td>\n");
      out.write("                                        <td style=\"color: #080808\"><a style=\"color: #00abf0\" href=\"request.jsp?id=");
      out.print(rs.getString("id"));
      out.write("\">Send</a></td>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    </tr>\n");
      out.write("\n");
      out.write("                                    ");

                                        }

                                    
      out.write("\n");
      out.write("                                </table></center><br>\n");
      out.write("\n");
      out.write("                        </form>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
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
