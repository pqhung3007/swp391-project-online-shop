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
import model.Product;

/**
 *
 * @author Administrator
 */
public class ProductDAO extends DBContext {
    
    public ArrayList<Product> getAllProducts() {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT [ProductID]\n"
                    + "      ,[ProductName]\n"
                    + "      ,[ProductImage]\n"
                    + "      ,[UnitPrice]\n"
                    + "      ,[Description]\n"
                    + "  FROM [Product] \n";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setProductId(rs.getInt("ProductID"));
                p.setName(rs.getString("ProductName"));
                p.setProductImage(rs.getString("ProductImage"));
                p.setPrice(rs.getInt("UnitPrice"));
                p.setDescription(rs.getString("Description"));
                products.add(p);
            }
        } catch (SQLException ex) {
        }
        return products;
    }
    
    public ArrayList<Product> getProductsByCategory(int cid) {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT [ProductID]\n" +
                    "      ,[ProductName]\n" +
                    "      ,[ProductImage]\n" +
                    "      ,[UnitPrice]\n" +
                    "      ,[Description]\n" +
                    "  FROM [Product]\n" +
                    "  WHERE [CategoryID] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, cid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setProductId(rs.getInt("ProductID"));
                p.setName(rs.getString("ProductName"));
                p.setProductImage(rs.getString("ProductImage"));
                p.setPrice(rs.getInt("UnitPrice"));
                p.setDescription(rs.getString("Description"));
                products.add(p);
            }
        } catch (SQLException ex) {
        }
        return products;
    }
}
