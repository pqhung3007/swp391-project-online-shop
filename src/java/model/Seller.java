/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author Administrator
 */
public class Seller {
    private String customerName;
    private String phone;
    private String address;
    private int orderId;
    private Date orderDate;
    private String orderTime;
    private boolean status;
    
    public Seller() {
    }

    public Seller(String customerName, String phone, String address, int orderId, Date orderDate, String orderTime) {
        this.customerName = customerName;
        this.phone = phone;
        this.address = address;
        this.orderId = orderId;
        this.orderDate = orderDate;
        this.orderTime = orderTime;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(String orderTime) {
        this.orderTime = orderTime;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Seller{" + "customerName=" + customerName + ", phone=" + phone + ", address=" + address + ", orderId=" + orderId + ", orderDate=" + orderDate + ", orderTime=" + orderTime + ", status=" + status + '}';
    }

   
   
}
