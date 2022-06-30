
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
                Order o = new Order(rs.getInt("OrderID"), rs.getInt("UserID"), rs.getInt("ShipperID"), rs.getInt("PaymentID"));
                return o;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void insertOrder(Order o) {
        try {
            String sql = "INSERT INTO [Order]\n"
                    + "     VALUES\n"
                    + "     (?\n"
                    + "     ,?\n"
                    + "     ,?\n"
                    + "     ,?\n"
                    + "     ,?\n"
                    + "     ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, o.getOrderId());
            statement.setInt(2, o.getUserId());
            statement.setString(3, "getDate()");
            statement.setString(4, "getDate()");
            statement.setInt(5, o.getShipperID());
            statement.setInt(6, o.getPaymentID());
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
                    + "     ,?\n"
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

    public User getUserbyAccountID(int aid) {

        try {
            String sql = "select u.* from [User] u where u.AccountID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, aid);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                User user = new User();
                user.setName(rs.getString("FullName"));
                user.setAddress(rs.getString("Address"));
                user.setPhone(rs.getString("Phone"));
                user.setUserID(rs.getInt("UserID"));
//                Account account = new Account();
//                account.setUserName(rs.getString("Username"));
//                user.setUsername(account);
//                Account acc = new Account();
//                acc.setPassWord(rs.getString("Password"));
//                user.setPassword(acc);
                user.setEmail(rs.getString("Email"));
                user.setAccountID(rs.getInt("AccountID"));
                return user;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public static void main(String[] args) {
        User user = new CartDAO().getUserbyAccountID(1);
        System.out.println(user);
    }
}
