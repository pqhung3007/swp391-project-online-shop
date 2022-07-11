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
    private String image;
    private String roleName;
    private Account account;

    public User() {
    }

    public User(int userID, String name, String phone, String address, String email, String image, String roleName) {
        this.userID = userID;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.email = email;
        this.image = image;
        this.roleName = roleName;
    }

    
    public User(int userID, String name, String phone, String address, String email, String image, Account account) {
        this.userID = userID;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.email = email;
        this.image = image;
        this.account = account;
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

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    
    

}
