/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import model.Product;
import dao.ProductDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author Admin
 */
public class ProductDetailController extends HttpServlet {
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int pid = Integer.parseInt(request.getParameter("pid"));
        ProductDAO dao = new ProductDAO();
        Product p = dao.getProductsByID(pid);
        request.setAttribute("productDetail", p);
        request.getRequestDispatcher("productDetail.jsp").forward(request, response);
    } 

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("account");
        if (a == null) {
            response.sendRedirect("login");
        } else {
            ProductDAO dao = new ProductDAO();
            String rate = request.getParameter("rate");
            String productID = request.getParameter("productID");

            dao.insertProductReview(productID, rate,a.getAccountId());
            response.sendRedirect("products");
        }
    }

}
