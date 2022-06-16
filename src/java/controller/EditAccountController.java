/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dao.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Account;

/**
 *
 * @author Admin
 */
public class EditAccountController extends HttpServlet {
  

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int accountID = Integer.parseInt(request.getParameter("aid"));
        AccountDAO dao = new AccountDAO();
        Account a = dao.getAccountByID(accountID);
        request.setAttribute("account", a);
        request.getRequestDispatcher("editAccount.jsp").forward(request, response);
    } 

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int aid = Integer.parseInt(request.getParameter("accountID"));
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        AccountDAO dao = new AccountDAO();
        dao.updateAccount(user, pass, aid);
        response.sendRedirect("manage");
    }

 

}
