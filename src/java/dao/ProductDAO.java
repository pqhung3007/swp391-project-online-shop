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
import java.util.logging.Level;
import java.util.logging.Logger;
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
            String sql = "SELECT [ProductID]\n"
                    + "      ,[ProductName]\n"
                    + "      ,[ProductImage]\n"
                    + "      ,[UnitPrice]\n"
                    + "      ,[Description]\n"
                    + "  FROM [Product]\n"
                    + "  WHERE [CategoryID] = ?";
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

    public Product getProductsByID(int pid) {
        Product p = null;
        try {
            String sql = "select * from Product p where p.ProductID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, pid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                p = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5));
            }
        } catch (SQLException ex) {
        }
        return p;
    }

//    public static void main(String[] args) {
//        Product p = new ProductDAO().getProductsByID(1);
//        System.out.println(p);
//    }

    public ArrayList<Product> getProductsByPaging(int page, int pageSize) {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String query = "select * from Product order by ProductID\n"
                    + "offset (?-1)*? row fetch next ? rows only";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, page);
            ps.setInt(2, pageSize);
            ps.setInt(3, pageSize);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product p = new Product();
                p.setProductId(rs.getInt("ProductID"));
                p.setName(rs.getString("ProductName"));
                p.setProductImage(rs.getString("ProductImage"));
                p.setPrice(rs.getInt("UnitPrice"));
                p.setDescription(rs.getString("Description"));
                list.add(p);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public int getProductQuantity() {
        try {
            String query = "select count(*) from Product";
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

}
