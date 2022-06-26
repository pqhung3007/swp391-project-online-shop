/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Seller;
import model.Seller;

/**
 *
 * @author Administrator
 */
public class SellerDAO extends DBContext {

    public int getTotalProduct(int sellerId) {
        try {
            String query = "select count(*) as total from Product\n"
                    + "where sellerID = ?";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, sellerId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt("total");
            }
        } catch (Exception ex) {
            Logger.getLogger(SellerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public int getTotalMoney(int sellerId) {
        try {
            String query = "SELECT \n"
                    + "	  sum( p.UnitPrice * od.Quantity ) as total\n"
                    + "  FROM [OrderDetail] od join [Order] o on od.OrderID = o.OrderID\n"
                    + "       join Product p on od.ProductID = p.ProductID\n"
                    + "where p.sellerID = ?";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, sellerId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt("total");
            }
        } catch (Exception ex) {
            Logger.getLogger(SellerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    public ArrayList<Seller> getRecentOrders(int sellerId) {
        ArrayList<Seller> sellerOrder = new ArrayList<>();
        try {
            String sql = "SELECT\n"
                    + "	   u.FullName, u.Phone,u.[Address], o.OrderID, o.OrderDate\n"
                    + "  FROM [OrderDetail] od join [Order] o on od.OrderID = o.OrderID\n"
                    + "       join Product p on od.ProductID = p.ProductID\n"
                    + "	   join Account a on o.customerID = a.AccountID\n"
                    + "	   join [User] u  on a.AccountID = u.AccountID\n"
                    + "where p.sellerID = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, sellerId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Seller s = new Seller();
                s.setCustomerName(rs.getString("FullName"));
                s.setPhone(rs.getString("Phone"));
                s.setAddress(rs.getString("Address"));
                s.setOrderId(rs.getInt("OrderID"));
                s.setOrderDate(rs.getDate("OrderDate"));
                sellerOrder.add(s);
            }
        } catch (SQLException ex) {
        }
        return sellerOrder;
    }
    
}
