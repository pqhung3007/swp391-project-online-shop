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

/**
 *
 * @author Admin
 */
public class OrderDAO extends DBContext {

    public void deleteAllOrderDetail() {
        try {
            String sql = "Delete from [dbo].[OrderDetail]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteOrderbyUserID() {
        try {
            String sql = "Delete from [dbo].[Order]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public ArrayList<OrderDetail> getOrderDetailsByOrderId(int orderId) {
        ArrayList<OrderDetail> orderDetails = new ArrayList<>();
        try {
            String sql = "SELECT *"
                    + " FROM [OrderDetail] JOIN [Product]"
                    + " ON product.ProductID = OrderDetail.ProductID"
                    + " JOIN [Order]"
                    + " ON [Order].OrderID = OrderDetail.OrderID"
                    + " WHERE [Order].OrderID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, orderId);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                OrderDetail o = new OrderDetail();
                o.setOrderId(rs.getInt("OrderID"));
                o.setProductId(rs.getInt("ProductID"));
                o.setQuantity(rs.getInt("Quantity"));
                o.setName(rs.getString("ProductName"));
                o.setProductImage(rs.getString("ProductImage"));
//                o.setUnitPrice(rs.getInt("UnitPrice"));
                orderDetails.add(o);
            }
        } catch (SQLException ex) {
        }
        return orderDetails;
    }

    public ArrayList<Order> getOrderByPaging(int customerId, int page, int pageSize) {
        ArrayList<Order> orders = new ArrayList<>();
        try {
            String query = "SELECT [Order].OrderID, [Order].OrderDate "
                    + "FROM [Order] JOIN [OrderDetail] "
                    + "ON [Order].OrderID = [OrderDetail].OrderID "
                    + "JOIN Product "
                    + "ON OrderDetail.ProductID = Product.ProductID "
                    + "WHERE customerID = ? "
                    + "GROUP BY [Order].orderID, [Order].OrderDate "
                    + "ORDER BY [Order].orderID "
                    + "offset (?-1)*? row fetch next ? rows only ";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, customerId);
            ps.setInt(2, page);
            ps.setInt(3, pageSize);
            ps.setInt(4, pageSize);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order o = new Order();
                o.setOrderId(rs.getInt("OrderID"));
//                o.setOrderDate(rs.getDate("OrderDate"));
                o.setNumberOfProducts(getNumberOfProductOfOrderById(o.getOrderId()));
                orders.add(o);
            }
        } catch (Exception ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orders;
    }

    public int getTotalNumberOfOrderOfCustomer(int accountId) {
        try {
            String query = "SELECT count(*) FROM [Order] WHERE customerID = ?";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, accountId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public int getNumberOfProductOfOrderById(int orderId) {
        try {
            String query = "SELECT sum(Quantity) FROM [OrderDetail] WHERE OrderID = ?";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, orderId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public static void main(String[] args) {
        OrderDAO db = new OrderDAO();
        System.out.println(db.getTotalNumberOfOrderOfCustomer(10));
        System.out.println(db.getNumberOfProductOfOrderById(4));
    }

}
