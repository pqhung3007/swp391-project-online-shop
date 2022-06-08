/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import com.oracle.wls.shaded.org.apache.bcel.generic.AALOAD;
import dao.CartDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;
import java.util.Map;
import model.Account;
import model.Cart;
import model.Order;
import model.OrderDetail;

/**
 *
 * @author Admin
 */
public class CheckBoughtController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

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
        response.sendRedirect("checkBought.jsp");
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
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String note = request.getParameter("note");

        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        //log
//        PrintWriter out = response.getWriter();
//        out.print(account.getAccountId());

        Date date = java.sql.Date.valueOf("1997-03-10");

        CartDAO db = new CartDAO();
        //get latest order to get orderID to add new order
        Order latestOrder = db.getLatestOrder();
        //insert order
        Order o = new Order(latestOrder.getOrderId() + 1, account.getAccountId(), date, date, 2, 2);
        db.insertOrder(o);
        //inser order details
        Map<Integer, Cart> carts = (Map<Integer, Cart>) session.getAttribute("carts");
        for (Map.Entry<Integer, Cart> c : carts.entrySet()) {
            Cart cart = c.getValue();
            OrderDetail od = new OrderDetail(o.getOrderId(), cart.getProduct().getProductId(), cart.getQuantity(), cart.getProduct().getPrice(), null);
            db.insertOrderDetail(od);
        }
        response.sendRedirect("home");
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
