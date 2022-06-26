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
import model.Product;
import model.Product_Review;

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

    public ArrayList<Product> getSearchResults(String keyword) {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "select * from Product where ProductName like ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, "%" + keyword + "%");
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
    
    public void insertProductReview(String productID, String reviewID, int aid) {
        try {
            String sql = "INSERT INTO [dbo].[Product Review]\n"
                    + "           ([ProductID]\n"
                    + "           ,[ReviewID]\n"
                    + "           ,[AccountID])\n"
                    + "     VALUES\n"
                    + "           (?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, productID);
            statement.setString(2, reviewID);
            statement.setInt(3, aid);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public List<Product_Review> getReviewByProductId(int productId){
        List<Product_Review> reviews = new ArrayList<>();
        try {
            String sql = "select * from [Product Review] where ProductID = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                reviews.add(new Product_Review(rs.getInt(1), rs.getInt(2)));
            }
        } catch (Exception e) {
        }
        return reviews;
    }
    
    public List<Product_Review> get1StarProduct(int productId){
        List<Product_Review> reviews = new ArrayList<>();
        try {
            String sql = "select * from [Product Review] where ProductID = ? and ReviewID = 1";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                reviews.add(new Product_Review(rs.getInt(1), rs.getInt(2)));
            }
        } catch (Exception e) {
        }
        return reviews;
    }
    
    public List<Product_Review> get2StarProduct(int productId){
        List<Product_Review> reviews = new ArrayList<>();
        try {
            String sql = "select * from [Product Review] where ProductID = ? and ReviewID = 2";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                reviews.add(new Product_Review(rs.getInt(1), rs.getInt(2)));
            }
        } catch (Exception e) {
        }
        return reviews;
    }
    
    public List<Product_Review> get3StarProduct(int productId){
        List<Product_Review> reviews = new ArrayList<>();
        try {
            String sql = "select * from [Product Review] where ProductID = ? and ReviewID = 3";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                reviews.add(new Product_Review(rs.getInt(1), rs.getInt(2)));
            }
        } catch (Exception e) {
        }
        return reviews;
    }
    
    public List<Product_Review> get4StarProduct(int productId){
        List<Product_Review> reviews = new ArrayList<>();
        try {
            String sql = "select * from [Product Review] where ProductID = ? and ReviewID = 4";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                reviews.add(new Product_Review(rs.getInt(1), rs.getInt(2)));
            }
        } catch (Exception e) {
        }
        return reviews;
    }
    
    public List<Product_Review> get5StarProduct(int productId){
        List<Product_Review> reviews = new ArrayList<>();
        try {
            String sql = "select * from [Product Review] where ProductID = ? and ReviewID = 5";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                reviews.add(new Product_Review(rs.getInt(1), rs.getInt(2)));
            }
        } catch (Exception e) {
        }
        return reviews;
    }
}
