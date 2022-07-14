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
    private boolean status;

    public Account() {
    }

    public Account(int accountId, String userName, String passWord, int roleId, boolean status) {
        this.accountId = accountId;
        this.userName = userName;
        this.passWord = passWord;
        this.roleId = roleId;
        this.status = status;
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

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

   

    @Override
    public String toString() {
        return "Account{" + "accountId=" + accountId + ", userName=" + userName + ", passWord=" + passWord + ", roleId=" + roleId + ", status=" + status + '}';
    }

}
