/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Le Viet
 */
public class Product {

    private int productId;
    private String name;
    private String productImage;
    private int price;
    private String description;
    private int quantity;
    private int categoryId;
    private int sellerId;

    public Product() {
    }

    public Product(int productId, String name, String productImage, int price, String description) {
        this.productId = productId;
        this.name = name;
        this.productImage = productImage;
        this.price = price;
        this.description = description;
    }

    public Product(int productId, String name, String productImage, int price, String description, int quantity, int categoryId, int sellerId) {
        this.productId = productId;
        this.name = name;
        this.productImage = productImage;
        this.price = price;
        this.description = description;
        this.quantity = quantity;
        this.categoryId = categoryId;
        this.sellerId = sellerId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getSellerId() {
        return sellerId;
    }

    public void setSellerId(int sellerId) {
        this.sellerId = sellerId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Product{" + "productId=" + productId + ", name=" + name + ", productImage=" + productImage + ", price=" + price + ", description=" + description + '}';
    }

}
