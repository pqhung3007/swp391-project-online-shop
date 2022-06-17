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

/**
 *
 * @author Admin
 */
public class AccountDAO extends DBContext {

    public Account getAccount(String userName, String passWord) {
        try {
            String sql = "SELECT [AccountID]\n"
                    + "		, [Username]\n"
                    + "		, [Password]\n"
                    + "		, [RoleID] \n"
                    + "		FROM [Account]\n"
                    + "		WHERE [Username] = ? AND [Password] = ?";
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
                accounts.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),rs.getBoolean(5)));
            }
        } catch (Exception e) {
        }
        return accounts;
    }

    public void updateAccount(String username, String password, int AccountID) {
        try {
            String sql = "UPDATE [dbo].[Account]\n"
                    + "   SET [Username] = ?\n"
                    + "      ,[Password] = ?\n"
                    + " WHERE AccountID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            stm.setInt(3, AccountID);
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
   
    
    public Account getAccountByID(int AccountID){
        Account a = null;
        try {
            String sql = "select * from Account where AccountID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, AccountID);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                a = new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),rs.getBoolean(5));
            }
        } catch (Exception e) {
        }
        return a;
    }
    
    public static void main(String[] args) {
        Account a = new AccountDAO().getAccount("vietlb", "123");
        System.out.println(a);
    }
}
