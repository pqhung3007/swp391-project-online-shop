/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.ProductDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.LinkedHashMap;
import java.util.Map;
import model.Account;
import model.Cart;
import model.Product;

/**
 *
 * @author Le Viet
 */
public class CartController extends HttpServlet {

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
        String action = request.getParameter("action");
        int productID = 0;
        try {
            productID = Integer.parseInt(request.getParameter("pid"));
        } catch (NumberFormatException e) {
            request.getRequestDispatcher("cart.jsp").forward(request, response);
        }
        // map with key = productID value: Cart (Model)
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        if(account == null){
            response.sendRedirect("home");
        }else{
        Map<Integer, Cart> carts = (Map<Integer, Cart>) session.getAttribute("carts");
        session.removeAttribute("carts");
        if (carts == null) {
            carts = new LinkedHashMap<>();// Products added will have order

        }

        //select product with productID

        //TH1: CART contain productID( The product already exists in the cart)
        if (carts.containsKey(productID)) {
            int oldQuantity = carts.get(productID).getQuantity();// old quantity in the carts
            carts.get(productID).setQuantity(oldQuantity + 1);
        } //TH2:The product is not in the cart
        else {

            ProductDAO p = new ProductDAO();
            Product product = p.getProductsByID(productID);
            Cart c = new Cart();
            c.setQuantity(1);
            c.setProduct(product);
            carts.put(productID, c);
        }
        int totalMoney = 0;
        for (Map.Entry<Integer, Cart> c : carts.entrySet()) {
            Integer pid = c.getKey();
            Cart cart = c.getValue();
            totalMoney += cart.getQuantity() * cart.getProduct().getPrice();
        }

        session.setAttribute("totalPrice", totalMoney);

        //add product to section
        session.setAttribute("carts", carts);

        if (action.equals("gocart")) {
            request.getRequestDispatcher("cart.jsp").forward(request, response);
        } else if (action.equals("continue")) {
            
            response.sendRedirect("products");
        }

    }
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
        processRequest(request, response);
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
        processRequest(request, response);
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
