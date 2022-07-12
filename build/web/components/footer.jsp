<%-- 
    Document   : footer
    Created on : 04-Jun-2022, 21:41:38
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!-- Footer Start -->
        <div
            class="container-fluid bg-dark text-light footer my-6 mb-0 py-5 wow fadeIn"
            data-wow-delay="0.1s"
            >
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-4 col-md-6">
                        <h4 class="text-light mb-4">Office Address</h4>
                        <p class="mb-2">
                            <i class="fa fa-map-marker-alt me-3"></i>C209, Delta Block, FPT
                            University, Hoa Lac, Viet Nam
                        </p>
                        <p class="mb-2">
                            <i class="fa fa-phone-alt me-3"></i>+012 345 67890
                        </p>
                        <p class="mb-2">
                            <i class="fa fa-envelope me-3"></i>coffee@maker.com
                        </p>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <h4 class="text-light mb-4">Quick Links</h4>
                        <a class="btn btn-link" href="#about">About Us</a>
                        <a class="btn btn-link" href="products">Our Products</a>
                        <c:if test="${sessionScope.account != null}">
                            <a class="btn btn-link" href="profile?aid=${account.accountId}">Your Account</a>
                        </c:if>
                    </div>
                    <div class="col-lg-4 col-md-12">
                        <h4 class="text-light mb-4">Photo Gallery</h4>
                        <div class="row g-2">
                            <div class="col-4">
                                <img
                                    class="img-fluid bg-light rounded p-1"
                                    src="img/product-1.jpg"
                                    alt="Image"
                                    />
                            </div>
                            <div class="col-4">
                                <img
                                    class="img-fluid bg-light rounded p-1"
                                    src="img/product-2.jpg"
                                    alt="Image"
                                    />
                            </div>
                            <div class="col-4">
                                <img
                                    class="img-fluid bg-light rounded p-1"
                                    src="img/product-3.jpg"
                                    alt="Image"
                                    />
                            </div>
                            <div class="col-4">
                                <img
                                    class="img-fluid bg-light rounded p-1"
                                    src="img/product-2.jpg"
                                    alt="Image"
                                    />
                            </div>
                            <div class="col-4">
                                <img
                                    class="img-fluid bg-light rounded p-1"
                                    src="img/product-3.jpg"
                                    alt="Image"
                                    />
                            </div>
                            <div class="col-4">
                                <img
                                    class="img-fluid bg-light rounded p-1"
                                    src="img/product-1.jpg"
                                    alt="Image"
                                    />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->

        <!-- Copyright Start -->
        <div
            class="container-fluid copyright text-light py-4 wow fadeIn"
            data-wow-delay="0.1s"
            >
            <div class="container">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        &copy; <a href="#">Coffee Maker</a>, All Right Reserved.
                    </div>
                    <div class="col-md-6 text-center text-md-end">
                        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                        Designed By <a href="https://htmlcodex.com">Us</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Copyright End -->