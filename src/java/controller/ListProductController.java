/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.CategoryDAO;
import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Category;
import model.Product;

/**
 *
 * @author Admin
 */
public class ListProductController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        ProductDAO product = new ProductDAO();
        int page = 1;
        int pageSize = 6;
        String pageStr = request.getParameter("page");
        if (pageStr != null) {
            page = Integer.parseInt(pageStr);
        }
        int cid = Integer.parseInt(request.getParameter("categoryId"));
        ArrayList<Product> list = product.pagingProductByCategory(cid,page,pageSize);
        int totalProducts = product.getProductQuantityByCategory(cid);
        int totalPages = totalProducts / pageSize;
        if (totalPages % pageSize != 0) {
            totalPages += 1;
        }
        request.setAttribute("cid", cid);
        request.setAttribute("page", page);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("products", list);
        request.getRequestDispatcher("pagingProduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
