/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import model.Account;
import model.Order;
import model.OrderDetail;

/**
 *
 * @author Admin
 */
@WebServlet(name = "MyOrders", urlPatterns = {"/myorder"})
public class MyOrders extends HttpServlet {

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
        PrintWriter out = response.getWriter();

        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");

        int page = 1;
        int pageSize = 4;
        String pageStr = request.getParameter("page");
        if (pageStr != null) {
            page = Integer.parseInt(pageStr);
        }

        OrderDAO db = new OrderDAO();
        ArrayList<Order> orders = db.getOrderByPaging(account.getAccountId(), page, pageSize);

        //calculate total cost for each order
        for (int i = 0; i < orders.size(); i++) {
                ArrayList<OrderDetail> od = db.getOrderDetailsByOrderId(orders.get(i).getOrderId());
            int cost = 0;
            for (int j = 0; j < od.size(); j++) {
//                cost += od.get(j).getUnitPrice() * od.get(j).getQuantity();
                   cost += od.get(j).getQuantity();
            }
            orders.get(i).setCost(cost);
        }

        int totalOrderDetails = db.getTotalNumberOfOrderOfCustomer(account.getAccountId());
        int totalPages = totalOrderDetails / pageSize;
        if (totalPages % pageSize != 0) {
            totalPages += 1;
        }

        request.setAttribute("page", page);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("OrderDetails", orders);

        request.getRequestDispatcher("myOrders.jsp").forward(request, response);
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
        response.setContentType("text/html;charset=UTF-8");
        int orderID=Integer.parseInt(request.getParameter("id"));
        PrintWriter out = response.getWriter();
        ArrayList<OrderDetail> o = new OrderDAO().getOrderDetailsByOrderId(orderID);
        out.println("<div class=\"card-heading\">\n"
                + "                                        <h4 class=\"card-title\">Order #" + orderID + "</h4>\n"
                + "                                    </div>");
        for (OrderDetail orderDetail : o) {
            int total = orderDetail.getQuantity();
            out.println("<div class=\"order-info\">\n"
                    + "                                            <div class=\"order-item\">\n"
                    + "                                                <img class=\"item-img\" src=\"" + orderDetail.getProductImage() + "\" alt=\"\">\n"
                    + "                                                <div class=\"item-info\">\n"
                    + "                                                    <div class=\"item-title\">\n"
                    + "                                                        <p class=\"m-0\"><b>" + orderDetail.getName() + "</b></p>\n"
                    + "                                                        <small>" + orderDetail.getQuantity()+ "</small>\n"
                    + "                                                    </div>\n"
                    + "                                                    <div class=\"item-desc\">\n"
                    + "                                                        <p class=\"m-0\">" + orderDetail.getQuantity() + " cups</p>\n"
                    + "                                                    </div>\n"
                    + "                                                    <hr class=\"m-0\">\n"
                    + "                                                    <div class=\"item-price\">\n"
                    + "                                                        <p>" + total + "</p>\n"
                    + "                                                    </div>\n"
                    + "                                                </div>\n"
                    + "                                            </div>\n"
                    + "                                        </div>");
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
