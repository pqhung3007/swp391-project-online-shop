/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dao.SellerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.OrderDetail;

/**
 *
 * @author Admin
 */
public class LoadOrderController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int orderID=Integer.parseInt(request.getParameter("id"));
        ArrayList<OrderDetail> orderDetail=new SellerDAO().getOrderDetail(orderID);
        PrintWriter out =response.getWriter();
        
        out.println("<div class=\"customer-info\">\n" +
"                                <h2>"+orderDetail.get(0).getUser().getName()+"</h2>\n" +
"                                <h5>"+orderDetail.get(0).getUser().getPhone()+"</h5>\n" +
"                                <h5>"+orderDetail.get(0).getUser().getAddress()+"</h5>\n" +
"                            </div>");
        
        for (OrderDetail od : orderDetail) {
            out.println("<div class=\"detail-info\">\n" +
"                                    <div class=\"detail-photo\">\n" +
"                                        <img src=\""+od.getProduct().getProductImage()+"\" alt=\"\">\n" +
"                                    </div>\n" +
"                                    <div class=\"detail-text\">\n" +
"                                        <p class=\"text-title\">\n" +
"                                            <b>"+od.getProduct().getName()+"</b>\n" +
"                                            <small>"+od.getProduct().getPrice()+"</small>\n" +
"                                        </p>\n" +
"                                        <small class=\"text-muted\">"+od.getQuantity()+" cups</small>\n" +
"                                    </div>\n" +
"                                </div>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
