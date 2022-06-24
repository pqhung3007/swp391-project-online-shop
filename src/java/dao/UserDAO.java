/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author Admin
 */
public class UserDAO extends DBContext {

    public void insertUser(User u) {
        try {
            String sql = "INSERT INTO [User]\n"
                    + "     VALUES\n"
                    + "     (?\n"
                    + "     ,?\n"
                    + "     ,?\n"
                    + "     ,?\n"
                    + "     ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, u.getName());
            statement.setString(2, u.getPhone());
            statement.setString(3, u.getAddress());
            statement.setString(4, u.getEmail());
            statement.setInt(5, u.getAccountID());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

//    public User getLatestUser() {
//        try {
//            String sql = "SELECT TOP 1 *\n"
//                    + "FROM [User]\n"
//                    + "ORDER BY UserID DESC";
//            PreparedStatement statement = connection.prepareStatement(sql);
//            ResultSet rs = statement.executeQuery();
//            if (rs.next()) {
//                User u = new User(rs.getInt("UserID"), rs.getString("FullName"), rs.getString("Phone"), rs.getString("Address"), rs.getString("Email"), rs.getInt("AccountID"));
//                return u;
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return null;
//    }
}
