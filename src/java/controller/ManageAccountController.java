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
import java.util.List;
import model.Account;
import model.Role;

/**
 *
 * @author Admin
 */
public class ManageAccountController extends HttpServlet {
   
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        AccountDAO dao = new AccountDAO();
        List<Account> list = dao.getAll();
        List<Role> roles = dao.getAllRole(1);
        request.setAttribute("roles", roles);
        request.setAttribute("accounts", list);
        
        request.getRequestDispatcher("manageAccount.jsp").forward(request, response);
    } 

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        List<Role> roles = new AccountDAO().getAllRole(1);
        request.setAttribute("roles", roles);
        int roleId = Integer.parseInt(request.getParameter("roles"));
        if(roleId == 1){
            List<Account> list = new AccountDAO().getAll();
            request.setAttribute("accounts", list);
            request.getRequestDispatcher("manageAccount.jsp").forward(request, response);
        }else{
        List<Account> accounts = new AccountDAO().getUserByRole(roleId);
        request.setAttribute("selectedId", roleId);
        request.setAttribute("accounts", accounts);
        request.getRequestDispatcher("manageAccount.jsp").forward(request, response);
        }
    }

    

}
