<%-- Document : index Created on : 31-May-2022, 11:26:09 Author : Administrator --%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>CoMa the Coffee Maker</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <meta content="" name="keywords" />
        <meta content="" name="description" />

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

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/home.css" rel="stylesheet" />
    </head>

    <body>
        <!-- Spinner Start -->
        <div id="spinner"
             class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-grow text-primary" role="status"></div>
        </div>
        <!-- Spinner End -->

        <%@include file="components/navbar.jsp" %>

        <!-- Carousel Start -->
        <div class="container-fluid p-0 pb-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="owl-carousel header-carousel position-relative">
                <div class="owl-carousel-item position-relative">
                    <img class="img-fluid" src="img/carousel-1.jpg" alt="" />
                    <div class="owl-carousel-inner">
                        <div class="container">
                            <div class="row justify-content-start">
                                <div class="col-lg-8">
                                    <p class="text-primary text-uppercase fw-bold mb-2">
                                        // The Best Coffee In Town
                                    </p>
                                    <h1 class="display-1 text-light mb-4 animated slideInDown">
                                        We Shake With Passion
                                    </h1>
                                    <p class="text-light fs-5 mb-4 pb-3">
                                        Born and brewed in Northern Vietnam since 1963, CoMa the
                                        CoffeeMaker has always been passionate about connecting
                                        loyal customers with carefully handcrafted products.
                                    </p>
                                    <a href="#readMore"
                                       class="btn btn-primary rounded-pill py-3 px-5 hvr-ripple-out">Buy Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="owl-carousel-item position-relative">
                    <img class="img-fluid" src="img/carousel-2.jpg" alt="" />
                    <div class="owl-carousel-inner">
                        <div class="container">
                            <div class="row justify-content-start">
                                <div class="col-lg-8">
                                    <p class="text-primary text-uppercase fw-bold mb-2">
                                        // The Best Coffee In Town
                                    </p>
                                    <h1 class="display-1 text-light mb-4 animated slideInDown">
                                        We Shake With Passion
                                    </h1>
                                    <p class="text-light fs-5 mb-4 pb-3">
                                        A lot has changed since '63, but our philosophy never has.
                                        We're passionate about delivering the best handcrafted
                                        products and take pride in the journey from seed to cup.
                                    </p>
                                    <a href="#readMore"
                                       class="btn btn-primary rounded-pill py-3 px-5 hvr-ripple-out">Buy Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Carousel End -->

        <!-- Facts Start -->
        <div class="container-xxl py-6">
            <div class="container">
                <div class="row g-4">
                    <div class="col-lg-3 col-md-6 wow fadeIn" data-wow-delay="0.1s">
                        <div class="fact-item bg-light rounded text-center h-100 p-5">
                            <i class="fa fa-certificate fa-4x text-primary mb-4"></i>
                            <p class="mb-2">Years Experience</p>
                            <h1 class="display-5 mb-0" data-toggle="counter-up">59</h1>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeIn" data-wow-delay="0.3s">
                        <div class="fact-item bg-light rounded text-center h-100 p-5">
                            <i class="fa fa-users fa-4x text-primary mb-4"></i>
                            <p class="mb-2">Skilled Professionals</p>
                            <h1 class="display-5 mb-0" data-toggle="counter-up">175</h1>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeIn" data-wow-delay="0.5s">
                        <div class="fact-item bg-light rounded text-center h-100 p-5">
                            <i class="fa fa-bread-slice fa-4x text-primary mb-4"></i>
                            <p class="mb-2">Total Products</p>
                            <h1 class="display-5 mb-0" data-toggle="counter-up">135</h1>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeIn" data-wow-delay="0.7s">
                        <div class="fact-item bg-light rounded text-center h-100 p-5">
                            <i class="fa fa-cart-plus fa-4x text-primary mb-4"></i>
                            <p class="mb-2">Order Everyday</p>
                            <h1 class="display-5 mb-0" data-toggle="counter-up">9357</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Facts End -->

        <!-- About Start -->
        <div id="about" class="container-xxl py-6">
            <div class="container">
                <div class="row g-5">
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="row img-twice position-relative h-100">
                            <div class="col-6">
                                <img class="img-fluid rounded" src="img/about-1.jpg" alt="" />
                            </div>
                            <div class="col-6 align-self-end">
                                <img class="img-fluid rounded" src="img/about-2.jpg" alt="" />
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="h-100">
                            <p class="text-primary text-uppercase mb-2">// About Us</p>
                            <h1 class="display-6 mb-4">
                                We Make Every Cup From The Core Of Our Hearts
                            </h1>
                            <p>
                                Coffee is our soul. Focusing on the minute; being meticulous
                                over every detail. Everything we do is considered to give an
                                unparalleled experience of simplicity with substance.
                            </p>
                            <p>
                                From the origin topography, to the water quality used in the end
                                pour and everything in between, we obsess on every possible
                                variable. Our ambition is to serve great tasting coffee from the
                                best beans we can source each season from around the world.
                            </p>
                            <div class="row g-2 mb-4">
                                <div class="col-sm-6">
                                    <i class="fa fa-check text-primary me-2"></i>Quality Products
                                </div>
                                <div class="col-sm-6">
                                    <i class="fa fa-check text-primary me-2"></i>Custom Satisfaction
                                </div>
                                <div class="col-sm-6">
                                    <i class="fa fa-check text-primary me-2"></i>Online Order Platform
                                </div>
                                <div class="col-sm-6">
                                    <i class="fa fa-check text-primary me-2"></i>Home Delivery
                                </div>
                            </div>
                            <a class="btn btn-primary rounded-pill py-3 px-5 hvr-ripple-out" href="">Read
                                More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->

        <!-- Product Start -->
        <div id="readMore" class="container-xxl bg-light my-6 py-6 pt-0">
            <div class="container">

                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s"
                     style="max-width: 500px">
                    <p class="text-primary text-uppercase mb-2">// Caffein Products</p>
                    <h1 class="display-6 mb-4">
                        Explore The Categories Of Our Cafe Shop
                    </h1>
                </div>
                <div class="row g-4">

                    <c:forEach var="category" items="${categories}">
                        <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div
                                class="product-item d-flex flex-column bg-white rounded overflow-hidden h-100">
                                <div class="text-center p-4">
                                    <h3 class="mb-3">${category.categoryName}</h3>
                                    <span>${category.description}</span>
                                </div>
                                <div class="position-relative mt-auto">
                                    <img class="img-fluid" src="${category.image}" alt="">
                                    <div class="product-overlay">
                                        <a class="btn btn-lg-square btn-outline-light rounded-circle"
                                           href="listProducts?categoryId=${category.categoryId}"><i
                                                class="fa fa-eye text-primary"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </c:forEach>

                </div>
            </div>
        </div>
        <!-- Product End -->

        <!-- Service Start -->
        <div id="service" class="container-xxl py-6">
            <div class="container">
                <div class="row g-5">
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                        <p class="text-primary text-uppercase mb-2">// Our Services</p>
                        <h1 class="display-6 mb-4">What Do We Offer For You?</h1>
                        <p class="mb-5">
                            Whether you're searching for something new to warm your mug,
                            seeking the best brew method for your favorite blend or exploring
                            our rarest offerings, you’ve come to the right place.
                        </p>
                        <div class="row gy-5 gx-4">
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.1s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                        <i class="fa fa-bread-slice text-white"></i>
                                    </div>
                                    <h5 class="mb-0">Extraordinary Products</h5>
                                </div>
                                <span>Exceptional coffees from around the world. Sourced for the
                                    season, roasted at Coffee Maker Reserve® Roasteries and
                                    crafted with care.</span>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.2s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                        <i class="fa fa-birthday-cake text-white"></i>
                                    </div>
                                    <h5 class="mb-0">Custom Products</h5>
                                </div>
                                <span>Let us know if there are any items that you’d love to see on
                                    our delivery menu.</span>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.3s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                        <i class="fa fa-cart-plus text-white"></i>
                                    </div>
                                    <h5 class="mb-0">Online Order</h5>
                                </div>
                                <span>Place an order directly through our website.</span>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.4s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                        <i class="fa fa-truck text-white"></i>
                                    </div>
                                    <h5 class="mb-0">At-home coffee</h5>
                                </div>
                                <span>We’ve compiled a wide selection of blends and beans to fill
                                    your cup.</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="row img-twice position-relative h-100 g-3">
                            <div class="col-6 text-start">
                                <img class="img-fluid rounded w-100" src="img/service-1.jpg" alt="" />
                            </div>
                            <div class="col-6 align-self-end">
                                <img class="img-fluid rounded w-75" src="img/service-2.jpg" alt="" />
                            </div>
                            <div class="col-6 text-end">
                                <img class="img-fluid rounded w-75" src="img/service-3.jpg" alt="" />
                            </div>
                            <div class="col-6 text-end">
                                <img class="img-fluid rounded" src="img/service-4.jpg" alt="" />
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- Service End -->


        <%@include file="components/footer.jsp" %>

        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i
                class="bi bi-arrow-up"></i></a>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/wow/wow.min.js"></script>
        <script src="js/easing/easing.min.js"></script>
        <script src="js/waypoints/waypoints.min.js"></script>
        <script src="js/counterup/counterup.min.js"></script>
        <script src="js/owlcarousel/owl.carousel.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
        <script src="js/app.js"></script>

    </body>

</html>