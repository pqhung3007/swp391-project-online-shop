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

/**
 *
 * @author Admin
 */
public class ShipperDAO extends DBContext{
    public List<Seller> getAllShippedOrder()
    {     
        List<Seller> shippedOrder = new ArrayList<>();
        try {
            String sql = "SELECT distinct\n" +
"                    o.OrderID, u.FullName as CustomerName, u.Phone,u.[Address] \n" +
"                       ,CONVERT(date, OrderDate) as [DateOrder]\n" +
"                    ,CONVERT(VARCHAR(5),CAST(OrderDate AS TIME), 108) as OrderTime, o.status\n" +
"                   FROM [OrderDetail] od join [Order] o on od.OrderID = o.OrderID\n" +
"                        join Product p on od.ProductID = p.ProductID\n" +
"                     join Account a on o.customerID= a.AccountID\n" +
"                     join [User] u  on a.AccountID = u.AccountID\n" +
"      \n" +
"                    where o.status = 1";
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
                
                s.setStatus(rs.getBoolean("status"));
                shippedOrder.add(s);

            }
        } catch (SQLException ex) {
        }
        return shippedOrder;
    }
    
    public static void main(String[] args) {
        List<Seller> list = new ShipperDAO().getAllShippedOrder();
        for (Seller seller : list) {
            System.out.println(seller);
        }
    }
}
