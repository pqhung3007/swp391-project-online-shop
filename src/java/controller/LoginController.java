/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.AccountDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Account;
import org.mindrot.jbcrypt.BCrypt;

/**
 *
 * @author Admin
 */
public class LoginController extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = request.getParameter("userName");
        String pass = request.getParameter("passWord");
        AccountDAO db = new AccountDAO();
        Account account = db.getAccount(user);
        // check password
        if (account != null) {
//            boolean valuate = BCrypt.checkpw(pass, account.getPassWord());
//            if (valuate) {
                request.getSession().setAttribute("account", account);
                if (account.isStatus()) {
                    switch (account.getRoleId()) {
                        case 1:
                            response.sendRedirect("manage");
                            break;
                        case 2:
                            response.sendRedirect("home");
                            break;
                        case 3:
                            response.sendRedirect("seller-dashboard");
                            break;
                        default:
                            response.sendRedirect("shipper-dashboard");
                            break;
                    }
                } else {
                    request.setAttribute("loginFailed", "User is inactive");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
//            } else {
//                request.getSession().setAttribute("account", null);
//                request.setAttribute("loginFailedMessage", "Login failed!");
//                request.getRequestDispatcher("login.jsp").forward(request, response);
//            }
        } else {
            request.getSession().setAttribute("account", null);
            request.setAttribute("loginFailedMessage", "Login failed!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
