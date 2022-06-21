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

   
    //lấy quyền của tài khoản đăng nhập
     public int getPermission(String username, String url)
    {
        try {
            String sql = "SELECT count(*) as total FROM  \n" +
"                    Account a inner join [Role] r on a.RoleID = r.RoleID\n" +
"                    inner join Role_Feature gf on gf.rid = r.RoleID\n" +
"                    inner join Feature f on f.fid = gf.fid\n" +
"                    where a.userName = ? and f.url = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, url);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                return rs.getInt("total");
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
}
