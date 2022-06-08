/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Administrator
 */
public class DBContext {

    protected Connection connection;

    public DBContext() {
        try {
<<<<<<< HEAD
            String user = "LeViet";
            String pass = "123";
            String url = "jdbc:sqlserver://localhost\\SQLEXPRESS:1433;databaseName=OnlineShopSystem";
=======
            String user = "sa";
            String pass = "123";
            String url = "jdbc:sqlserver://DESKTOP-F3D7A1F\\SQLEXPRESS:1433;databaseName=OnlineShopSystem";
>>>>>>> 96f70b6f68d531910f29fbcf7e00e11ecd5dc02a
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static void main(String[] args) {
        DBContext dBContext = new DBContext();
        if (dBContext.connection != null) {
            System.out.println("ok");
        } else {
            System.out.println("fail");
        }
    }

}
