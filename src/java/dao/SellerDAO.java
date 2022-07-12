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
import model.Order;
import model.OrderDetail;
import model.Product;
import model.Seller;
import model.User;

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

    public ArrayList<Seller> getAllOrders(int sellerId) {
        ArrayList<Seller> sellerOrder = new ArrayList<>();
        try {
            String sql = "SELECT distinct\n"
                    + "	  o.OrderID, u.FullName as CustomerName, u.Phone,u.[Address] \n"
                    + "      ,CONVERT(date, OrderDate) as [DateOrder]\n"
                    + "	  ,CONVERT(VARCHAR(5),CAST(OrderDate AS TIME), 108) as OrderTime\n"
                    + "  FROM [OrderDetail] od join [Order] o on od.OrderID = o.OrderID\n"
                    + "       join Product p on od.ProductID = p.ProductID\n"
                    + "	   join Account a on o.customerID= a.AccountID\n"
                    + "	   join [User] u  on a.AccountID = u.AccountID\n"
                    + "\n"
                    + "	 \n"
                    + "where p.sellerID = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, sellerId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Seller s = new Seller();
                s.setOrderId(rs.getInt("OrderID"));
                s.setCustomerName(rs.getString("CustomerName"));
                s.setPhone(rs.getString("Phone"));
                s.setAddress(rs.getString("Address"));
                s.setOrderDate(rs.getDate("DateOrder"));
                s.setOrderTime(rs.getString("OrderTime"));

                sellerOrder.add(s);
            }
        } catch (SQLException ex) {
        }
        return sellerOrder;
    }

    public ArrayList<OrderDetail> getOrderDetail(int orderID, int accountId) {
        ArrayList<OrderDetail> OrderDetail = new ArrayList<>();
        try {
            String sql = "select OrderDetail.Quantity,Product.UnitPrice,Product.ProductName,u.FullName,u.[Address],Phone,ProductImage\n"
                    + "                    from [Order] inner join OrderDetail\n"
                    + "                    on [Order].OrderID=OrderDetail.OrderID\n"
                    + "                    inner join Product\n"
                    + "                    on OrderDetail.ProductID=Product.ProductID\n"
                    + "                   inner join Account a   on a.AccountID =[Order].customerID\n"
                    + "				   inner join [User] u on u.AccountID = a.AccountID\n"
                    + "                   where OrderDetail.OrderID= ? and Product.sellerID = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, orderID);
            ps.setInt(2, accountId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setName(rs.getString("FullName"));
                u.setAddress(rs.getString("Address"));
                u.setPhone(rs.getString("Phone"));

                Product p = new Product();
                p.setName(rs.getString("ProductName"));
                p.setPrice(rs.getInt("UnitPrice"));
                p.setProductImage(rs.getString("ProductImage"));

                OrderDetail od = new OrderDetail();
                od.setQuantity(rs.getInt("Quantity"));
                od.setProduct(p);
                od.setUser(u);

                OrderDetail.add(od);
            }
        } catch (SQLException ex) {
        }
        return OrderDetail;
    }
}
