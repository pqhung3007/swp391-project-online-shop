/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author Admin
 */
public class Order {

    private int orderId;
    private int userId;
    private String orderDate;
    private String orderTime;
    private int shipperID;
    private int paymentID;
    private int numberOfProducts;
    private int cost;

    public Order() {
    }

    public Order(int orderId, int userId, int shipperID, int paymentID) {
        this.orderId = orderId;
        this.userId = userId;
        this.shipperID = shipperID;
        this.paymentID = paymentID;
    }

    public Order(int orderId, int userId, String orderDate, String orderTime, int shipperID, int paymentID) {
        this.orderId = orderId;
        this.userId = userId;
        this.orderDate = orderDate;
        this.orderTime = orderTime;
        this.shipperID = shipperID;
        this.paymentID = paymentID;
    }

    public int getCost() {
        return cost;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }

    public int getNumberOfProducts() {
        return numberOfProducts;
    }

    public void setNumberOfProducts(int numberOfProducts) {
        this.numberOfProducts = numberOfProducts;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getShipperID() {
        return shipperID;
    }

    public void setShipperID(int shipperID) {
        this.shipperID = shipperID;
    }

    public int getPaymentID() {
        return paymentID;
    }

    public void setPaymentID(int paymentID) {
        this.paymentID = paymentID;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public String getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(String orderTime) {
        this.orderTime = orderTime;
    }

    
}
