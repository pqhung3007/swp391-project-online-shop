<%-- 
    Document   : sign
    Created on : Jun 3, 2022, 9:50:53 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Baker - Bakery Website Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="js/animate/animate.min.css" rel="stylesheet">
        <link href="js/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body class="bo">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-grow text-primary" role="status"></div>

        </div>
        <!-- Spinner End -->



        <!-- Navbar End -->
        <div class="container-xxl py-6">
            <div class="container">
                <div class="row g-5">
                    <div class="col-lg-7 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="row img-twice position-relative h-100">
                            <div class="col-6">
                                <img class="img-fluid rounded" src="anh-ly-ca-phe-dep-2.jpg" alt="">
                            </div>
                            <div class="col-6 align-self-end">
                                <img class="img-fluid rounded" src="phan-biet-8-loai-thuc-uong-ca-phe-hot-nhat-hien-nay-6.jpg" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-1 wow fadeInUp" data-wow-delay="0.5s"></div>
                    <div class="col-lg-4 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="h-100">
                            <a href="index.html" class="navbar-brand ms-4 ms-lg-0">
                                <h1 class=" m-0 text-center">Coffe Baker</h1>
                            </a>
                            <form action="login" method="post">
                                <div class="row g-3">

                                    <div class="col-12">
                                        <div class="gradient-border" id="box"></div>
                                        <div class="form-floating">
                                            <input type="text" class="form-control text-primary" id="name" placeholder="Your Name" name="userName">
                                            <label for="name">UserName</label>
                                        </div>
                                    </div>



                                    <div class="col-12">
                                        <div class="gradient-border" id="box"></div>
                                        <div class="form-floating">
                                            <input type="password" class="form-control text-primary" id="name" placeholder="Your Name" name="passWord">
                                            <label for="name">Password</label>
                                        </div>
                                    </div>
                                    <!--login failed message-->
                                    <p style="color:red">${loginFailedMessage}</p>
                                    <p class="forget">Forgot Password ? <a href="#">Click Here</a></p>
                                    <p class="forget">Don't have an account ? <a href="#">Sign up</a></p>

                                    <div class="col-12 text-center">
                                        <div class="gradient-border" id="box"></div>
                                        <button class="btn btn-primary rounded-pill py-3 px-5" type="submit">Login</button>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>




        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/wow/wow.min.js"></script>
        <script src="js/easing/easing.min.js"></script>
        <script src="js/waypoints/waypoints.min.js"></script>
        <script src="js/counterup/counterup.min.js"></script>
        <script src="js/owlcarousel/owl.carousel.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>

</html>
