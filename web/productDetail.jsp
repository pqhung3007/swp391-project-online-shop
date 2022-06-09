<%-- 
    Document   : product
    Created on : May 27, 2022, 7:09:50 AM
    Author     : Admin
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>CoMa the Coffee Maker</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Playfair+Display:wght@600;700&display=swap"
            rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/home.css" rel="stylesheet">
        <link href="css/product.css" rel="stylesheet" />
        <link href="css/productDetail.css" rel="stylesheet" />
        <!-- google font -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">



    </head>

    <!-- Spinner Start -->
    <div
        id="spinner"
        class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center"
        >
        <div class="spinner-grow text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->

    <%@include file="components/navbar.jsp" %>



    <!-- Product End -->
    <!-- Product Start -->
    <div class="container mb-5" style="margin-top: 9rem; ">
        <div class="row ">
            <div class="col-md-3 d-flex flex-column justify-content-between">
                <h2>${productDetail.name}</h2>
                <p>
                    ${productDetail.description}
                </p>
                <h5>${productDetail.price} VND</h5>

                <button
                    class="btn btn-primary mt-4"
                    data-bs-toggle="modal"
                    data-bs-target="#addCart"
                    >
                    Add to cart
                </button>
                <div
                    class="modal fade"
                    id="addCart"
                    tabindex="-1"
                    aria-labelledby="addCart"
                    aria-hidden="true"
                    >
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="addCart">
                                    ${productDetail.name}
                                </h5>
                                <button
                                    type="button"
                                    class="btn-close"
                                    data-bs-dismiss="modal"
                                    aria-label="Close"
                                    ></button>
                            </div>
                            <div class="modal-body">
                                Added to cart successfully
                            </div>
                            <div class="modal-footer d-flex justify-content-around">
                                <button
                                    class="button"

                                    >
                                    <a href="cart?action=continue&pid=${productDetail.productId}"><h6>Continue shopping</h6></a>
                                </button>
                                <button type="button" class="button">
                                    <a href="cart?action=gocart&pid=${productDetail.productId}"><h6>Go to basket</h6></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 text-center">
                <img class="w-75 h-100" src="${productDetail.productImage}" alt="" />
            </div>
            <div class="col-md-3 d-flex flex-column justify-content-start">
                <h3>Reviews</h3>
                <p class="trunc-4">
                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ipsam quod
                    assumenda nulla pariatur nobis reprehenderit impedit!
                </p>
                <button
                    class="btn btn-primary"
                    data-bs-toggle="modal"
                    data-bs-target="#viewMore"
                    >
                    View more
                </button>
                <div
                    class="modal fade"
                    id="viewMore"
                    tabindex="-1"
                    aria-labelledby="reviewExtend"
                    aria-hidden="true"
                    >
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="reviewExtend">
                                    ${productDetail.name}
                                </h5>
                                <button
                                    type="button"
                                    class="btn-close"
                                    data-bs-dismiss="modal"
                                    aria-label="Close"
                                    ></button>
                            </div>
                            <div class="modal-body">
                                Lorem ipsum dolor sit amet consectetur, adipisicing elit.
                                Possimus aut et tempora cupiditate veniam perferendis esse
                                tenetur sit consectetur vel dolorem, magnam, similique,
                                obcaecati ex excepturi voluptates perspiciatis necessitatibus
                                nostrum?
                            </div>
                        </div>
                    </div>
                </div>
            </div>




        </div>
    </div>
    <!-- Product End -->


    <!-- Related Product Start -->
    <div class="container">
        <h5>You may also like</h5>
        <div class="row mt-3 relateProduct">
            <div class="col-3">

                <div class="product">
                    <img src="./img/service-1.jpg" alt="" class="productImg"/>
                    <p class="text-truncate">Caramel Macchiato</p>
                    <p>$7.5</p>
                    <p class="text-end mb-0"><a
                            href="productDetail?pid="
                            class="btn btn-primary rounded-pill"
                            >View Product</a
                        ></p> 
                </div>

            </div>
        </div>
    </div>
    <!-- Related Product End -->

    <%@include file="components/footer.jsp" %>

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i
            class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    <script src="js/project/productDetail.js"></script>
</body>
</html>
