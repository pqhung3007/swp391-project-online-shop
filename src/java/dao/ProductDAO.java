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
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
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
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cid);
            ResultSet rs = ps.executeQuery();
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
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, pid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                p = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getInt(6));
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

    public ArrayList<Product> pagingProductByCategory(int categoryId,int page, int pageSize) {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String query = "select * from Product p where CategoryID = ?\n"
                    + "order by ProductID\n"
                    + "offset (?-1)*? row fetch next ? rows only";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, categoryId);
            ps.setInt(2, page);
            ps.setInt(3, pageSize);
            ps.setInt(4, pageSize);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product p = new Product();
                p.setProductId(rs.getInt("ProductID"));
                p.setName(rs.getString("ProductName"));
                p.setProductImage(rs.getString("ProductImage"));
                p.setPrice(rs.getInt("UnitPrice"));
                p.setDescription(rs.getString("Description"));
                p.setCategoryId(rs.getInt("CategoryID"));
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
    
    public int getProductQuantityByCategory(int categoryID) {
        try {
            String query = "select count(*) from Product where CategoryID = ?";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, categoryID);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public int getProductQuantityOfSeller(int sellerID) {
        try {
            String query = "select count(*) from Product where sellerID = ?";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, sellerID);
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
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + keyword + "%");
            ResultSet rs = ps.executeQuery();
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

    public boolean checkExistId(int aid, int pid) {
        try {
            String sql = "select * from [Product Review] where AccountID = ? and ProductID = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, aid);
            ps.setInt(2, pid);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }

    public void insertProductReview(int productID, int reviewID, int aid) {
        String sql = "";
        if (!checkExistId(aid, productID)) {
            try {
                sql = "INSERT INTO [dbo].[Product Review]\n"
                        + "           ([ProductID]\n"
                        + "           ,[ReviewID]\n"
                        + "           ,[AccountID])\n"
                        + "     VALUES\n"
                        + "           (?,?,?)";
                PreparedStatement statement = connection.prepareStatement(sql);
                statement.setInt(1, productID);
                statement.setInt(2, reviewID);
                statement.setInt(3, aid);
                statement.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            sql = "UPDATE [dbo].[Product Review] SET [ReviewID] = " + reviewID + " WHERE AccountID = " + aid + " AND ProductID = " + productID;
            try {
                PreparedStatement ps = connection.prepareStatement(sql);
                ps.executeUpdate();
            } catch (Exception e) {
            }
        }
    }

    public List<Product_Review> getReviewByProductId(int productId) {
        List<Product_Review> reviews = new ArrayList<>();
        try {
            String sql = "select * from [Product Review] where ProductID = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                reviews.add(new Product_Review(rs.getInt(1), rs.getInt(2)));
            }
        } catch (Exception e) {
        }
        return reviews;
    }

    public List<Product_Review> get1StarProduct(int productId) {
        List<Product_Review> reviews = new ArrayList<>();
        try {
            String sql = "select * from [Product Review] where ProductID = ? and ReviewID = 1";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                reviews.add(new Product_Review(rs.getInt(1), rs.getInt(2)));
            }
        } catch (Exception e) {
        }
        return reviews;
    }

    public List<Product_Review> get2StarProduct(int productId) {
        List<Product_Review> reviews = new ArrayList<>();
        try {
            String sql = "select * from [Product Review] where ProductID = ? and ReviewID = 2";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                reviews.add(new Product_Review(rs.getInt(1), rs.getInt(2)));
            }
        } catch (Exception e) {
        }
        return reviews;
    }

    public List<Product_Review> get3StarProduct(int productId) {
        List<Product_Review> reviews = new ArrayList<>();
        try {
            String sql = "select * from [Product Review] where ProductID = ? and ReviewID = 3";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                reviews.add(new Product_Review(rs.getInt(1), rs.getInt(2)));
            }
        } catch (Exception e) {
        }
        return reviews;
    }

    public List<Product_Review> get4StarProduct(int productId) {
        List<Product_Review> reviews = new ArrayList<>();
        try {
            String sql = "select * from [Product Review] where ProductID = ? and ReviewID = 4";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                reviews.add(new Product_Review(rs.getInt(1), rs.getInt(2)));
            }
        } catch (Exception e) {
        }
        return reviews;
    }

    public List<Product_Review> get5StarProduct(int productId) {
        List<Product_Review> reviews = new ArrayList<>();
        try {
            String sql = "select * from [Product Review] where ProductID = ? and ReviewID = 5";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                reviews.add(new Product_Review(rs.getInt(1), rs.getInt(2)));
            }
        } catch (Exception e) {
        }
        return reviews;
    }

    public void insertProduct(String name, String image, int price, int categoryId, String description, int sellerId) {
        try {
            String sql = "INSERT INTO Product\n"
                    + "           ([ProductName]\n"
                    + "           ,[ProductImage]\n"
                    + "           ,[UnitPrice]\n"
                    + "           ,[Description]\n"
                    + "           ,[CategoryID]\n"
                    + "           ,[sellerID])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setInt(3, price);
            ps.setString(4, description);
            ps.setInt(5, categoryId);
            ps.setInt(6, sellerId);

            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Product> getProductsBySeller(int sellerID) {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT [ProductID]"
                    + ",[ProductName]"
                    + ",[ProductImage]"
                    + ",[UnitPrice]"
                    + ",[Description]"
                    + ", [CategoryID]"
                    + ", [Quantity]"
                    + " FROM [Product] WHERE [sellerID] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, sellerID);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setProductId(rs.getInt("ProductID"));
                p.setName(rs.getString("ProductName"));
                p.setProductImage(rs.getString("ProductImage"));
                p.setPrice(rs.getInt("UnitPrice"));
                p.setDescription(rs.getString("Description"));
                p.setCategoryId(rs.getInt("CategoryID"));
                p.setQuantity(rs.getInt("Quantity"));
                p.setSellerId(sellerID);
                products.add(p);
            }
        } catch (SQLException ex) {
        }
        return products;
    }

    public ArrayList<Product> getTop4ProductSold(int sellerID) {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT TOP 4 o.ProductID, p.ProductName, p.ProductImage, SUM(o.Quantity) AS [Ordered]"
                    + " FROM OrderDetail o JOIN Product p"
                    + " ON o.ProductID = p.ProductID"
                    + " WHERE p.sellerID = ?"
                    + " GROUP BY o.ProductID, p.ProductName, p.ProductImage"
                    + " ORDER BY [Ordered] DESC";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, sellerID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setProductId(rs.getInt("ProductID"));
                p.setName(rs.getString("ProductName"));
                p.setProductImage(rs.getString("ProductImage"));
                p.setQuantity(rs.getInt("Ordered"));
                products.add(p);
            }
        } catch (SQLException ex) {
        }
        return products;
    }

    public void updateProduct(Product p) {
        try {
            String sql = "UPDATE Product SET "
                    + "[ProductName] = ?,\n"
                    + "[ProductImage] = ?,\n"
                    + "[UnitPrice] = ?,\n"
                    + "[Description] = ?,\n"
                    + "[CategoryID] = ?\n"
                    + "WHERE [ProductID] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, p.getName());
            statement.setString(2, p.getProductImage());
            statement.setInt(3, p.getPrice());
            statement.setString(4, p.getDescription());
            statement.setInt(5, p.getCategoryId());
            statement.setInt(6, p.getProductId());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Product> getProductsBySellerPaging(int sellerID, int page, int pageSize) {
        ArrayList<Product> products = new ArrayList<>();
        try {
            String sql = "select *"
                    + " from Product"
                    + " WHERE sellerID = ?"
                    + " order by ProductID"
                    + " offset (?-1)*? row fetch next ? rows only";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, sellerID);
            statement.setInt(2, page);
            statement.setInt(3, pageSize);
            statement.setInt(4, pageSize);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setProductId(rs.getInt("ProductID"));
                p.setName(rs.getString("ProductName"));
                p.setProductImage(rs.getString("ProductImage"));
                p.setPrice(rs.getInt("UnitPrice"));
                p.setDescription(rs.getString("Description"));
                p.setCategoryId(rs.getInt("CategoryID"));
                p.setQuantity(rs.getInt("Quantity"));
                p.setSellerId(sellerID);
                products.add(p);
            }
        } catch (SQLException ex) {
        }
        return products;
    }

}
