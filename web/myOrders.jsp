<%-- 
    Document   : myOrders
    Created on : Jun 26, 2022, 8:47:48 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Orders</title>
        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon" />

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Playfair+Display:wght@600;700&display=swap"
            rel="stylesheet" />

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
              rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
              rel="stylesheet" />

        <!--Libraries Stylesheet-->
        <link href="js/animate/animate.min.css" rel="stylesheet" />
        <link href="js/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />
        <link rel="stylesheet" href="./css/home.css">
    </head>
    
    <body>
        <%@include file="components/navbar.jsp" %>
        <div class="container mt-7">
            <div class="row">
                <!-- Order detail -->
                <div class="col-5 pt-5">
                    <div class="tab-group w-100">
                        <a class="tab-item order-header" href=""><h4 class="tab-item">Order Detail</h4></a>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="card mb-2 w-100">
                                <div class="card-body text-secondary">
                                    <div class="card-heading">
                                        <h4 class="card-title">Le Phuong Chi</h4>
                                        <p class="m-0">Order #1234</p>
                                    </div>
                                    <div class="order-info">
                                        <div class="order-item">
                                            <img class="item-img" src="./img/service-1.jpg" alt="">
                                            <div class="item-info">
                                                <div class="item-title">
                                                    <p class="m-0"><b>Caramel Macchiato</b></p>
                                                    <small>$7.5</small>
                                                </div>
                                                <div class="item-desc">
                                                    <p class="m-0">2 cups</p>
                                                </div>
                                                <hr class="m-0">
                                                <div class="item-price">
                                                    <p>$15</p>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 

                <!-- Orders list -->
                <div class="col-7 pt-5">
                    <div class="container px-4 px-lg-1">
                        <div class="tab-group w-100" role="group" aria-label="Basic checkbox toggle button group">
                            <a class="tab-item hvr-sweep-to-left" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" href=""><h4>All Orders</h4></a>
                            <a class="tab-item hvr-sweep-to-left" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" class="active" href=""><h4>Processing</h4></a>
                            <a class="tab-item hvr-sweep-to-left" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" class="active" href=""><h4>History</h4></a>
                        </div>

                        <div id="carouselExampleIndicators" class="carousel slide mt-3 mb-5" data-bs-ride="true">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="card mb-2 w-100">
                                        <div class="card-body text-secondary">
                                            <div class="card-heading">
                                                <h4 class="card-title">Order #1234</h4>
                                                <button class="card-button">View detail</button>
                                            </div>
                                            <div class="card-info">
                                                <p class="card-text m-0">Time ordered
                                                    <span class="card-text__detail"><b>10:39AM 27/06/22</b></span>
                                                </p>
                                                <p class="card-text m-0">Total products
                                                    <span class="card-text__detail"><b>1000</b></span>
                                                </p>
                                                <p class="card-text m-0">Total cost
                                                    <span class="card-text__detail"><b>1000</b></span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div
                    <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-center">
                            <li class="page-item"><a class="page-link" >1</a></li>
                            <li class="page-item"><a class="page-link" >2</a></li>
                            <li class="page-item"><a class="page-link" >3</a></li>
                        </ul>
                    </nav>

                </div>
            </div>
        </div>
        <%@include file="components/footer.jsp" %>

        <!-- Back to Top -->
        <a
            href="#"
            class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"
            ><i class="bi bi-arrow-up"></i
            ></a>

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
        <script src="js/app.js"></script>
    </body>
</html>

