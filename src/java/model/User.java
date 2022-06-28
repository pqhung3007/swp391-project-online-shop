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
    private String roleName;
    private Account username;
    private Account password;

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
    
    public User(int userID, String name, String phone, String address, String email, int accountID, String roleName) {
        this.userID = userID;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.email = email;
        this.accountID = accountID;
        this.roleName = roleName;
    }

    public User(int userID, String name, String phone, String address, String email, int accountID, Account username, Account password) {
        this.userID = userID;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.email = email;
        this.accountID = accountID;
        this.username = username;
        this.password = password;
    }

    public int getUserID() {
        return userID;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public void setUserID(int userID) {
        this.userID = userID;
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

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public Account getUsername() {
        return username;
    }

    public void setUsername(Account username) {
        this.username = username;
    }

    public Account getPassword() {
        return password;
    }

    public void setPassword(Account password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" + "userID=" + userID + ", name=" + name + ", phone=" + phone + ", address=" + address + ", email=" + email + ", accountID=" + accountID + ", username=" + username + ", password=" + password + '}';
    }
    
    
    
   
    
    
}
