
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
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Order;
import model.OrderDetail;
import model.Payment;
import model.User;

/**
 *
 * @author Admin
 */
public class CartDAO extends DBContext {

    public Order getLatestOrder() {
        try {
            String sql = "SELECT TOP 1 *\n"
                    + "FROM [Order]\n"
                    + "ORDER BY OrderID DESC";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                Order o = new Order(rs.getInt("OrderID"), rs.getInt("customerID"), rs.getInt("ShipperID"),
                        rs.getInt("PaymentID"));
                return o;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void insertOrder(Order o) {
        try {
            String sql = "INSERT INTO [Order]"
                    + " (customerID, OrderDate, ShipperID, PaymentID, status)"
                    + " VALUES"
                    + " (?,"
                    + " getDate(),"
                    + " ?,"
                    + " ?,"
                    + " ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, o.getUserId());
            statement.setInt(2, o.getShipperID());
            statement.setInt(3, o.getPaymentID());
            statement.setInt(4, o.getStatus());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insertOrderDetail(OrderDetail o) {
        try {
            String sql = "INSERT INTO [OrderDetail]\n"
                    + "     VALUES\n"
                    + "     (?\n"
                    + "     ,?\n"
                    + "     ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, o.getOrderId());
            statement.setInt(2, o.getProductId());
            statement.setInt(3, o.getQuantity());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<Payment> getAllPayment() {
        List<Payment> list = new ArrayList<>();
        try {
            String sql = "select * from Payment";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                list.add(new Payment(rs.getInt(1), rs.getString(2)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

}
