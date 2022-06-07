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
import model.Cart;
import model.Product;

/**
 *
 * @author Le Viet
 */
public class CartController extends HttpServlet {
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
         int productID = Integer.parseInt(request.getParameter("productID"));
         int quantity = Integer.parseInt(request.getParameter("quantity"));
         
      // map with key = productID value: Cart (Model)
        HttpSession session = request.getSession();
        Map<Integer,Cart> carts = (Map<Integer,Cart>) session.getAttribute("carts");
        if(carts==null){
            carts = new LinkedHashMap<>();// Products added will have order
            
        }
        //select product with productID
       
        //TH1: CART contain productID( The product already exists in the cart)
         if(carts.containsKey(productID)){
             int oldQuantity = carts.get(productID).getQuantity();// old quantity in the carts
             carts.get(productID).setQuantity(oldQuantity+ quantity);
         }
         //TH2:The product is not in the cart
         else{
             
             ProductDAO p = new ProductDAO();
           Product product = p.getProductsByID(productID);
             Cart c = new Cart();
             c.setQuantity(quantity);
             c.setProduct(product);
             carts.put(productID,c);
         }
         //add product to section
         session.setAttribute("carts", carts);
//         String urlhistory = (String) session.getAttribute("urlhistory");
//         if(urlhistory ==null){
//             urlhistory = "product";
//         }
         request.getRequestDispatcher("cart.jsp").forward(request, response);
    } 

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
