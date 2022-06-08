/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Map;
import model.Cart;

/**
 *
 * @author Le Viet
 */
public class UpdateQuantityController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
     String action = request.getParameter("action");
     int id = Integer.parseInt(request.getParameter("id"));
     HttpSession session = request.getSession();
      Map<Integer,Cart> carts = (Map<Integer,Cart>) session.getAttribute("carts");
     
      if(action!=null&&id>=1){
          if(action.equals("inc")){
              
                  if(carts.containsKey(id)){
                      int quantity =  carts.get(id).getQuantity();
                      quantity++;
                      carts.get(id).setQuantity(quantity);
                       
                      response.sendRedirect("cart.jsp");
                  }
                  
              
          }
          if(action.equals("dec")){
              
                  if(carts.containsKey(id) && carts.get(id).getQuantity()>1){
                      int quantity =  carts.get(id).getQuantity();
                      quantity--;
                      carts.get(id).setQuantity(quantity);
                      
                      response.sendRedirect("cart.jsp");
                  }else{
                      response.sendRedirect("cart.jsp");
                  }
                  
              
          }
                      int totalMoney =0;
                        for (Map.Entry<Integer, Cart> c : carts.entrySet()) {
                             Integer pid = c.getKey();
                            Cart cart = c.getValue();
                            totalMoney += cart.getQuantity()* cart.getProduct().getPrice();
                        }
                       request.getSession().setAttribute("totalPrice", totalMoney);
        
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
