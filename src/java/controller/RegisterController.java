/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import verify.SendEmail;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Account;
import model.User;
import org.mindrot.jbcrypt.BCrypt;
import verify.RandomCode;

/**
 *
 * @author Admin
 */
public class RegisterController extends HttpServlet {

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
        request.getRequestDispatcher("register.jsp").forward(request, response);
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
        //get info from form
        String FullName = request.getParameter("FullName");
        String UserName = request.getParameter("UserName");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String rawPassword = request.getParameter("password");
        
        String password=BCrypt.hashpw(rawPassword,BCrypt.gensalt(10));

        //add info to session
        User rawUser =new User();
        rawUser.setName(FullName);
        rawUser.setPhone(phone);
        rawUser.setAddress(address);
        rawUser.setEmail(email);
        
        Account rawAccount=new Account();
        rawAccount.setUserName(UserName);
        rawAccount.setPassWord(password);
        
        request.getSession().setAttribute("rawUser", rawUser);
        request.getSession().setAttribute("rawAccount", rawAccount);
        
        //activate 6-digit code
        RandomCode rc=new RandomCode();
        String verifyCode=rc.activateCode();
        
        //verify user email
        SendEmail se=new SendEmail();
        se.send(email, verifyCode);
        request.getSession().setAttribute("verifyCode", verifyCode);
        request.getSession().setAttribute("status", "register");
        request.getRequestDispatcher("verify.jsp").forward(request, response);
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
