package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class seller_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <title>Admin</title>\r\n");
      out.write("        <link href=\"img/favicon.ico\" rel=\"icon\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Google Web Fonts -->\r\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("        <link\r\n");
      out.write("            href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Playfair+Display:wght@600;700&display=swap\"\r\n");
      out.write("            rel=\"stylesheet\">\r\n");
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
      out.write("        <link href=\"css/admin.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"css/home.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/icon?family=Material+Icons+Sharp\" />\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-dark fixed-top py-lg-0 px-lg-5 wow fadeIn\" data-wow-delay=\"0.1s\">\r\n");
      out.write("            <a href=\"index.html\" class=\"navbar-brand ms-4 ms-lg-0\">\r\n");
      out.write("                <h1 class=\"text-primary m-0\">Coffee Maker</h1>\r\n");
      out.write("            </a>\r\n");
      out.write("        </nav>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <div class=\" py-3 row\">\r\n");
      out.write("            <div class=\"col-lg-2\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"fact-item bg-light rounded text-center h-100 slidebar\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    <a href=\"index.html\" class=\"nav-item nav-link active\">\r\n");
      out.write("                        <span class=\"material-icons-sharp\">grid_view</span>\r\n");
      out.write("                        <h3>Home</h3>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"about.html\" class=\"nav-item nav-link\">\r\n");
      out.write("                        <span class=\"material-icons-sharp\">person_outline</span>\r\n");
      out.write("                        <h3>About</h3>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"product.html\" class=\"nav-item nav-link\">\r\n");
      out.write("                        <span class=\"material-icons-sharp\">inventory</span>\r\n");
      out.write("                        <h3>Products</h3>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"contact.html\" class=\"nav-item nav-link\">\r\n");
      out.write("                        <span class=\"material-icons-sharp\">insights</span>\r\n");
      out.write("                        <h3>Contact</h3>\r\n");
      out.write("                    </a>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-lg-8\">\r\n");
      out.write("                <div class=\"container-xxl py-6\">\r\n");
      out.write("                    <div class=\"container\">\r\n");
      out.write("                        <div class=\"row g-4\">\r\n");
      out.write("                            <div class=\"col-lg-4 col-md-6 wow fadeIn\" data-wow-delay=\"0.1s\">\r\n");
      out.write("                                <div class=\"fact-item bg-light rounded text-center h-100 p-5\">\r\n");
      out.write("\r\n");
      out.write("                                    <p class=\"mb-2\">Customers</p>\r\n");
      out.write("                                    <h1 class=\"display-5 mb-0\" data-toggle=\"counter-up\">50</h1>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-lg-4 col-md-6 wow fadeIn\" data-wow-delay=\"0.3s\">\r\n");
      out.write("                                <div class=\"fact-item bg-light rounded text-center h-100 p-5\">\r\n");
      out.write("\r\n");
      out.write("                                    <p class=\"mb-2\">Shippers</p>\r\n");
      out.write("                                    <h1 class=\"display-5 mb-0\" data-toggle=\"counter-up\">175</h1>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-lg-4 col-md-6 wow fadeIn\" data-wow-delay=\"0.5s\">\r\n");
      out.write("                                <div class=\"fact-item bg-light rounded text-center h-100 p-5\">\r\n");
      out.write("\r\n");
      out.write("                                    <p class=\"mb-2\">Sellers</p>\r\n");
      out.write("                                    <h1 class=\"display-5 mb-0\" data-toggle=\"counter-up\">135</h1>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"container-xxl py-6\">\r\n");
      out.write("                    <div class=\"col-lg-12 \">\r\n");
      out.write("                        <div class=\"fact-item bg-light rounded text-center h-100 p-5\">\r\n");
      out.write("\r\n");
      out.write("                            <p class=\"mb-2\">Customers</p>\r\n");
      out.write("                            <h1 class=\"display-5 mb-0\" data-toggle=\"counter-up\">50</h1>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-lg-2 py-6\">\r\n");
      out.write("                <div>\r\n");
      out.write("                    <div class=\"fact-item bg-light rounded text-center h-100 p-5\">\r\n");
      out.write("\r\n");
      out.write("                        <p class=\"mb-2\">Customers</p>\r\n");
      out.write("                        <h1 class=\"display-5 mb-0\" data-toggle=\"counter-up\">50</h1>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <br>\r\n");
      out.write("                <div>\r\n");
      out.write("                    <div class=\"fact-item bg-light rounded text-center h-100 p-5\">\r\n");
      out.write("\r\n");
      out.write("                        <p class=\"mb-2\">Customers</p>\r\n");
      out.write("                        <h1 class=\"display-5 mb-0\" data-toggle=\"counter-up\">50</h1>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
