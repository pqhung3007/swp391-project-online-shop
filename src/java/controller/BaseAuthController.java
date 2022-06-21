/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;



import dao.AccountDAO;
import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Account;

/**
 *
 * @author Le Viet
 */

public abstract class BaseAuthController extends HttpServlet {
   private boolean isAuthenticated (HttpServletRequest request){
      Account account = (Account)request.getSession().getAttribute("account");
        if(account ==null)
            return false;
        else
        {
            String url = request.getServletPath();
            AccountDAO db = new AccountDAO();
            int permission = db.getPermission(account.getUserName(), url);
            return permission > 0;
        }
      
   }
   

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (isAuthenticated(request)) {
            processGet(request, response);
        } else {
            response.sendRedirect("login");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (isAuthenticated(request)) {
            processPost(request, response);
        } else {
           response.sendRedirect("login");
        }
    }
    protected abstract void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException;
     protected abstract void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException;
   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
