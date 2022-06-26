package model;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


/**
 *
 * @author Admin
 */
public class Product_Review {
    private int productId;
    private int reviewId;

    public Product_Review() {
    }

    public Product_Review(int productId, int reviewId) {
        this.productId = productId;
        this.reviewId = reviewId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getReviewId() {
        return reviewId;
    }

    public void setReviewId(int reviewId) {
        this.reviewId = reviewId;
    }

    @Override
    public String toString() {
        return "Product_Review{" + "productId=" + productId + ", reviewId=" + reviewId + '}';
    }
    
    
}
