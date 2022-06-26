/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Account {

    private int accountId;
    private String userName;
    private String passWord;
    private int roleId;

    public Account() {
    }

    public Account(int accountId, String userName, String passWord, int roleId) {
        this.accountId = accountId;
        this.userName = userName;
        this.passWord = passWord;
        this.roleId = roleId;
    }
    
    public Account(String userName, String passWord, int roleId) {
        this.userName = userName;
        this.passWord = passWord;
        this.roleId = roleId;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

}
