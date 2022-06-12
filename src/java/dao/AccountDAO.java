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

    public Account getAccount(String userName, String passWord) {
        try {
            String sql = "SELECT [AccountID]\n"
                    + "		, [Username]\n"
                    + "		, [Passwword]\n"
                    + "		, [RoleID] \n"
                    + "		FROM [Account]\n"
                    + "		WHERE [Username] = ? AND [Passwword] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, userName);
            stm.setString(2, passWord);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Account account = new Account();
                account.setAccountId(rs.getInt("AccountID"));
                account.setUserName(rs.getString("Username"));
                account.setPassWord(rs.getString("Passwword"));
                account.setRoleId(rs.getInt("RoleID"));
                return account;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
