/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.PreparedStatement;

/**
 *
 * @author Admin
 */
public class OrderDAO extends DBContext{
    public void deleteAllOrderDetail(){
        try {
            String sql = "Delete from [dbo].[OrderDetail]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void deleteOrderbyUserID(){
        try {
            String sql = "Delete from [dbo].[Order]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
