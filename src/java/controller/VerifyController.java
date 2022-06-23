/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.AccountDAO;
import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Account;
import model.User;

/**
 *
 * @author Admin
 */
public class VerifyController extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
        request.getRequestDispatcher("verify.jsp").forward(request, response);
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
        String status = (String) request.getSession().getAttribute("status");
        //get verification code
        String rawCode = "";
        for (int i = 1; i < 7; i++) {
            rawCode += request.getParameter("number" + i);
        }
        
        String verifyCode = (String) request.getSession().getAttribute("verifyCode");

        if (status.equals("register")) {
            //get register information from session
            User rawUser = (User) request.getSession().getAttribute("rawUser");
            Account rawAccount = (Account) request.getSession().getAttribute("rawAccount");
            
            if (rawCode.equals(verifyCode)) {
                //insert new account to database
                AccountDAO dbAccount = new AccountDAO();
                //get lastest created account
                Account latestAccount = dbAccount.getLatestAccount();
                Account a = new Account(latestAccount.getAccountId() + 1, rawAccount.getUserName(), rawAccount.getPassWord(), 2);
                dbAccount.insertAccount(a);

                //insert new user to database
                UserDAO dbUser = new UserDAO();
                //get lastest created user
                User latestUser = dbUser.getLatestUser();
                User u = new User(latestUser.getUserID() + 1, rawUser.getName(), rawUser.getPhone(), rawUser.getAddress(), rawUser.getEmail(), a.getAccountId());
                dbUser.insertUser(u);

                response.sendRedirect("login");
            } else {
                request.setAttribute("msg", "Verification code is not correct. Please try again");
                request.getRequestDispatcher("verify.jsp").forward(request, response);
            }
        } else {
            if(rawCode.equals(verifyCode)){
                response.sendRedirect("changepassword");
            }else{
                request.setAttribute("msg", "Verification code is not correct. Please try again");
                request.getRequestDispatcher("verify.jsp").forward(request, response);
            }
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
