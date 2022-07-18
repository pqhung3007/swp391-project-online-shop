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
import model.Order;
import model.Seller;
import model.ShipperOrder;

/**
 *
 * @author Admin
 */
public class ShipperDAO extends DBContext {

    public List<Seller> getAllShippedOrder() {
        List<Seller> shippedOrder = new ArrayList<>();
        try {
            String sql = "SELECT distinct\n"
                    + "                    o.OrderID, u.FullName as CustomerName, u.Phone,u.[Address] \n"
                    + "                   ,CONVERT(date, OrderDate) as [DateOrder]\n"
                    + "                    ,CONVERT(VARCHAR(5),CAST(OrderDate AS TIME), 108) as OrderTime, o.status\n"
                    + "                    FROM [OrderDetail] od join [Order] o on od.OrderID = o.OrderID\n"
                    + "                     join Product p on od.ProductID = p.ProductID\n"
                    + "                     join Account a on o.customerID= a.AccountID\n"
                    + "                 join [User] u  on a.AccountID = u.AccountID\n"
                    + "                  where o.status = 3 or o.status = 4";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Seller s = new Seller();
                s.setOrderId(rs.getInt("OrderID"));
                s.setCustomerName(rs.getString("CustomerName"));
                s.setPhone(rs.getString("Phone"));
                s.setAddress(rs.getString("Address"));
                s.setOrderDate(rs.getDate("DateOrder"));
                s.setOrderTime(rs.getString("OrderTime"));
                s.setStatus(rs.getInt("status"));
                shippedOrder.add(s);

            }
        } catch (SQLException ex) {
        }
        return shippedOrder;
    }

    public void updateStatusOrder(int status, int orderId) {
        try {
            String sql = "UPDATE [dbo].[Order]\n"
                    + "   SET [status] = ?\n"
                    + " WHERE OrderID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, status);
            stm.setInt(2, orderId);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<ShipperOrder> getShippedOrderDetail(int orderId) {
        List<ShipperOrder> orderDetail = new ArrayList<>();
        try {
            String sql = "select p.ProductName,od.Quantity,p.UnitPrice,u.FullName,u.[Address], u.Phone\n"
                    + "       from [Order] inner join OrderDetail od\n"
                    + "       on [Order].OrderID = od.OrderID\n"
                    + "       inner join Product p\n"
                    + "       on od.ProductID = p.ProductID\n"
                    + "      inner join Account a on a.AccountID = p.sellerID\n"
                    + "	  join [User] u on u.AccountID = a.AccountID\n"
                    + "      where od.OrderID = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ShipperOrder s = new ShipperOrder();
                s.setProductName(rs.getString("ProductName"));
                s.setSellerName(rs.getString("FullName"));
                s.setQuantity(rs.getInt("Quantity"));
                s.setPrice(rs.getInt("UnitPrice"));
                s.setAddress(rs.getString("Address"));
                s.setPhone(rs.getString("Phone"));
                orderDetail.add(s);

            }
        } catch (SQLException ex) {
        }
        return orderDetail;
    }

    public static void main(String[] args) {
        new ShipperDAO().updateStatusOrder(1, 1);
    }
}
