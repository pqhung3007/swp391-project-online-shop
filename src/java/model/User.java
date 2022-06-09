/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class User {
    private int userID;
    private String name;
    private String phone;
    private String address;
    private String email;
    private int accountID;
    
    public User() {
    }

    public User(int userID, String name, String phone, String address, String email, int accountID) {
        this.userID = userID;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.email = email;
        this.accountID = accountID;
    }

    

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "User{" + "userID=" + userID + ", accountID=" + accountID + ", name=" + name + ", phone=" + phone + ", address=" + address + ", email=" + email + '}';
    }
    
    
}
