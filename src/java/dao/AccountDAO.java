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
import model.Account;
import model.User;

/**
 *
 * @author Admin
 */
public class AccountDAO extends DBContext {

    public Account getAccount(String userName, String passWord) {
        try {
            String sql = "select * from Account where Username = ? and Password = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, userName);
            stm.setString(2, passWord);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Account account = new Account();
                account.setAccountId(rs.getInt("AccountID"));
                account.setUserName(rs.getString("Username"));
                account.setPassWord(rs.getString("Password"));
                account.setRoleId(rs.getInt("RoleID"));
                account.setStatus(rs.getBoolean("Status"));
                return account;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Account> getAll() {
        List<Account> accounts = new ArrayList<>();
        try {
            String sql = "select * from Account";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                accounts.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getBoolean(5)));
            }
        } catch (Exception e) {
        }
        return accounts;
    }

    public void updateUser(String fullname, String phone,String address, String email, int AccountID) {
        try {
            String sql = "UPDATE [dbo].[User]\n"
                    + "   SET [FullName] = ?\n"
                    + "      ,[Phone] = ?\n"
                    + "      ,[Address] = ?\n"
                    + "      ,[Email] = ?\n"
                    + " WHERE AccountID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, fullname);
            stm.setString(2, phone);
            stm.setString(3, address);
            stm.setString(4, email);
            stm.setInt(5, AccountID);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updateStatusAccount(boolean status, int AccountID) {
        try {
            String sql = "UPDATE [dbo].[Account]\n"
                    + "   SET [Status] = ?\n"
                    + " WHERE AccountID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setBoolean(1, status);
            stm.setInt(2, AccountID);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public User getUserByID(int AccountID) {
        User u = null;
        try {
            String sql = "select * from [User] where AccountID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, AccountID);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                u = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6));
            }
        } catch (Exception e) {
        }
        return u;
    }

    public static void main(String[] args) {
        User u = new AccountDAO().getUserByID(1);
        System.out.println(u);
    }
}
