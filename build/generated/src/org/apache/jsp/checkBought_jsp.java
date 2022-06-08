package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class checkBought_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/components/footer.jsp");
  }

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\" />\n");
      out.write("    <meta name=\"description\" content=\"\" />\n");
      out.write("    <meta name=\"author\" content=\"\" />\n");
      out.write("    <title>Gọi và đặt món - Du Lịch </title>\n");
      out.write("\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css\" rel=\"stylesheet\" />\n");
      out.write("    <link href=\"bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://pro.fontawesome.com/releases/v5.10.0/css/all.css\"\n");
      out.write("        integrity=\"sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p\" crossorigin=\"anonymous\" />\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <!-- Product section-->\n");
      out.write("    <section class=\"py-5\">\n");
      out.write("\n");
      out.write("        <div class=\"container\" style=\"min-height: 1000px\">\n");
      out.write("            <h1>Checkout</h1>\n");
      out.write("            <form action=\"order\" method=\"post\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-8\" style=\"border: 1px solid #ccc; border-radius: 5px; padding: 1rem\">\n");
      out.write("                        <h3>List Products</h3>\n");
      out.write("                        <table class=\"table\">\n");
      out.write("                            <thead>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"col\">STT</th>\n");
      out.write("                                    <th scope=\"col\">Name</th>\n");
      out.write("                                    <th scope=\"col\">Price</th>\n");
      out.write("                                    <th scope=\"col\">Quantity</th>\n");
      out.write("                                    <th scope=\"col\">Total Price</th>\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                            <tbody>\n");
      out.write("\n");
      out.write("                                <tr>\n");
      out.write("\n");
      out.write("                                    <th scope=\"row\">1</th>\n");
      out.write("                                    <td>Cà Phê</td>\n");
      out.write("                                    <td>22222</td>\n");
      out.write("                                    <td>3</td>\n");
      out.write("                                    <td>44444</td>\n");
      out.write("                                </tr>\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                        <h3>Total Amount:</h3>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-4\" style=\"border: 1px solid #ccc; border-radius: 5px; padding: 1rem\">\n");
      out.write("                        <h3>Information of customer</h3>\n");
      out.write("\n");
      out.write("                        <div class=\"mb-3\">\n");
      out.write("                            <label for=\"name\" class=\"form-label\">Name</label>\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"name\" name=\"name\" aria-describedby=\"emailHelp\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"mb-3\">\n");
      out.write("                            <label for=\"phone\" class=\"form-label\">Phone</label>\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"phone\" name=\"phone\"\n");
      out.write("                                aria-describedby=\"emailHelp\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"mb-3\">\n");
      out.write("                            <label for=\"email\" class=\"form-label\">Email</label>\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"email\" name=\"email\"\n");
      out.write("                                aria-describedby=\"emailHelp\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"mb-3\">\n");
      out.write("                            <label for=\"note\" class=\"form-label\">Note</label>\n");
      out.write("                            <textarea class=\"form-control\" id=\"note\" name=\"note\" rows=\"3\"></textarea>\n");
      out.write("                        </div>\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-primary w-100\">Submit</button>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- Footer Start -->\r\n");
      out.write("        <div\r\n");
      out.write("            class=\"container-fluid bg-dark text-light footer my-6 mb-0 py-5 wow fadeIn\"\r\n");
      out.write("            data-wow-delay=\"0.1s\"\r\n");
      out.write("            >\r\n");
      out.write("            <div class=\"container py-5\">\r\n");
      out.write("                <div class=\"row g-5\">\r\n");
      out.write("                    <div class=\"col-lg-4 col-md-6\">\r\n");
      out.write("                        <h4 class=\"text-light mb-4\">Office Address</h4>\r\n");
      out.write("                        <p class=\"mb-2\">\r\n");
      out.write("                            <i class=\"fa fa-map-marker-alt me-3\"></i>C209, Delta Block, FPT\r\n");
      out.write("                            University, Hoa Lac, Viet Nam\r\n");
      out.write("                        </p>\r\n");
      out.write("                        <p class=\"mb-2\">\r\n");
      out.write("                            <i class=\"fa fa-phone-alt me-3\"></i>+012 345 67890\r\n");
      out.write("                        </p>\r\n");
      out.write("                        <p class=\"mb-2\">\r\n");
      out.write("                            <i class=\"fa fa-envelope me-3\"></i>coffee@maker.com\r\n");
      out.write("                        </p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-lg-4 col-md-6\">\r\n");
      out.write("                        <h4 class=\"text-light mb-4\">Quick Links</h4>\r\n");
      out.write("                        <a class=\"btn btn-link\" href=\"\">About Us</a>\r\n");
      out.write("                        <a class=\"btn btn-link\" href=\"\">Contact Us</a>\r\n");
      out.write("                        <a class=\"btn btn-link\" href=\"products\">Our Products</a>\r\n");
      out.write("                        <a class=\"btn btn-link\" href=\"\">Your Account</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-lg-4 col-md-12\">\r\n");
      out.write("                        <h4 class=\"text-light mb-4\">Photo Gallery</h4>\r\n");
      out.write("                        <div class=\"row g-2\">\r\n");
      out.write("                            <div class=\"col-4\">\r\n");
      out.write("                                <img\r\n");
      out.write("                                    class=\"img-fluid bg-light rounded p-1\"\r\n");
      out.write("                                    src=\"img/product-1.jpg\"\r\n");
      out.write("                                    alt=\"Image\"\r\n");
      out.write("                                    />\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-4\">\r\n");
      out.write("                                <img\r\n");
      out.write("                                    class=\"img-fluid bg-light rounded p-1\"\r\n");
      out.write("                                    src=\"img/product-2.jpg\"\r\n");
      out.write("                                    alt=\"Image\"\r\n");
      out.write("                                    />\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-4\">\r\n");
      out.write("                                <img\r\n");
      out.write("                                    class=\"img-fluid bg-light rounded p-1\"\r\n");
      out.write("                                    src=\"img/product-3.jpg\"\r\n");
      out.write("                                    alt=\"Image\"\r\n");
      out.write("                                    />\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-4\">\r\n");
      out.write("                                <img\r\n");
      out.write("                                    class=\"img-fluid bg-light rounded p-1\"\r\n");
      out.write("                                    src=\"img/product-2.jpg\"\r\n");
      out.write("                                    alt=\"Image\"\r\n");
      out.write("                                    />\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-4\">\r\n");
      out.write("                                <img\r\n");
      out.write("                                    class=\"img-fluid bg-light rounded p-1\"\r\n");
      out.write("                                    src=\"img/product-3.jpg\"\r\n");
      out.write("                                    alt=\"Image\"\r\n");
      out.write("                                    />\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-4\">\r\n");
      out.write("                                <img\r\n");
      out.write("                                    class=\"img-fluid bg-light rounded p-1\"\r\n");
      out.write("                                    src=\"img/product-1.jpg\"\r\n");
      out.write("                                    alt=\"Image\"\r\n");
      out.write("                                    />\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- Footer End -->\r\n");
      out.write("\r\n");
      out.write("        <!-- Copyright Start -->\r\n");
      out.write("        <div\r\n");
      out.write("            class=\"container-fluid copyright text-light py-4 wow fadeIn\"\r\n");
      out.write("            data-wow-delay=\"0.1s\"\r\n");
      out.write("            >\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-6 text-center text-md-start mb-3 mb-md-0\">\r\n");
      out.write("                        &copy; <a href=\"#\">Coffee Maker</a>, All Right Reserved.\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-md-6 text-center text-md-end\">\r\n");
      out.write("                        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from \"https://htmlcodex.com/credit-removal\". Thank you for your support. ***/-->\r\n");
      out.write("                        Designed By <a href=\"https://htmlcodex.com\">Us</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- Copyright End -->");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
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
