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
import java.util.List;
import model.Account;
import model.Product_Review;

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
        List<Product_Review> reviews = dao.getReviewByProductId(pid);
        List<Product_Review> reviews1 = dao.get1StarProduct(pid);
        List<Product_Review> reviews2 = dao.get2StarProduct(pid);
        List<Product_Review> reviews3 = dao.get3StarProduct(pid);
        List<Product_Review> reviews4 = dao.get4StarProduct(pid);
        List<Product_Review> reviews5 = dao.get5StarProduct(pid);
        request.setAttribute("reviews", reviews.size());
        request.setAttribute("reviews1", reviews1.size());
        request.setAttribute("reviews2", reviews2.size());
        request.setAttribute("reviews3", reviews3.size());
        request.setAttribute("reviews4", reviews4.size());
        request.setAttribute("reviews5", reviews5.size());
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
            int rate = Integer.parseInt(request.getParameter("rate"));
            int productID = Integer.parseInt(request.getParameter("productID"));

            dao.insertProductReview(productID, rate,a.getAccountId());
            response.sendRedirect("products");
        }
    }

}
