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
import model.Account;

/**
 *
 * @author Admin
 */
public class AccountDAO extends DBContext {

    public Account getAccount(String userName) {
        try {
            String sql = "SELECT [AccountID]\n"
                    + "		, [Username]\n"
                    + "		, [Password]\n"
                    + "		, [RoleID] \n"
                    + "		FROM [Account]\n"
                    + "		WHERE [Username] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, userName);
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

    public void insertAccount(Account a) {
        try {
            String sql = "INSERT INTO Account\n"
                    + "     VALUES\n"
                    + "     (?\n"
                    + "     ,?\n"
                    + "     ,?\n"
                    + "     ,?\n"
                    + "     ,1)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, a.getAccountId());
            statement.setString(2, a.getUserName());
            statement.setString(3, a.getPassWord());
            statement.setInt(4, a.getRoleId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Account getLatestAccount() {
        try {
            String sql = "SELECT TOP 1 *\n"
                    + "FROM [Account]\n"
                    + "ORDER BY AccountID DESC";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                Account a = new Account(rs.getInt("AccountID"), rs.getString("UserName"), rs.getString("Password"), rs.getInt("RoleID"));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void changePassword(String email, String password) {
        try {
            String sql = "with t as (\n"
                    + "select  Account.AccountID, [Password], Email\n"
                    + "from Account inner join [User] on Account.AccountID=[User].UserID\n"
                    + ")\n"
                    + "UPDATE t\n"
                    + "SET Password=?\n"
                    + "WHERE  t.Email=?;";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, password);
            statement.setString(2, email);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
