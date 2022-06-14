package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signIn_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <title>Baker - Bakery Website Template</title>\r\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\r\n");
      out.write("        <meta content=\"\" name=\"keywords\">\r\n");
      out.write("        <meta content=\"\" name=\"description\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Favicon -->\r\n");
      out.write("        <link href=\"img/favicon.ico\" rel=\"icon\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Google Web Fonts -->\r\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Playfair+Display:wght@600;700&display=swap\" rel=\"stylesheet\"> \r\n");
      out.write("\r\n");
      out.write("        <!-- Icon Font Stylesheet -->\r\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Libraries Stylesheet -->\r\n");
      out.write("        <link href=\"js/animate/animate.min.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"js/owlcarousel/assets/owl.carousel.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Customized Bootstrap Stylesheet -->\r\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Template Stylesheet -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body class=\"bo\">\r\n");
      out.write("        <!-- Spinner Start -->\r\n");
      out.write("        <div id=\"spinner\" class=\"show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center\">\r\n");
      out.write("            <div class=\"spinner-grow text-primary\" role=\"status\"></div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- Spinner End -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- Navbar End -->\r\n");
      out.write("        <div class=\"container-xxl py-6\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"row g-5\">\r\n");
      out.write("                    <div class=\"col-lg-6 wow fadeInUp\" data-wow-delay=\"0.1s\">\r\n");
      out.write("                        <div class=\"row img-twice position-relative h-100\">\r\n");
      out.write("                            <div class=\"col-6\">\r\n");
      out.write("                                <img class=\"img-fluid rounded\" src=\"\" alt=\"\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-6 align-self-end\">\r\n");
      out.write("                                <img class=\"img-fluid rounded\" src=\"\" alt=\"\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-lg-6 wow fadeInUp\" data-wow-delay=\"0.5s\">\r\n");
      out.write("                        <div class=\"h-100\">\r\n");
      out.write("                            <a href=\"index.html\" class=\"navbar-brand ms-4 ms-lg-0\">\r\n");
      out.write("                                <h1 class=\" m-0 text-center\">Coffe Baker</h1>\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <form>\r\n");
      out.write("                                <div class=\"row g-3\">\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <div class=\"gradient-border\" id=\"box\"></div>\r\n");
      out.write("                                        <div class=\"form-floating\">\r\n");
      out.write("                                            <input type=\"text\" class=\"form-control text-primary\" id=\"name\" placeholder=\"Your Name\">\r\n");
      out.write("                                            <label for=\"name\">FullName</label>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <div class=\"gradient-border\" id=\"box\"></div>\r\n");
      out.write("                                        <div class=\"form-floating\">\r\n");
      out.write("                                            <input type=\"text\" class=\"form-control text-primary\" id=\"name\" placeholder=\"Your Name\">\r\n");
      out.write("                                            <label for=\"name\">UserName</label>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <div class=\"gradient-border\" id=\"box\"></div>\r\n");
      out.write("                                        <div class=\"form-floating\">\r\n");
      out.write("                                            <input type=\"text\" class=\"form-control text-primary\" id=\"name\" placeholder=\"Your Name\">\r\n");
      out.write("                                            <label for=\"name\">Phone</label>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <div class=\"gradient-border\" id=\"box\"></div>\r\n");
      out.write("                                        <div class=\"form-floating\">\r\n");
      out.write("                                            <input type=\"email\" class=\"form-control\" id=\"email\" placeholder=\"Your Email\">\r\n");
      out.write("                                            <label for=\"email\">Address</label>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-12\">\r\n");
      out.write("                                        <div class=\"gradient-border\" id=\"box\"></div>\r\n");
      out.write("                                        <div class=\"form-floating\">\r\n");
      out.write("                                            <input type=\"text\" class=\"form-control\" id=\"subject\" placeholder=\"Subject\">\r\n");
      out.write("                                            <label for=\"subject\">Email<label>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                    <div class=\"col-md-6\">\r\n");
      out.write("                                                        <div class=\"gradient-border\" id=\"box\"></div>\r\n");
      out.write("                                                        <div class=\"form-floating\">\r\n");
      out.write("                                                            <input type=\"text\" class=\"form-control text-primary\" id=\"name\" placeholder=\"Your Name\">\r\n");
      out.write("                                                            <label for=\"name\">Password</label>\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                    <div class=\"col-md-6\">\r\n");
      out.write("                                                        <div class=\"gradient-border\" id=\"box\"></div>\r\n");
      out.write("                                                        <div class=\"form-floating\">\r\n");
      out.write("                                                            <input type=\"text\" class=\"form-control text-primary\" id=\"name\" placeholder=\"Your Name\">\r\n");
      out.write("                                                            <label for=\"name\">Phone</label>\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                    <div class=\"col-12 text-center\">\r\n");
      out.write("                                                        <div class=\"gradient-border\" id=\"box\"></div>\r\n");
      out.write("                                                        <button class=\"btn btn-primary rounded-pill py-3 px-5\" type=\"submit\">Register</button>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                    </form>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                                    <!-- JavaScript Libraries -->\r\n");
      out.write("                                                    <script src=\"https://code.jquery.com/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("                                                    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("                                                    <script src=\"js/wow/wow.min.js\"></script>\r\n");
      out.write("                                                    <script src=\"js/easing/easing.min.js\"></script>\r\n");
      out.write("                                                    <script src=\"js/waypoints/waypoints.min.js\"></script>\r\n");
      out.write("                                                    <script src=\"js/counterup/counterup.min.js\"></script>\r\n");
      out.write("                                                    <script src=\"js/owlcarousel/owl.carousel.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("                                                    <!-- Template Javascript -->\r\n");
      out.write("                                                    <script src=\"js/main.js\"></script>\r\n");
      out.write("                                                    </body>\r\n");
      out.write("                                                    </html>\r\n");
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
