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
import model.Role;
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
            String sql = "select * from Account where RoleID > 1";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                accounts.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getBoolean(5)));
            }
        } catch (Exception e) {
        }
        return accounts;
    }

    public void updateUser(String fullname, String phone, String address, String email, int AccountID) {
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

    public void updateProfile(String name, String password, int AccountID) {
        try {
            String sql = "UPDATE [dbo].[Account]\n"
                    + "   SET [Username] = ?\n"
                    + "      ,[Password] = ?    \n"
                    + " WHERE AccountID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
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

    public User getUserByID(int AccountID) {
        User u = null;
        try {
            String sql = "select u.*,r.RoleName from [User] u inner join Account a \n"
                    + "on u.AccountID = a.AccountID \n"
                    + "inner join Role r on a.RoleID = r.RoleID\n"
                    + "where a.AccountID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, AccountID);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                u = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getString(7));
            }
        } catch (Exception e) {
        }
        return u;
    }

    public List<Role> getAllRole(int choice) {
        List<Role> roles = new ArrayList<>();
        try {
            String sql = "select * from Role ";
            if (choice == 1) {
                sql += "where RoleID > 1";
            } else {
                sql += "where RoleID >2";
            }
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                roles.add(new Role(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return roles;
    }

    public List<Account> getUserByRole(int roleId) {
        List<Account> accounts = new ArrayList<>();
        try {
            String sql = "select * from Account where RoleID = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, roleId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                accounts.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getBoolean(5)));
            }
        } catch (Exception e) {
        }
        return accounts;
    }

    public static void main(String[] args) {
        User u = new AccountDAO().getUserProfileByID(2);
//        List<Role> roles = new AccountDAO().getAllRole();
//        for (Role role : roles) {
//            System.out.println(role);
//        }
        System.out.println(u);
    }

    public User getUserProfileByID(int id) {

        String sql = "select u.* , a.Username , a.[Password] from [User] u inner join Account a\n"
                + "on u.UserID = a.AccountID\n"
                + "where u.UserID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setName(rs.getString("FullName"));
                user.setAddress(rs.getString("Address"));
                user.setPhone(rs.getString("Phone"));
                user.setUserID(rs.getInt("UserID"));
                Account account = new Account();
                account.setUserName(rs.getString("Username"));
                user.setUsername(account);
                Account acc = new Account();
                acc.setPassWord(rs.getString("Password"));
                user.setPassword(acc);
                user.setEmail(rs.getString("Email"));
                user.setAccountID(rs.getInt("AccountID"));
                return user;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void createAccount(int roleID, String username, String password) {

        try {
            String sql = "INSERT INTO [Account]\n"
                    + "           ([Username]\n"
                    + "           ,[Password]\n"
                    + "           ,[RoleID]\n"
                    + "           ,[status])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,1)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            statement.setInt(3, roleID);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
