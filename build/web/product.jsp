
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>CoMa the Coffee Maker</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Playfair+Display:wght@600;700&display=swap"
      rel="stylesheet"
    />

    <!-- Icon Font Stylesheet -->
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
      rel="stylesheet"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
      rel="stylesheet"
    />

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet" />
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/home.css" rel="stylesheet" />
    <link href="css/product.css" rel="stylesheet" />
  </head>

  <body>
    <!-- Spinner Start -->
    <div
      id="spinner"
      class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center"
    >
      <div class="spinner-grow text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->

    <!-- Navbar Start -->
    <nav
      class="navbar navbar-expand-lg navbar-dark fixed-top py-lg-0 px-lg-5 wow fadeIn"
      data-wow-delay="0.1s"
    >
      <a href="index.html" class="navbar-brand ms-4 ms-lg-0">
        <h1 class="text-primary m-0 mt-2">Coffee Maker</h1>
      </a>
      <button
        type="button"
        class="navbar-toggler me-4"
        data-bs-toggle="collapse"
        data-bs-target="#navbarCollapse"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav mx-auto p-4 p-lg-0">
          <a href="index.html" class="nav-item nav-link active">Home</a>
          <a href="about.html" class="nav-item nav-link">About</a>
          <a href="product.html" class="nav-item nav-link">Products</a>
          <a href="contact.html" class="nav-item nav-link">Contact</a>
          <div class="nav-item dropdown dropmenu">
            <a
              href="#"
              class="nav-link dropdown-toggle"
              data-bs-toggle="dropdown"
              >Account</a
            >
            <ul class="dropitems">
              <li class="m-8"><a href="#">My Profile</a></li>
              <li class="m-8"><a href="#">My Orders</a></li>
              <li class="m-8"><a href="#">Logout</a></li>
            </ul>
          </div>
        </div>
        <div class="d-none d-lg-flex">
          <div
            class="flex-shrink-0 btn-lg-square border border-light rounded-circle"
          >
            <i class="fa fa-phone text-primary"></i>
          </div>
          <div class="ps-3">
            <small class="text-primary mb-0">Call Us</small>
            <p class="text-light fs-5 mb-0">+012 345 6789</p>
          </div>
        </div>
      </div>
    </nav>
    <!-- Navbar End -->

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
                  <a
                    href=""
                    class="btn btn-primary rounded-pill py-3 px-5 hvr-ripple-out"
                    >Read More</a
                  >
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
                  <a
                    href=""
                    class="btn btn-primary rounded-pill py-3 px-5 hvr-ripple-out"
                    >Read More</a
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Carousel End -->

    <!-- Tab Start -->
    <div class="container d-flex align-items-start">
      <ul class="nav nav-tabs flex-column" id="myTab" role="tablist">
        <li class="nav-item" role="presentation">
          <button class="nav-link active" id="espresso-tab" data-bs-toggle="tab" data-bs-target="#espresso" type="button" role="tab" aria-controls="espresso" aria-selected="true">Espresso</button>
        </li>
        <li class="nav-item" role="presentation">
          <button class="nav-link" id="chocolate-tab" data-bs-toggle="tab" data-bs-target="#chocolate" type="button" role="tab" aria-controls="chocolate" aria-selected="false">Chocolate</button>
        </li>
        <li class="nav-item" role="presentation">
          <button class="nav-link" id="frappuccino-tab" data-bs-toggle="tab" data-bs-target="#frappuccino" type="button" role="tab" aria-controls="frappucino" aria-selected="false">Frappuccino</button>
        </li>
        <li class="nav-item" role="presentation">
          <button class="nav-link" id="icecream-tab" data-bs-toggle="tab" data-bs-target="#icecream" type="button" role="tab" aria-controls="icecream" aria-selected="false">Ice Cream</button>
        </li>
        <li class="nav-item" role="presentation">
          <button class="nav-link" id="tea-tab" data-bs-toggle="tab" data-bs-target="#tea" type="button" role="tab" aria-controls="tea" aria-selected="false">Tea</button>
        </li>
      </ul>
      <div class="container" id="myTabContent">
        <div class="tab-pane fade show active row" id="espresso" role="tabpanel" aria-labelledby="espresso-tab">
          <div class="col-2">
            <div class="product">
              <img src="./img/about-1.jpg" alt="">
              <p class="text-truncate">Caramel Macchiato</p>
              <p>$7.5</p>
            </div>
          </div>
          <div class="col-2">
            <div class="product">
              <img src="./img/about-1.jpg" alt="">
              <p class="text-truncate">Caramel Macchiato</p>
              <p>$7.5</p>
            </div>
          </div>
          <div class="col-2">
            <div class="product">
              <img src="./img/about-1.jpg" alt="">
              <p class="text-truncate">Caramel Macchiato</p>
              <p>$7.5</p>
            </div>
          </div>
          <div class="col-2">
            <div class="product">
              <img src="./img/about-1.jpg" alt="">
              <p class="text-truncate">Caramel Macchiato</p>
              <p>$7.5</p>
            </div>
          </div>
          <div class="col-2">
            <div class="product">
              <img src="./img/about-1.jpg" alt="">
              <p class="text-truncate">Caramel Macchiato</p>
              <p>$7.5</p>
            </div>
          </div>
          <div class="col-2">
            <div class="product">
              <img src="./img/about-1.jpg" alt="">
              <p class="text-truncate">Caramel Macchiato</p>
              <p>$7.5</p>
            </div>
          </div>
          <div class="col-2">
            <div class="product">
              <img src="./img/about-1.jpg" alt="">
              <p class="text-truncate">Caramel Macchiato</p>
              <p>$7.5</p>
            </div>
          </div>
          <div class="col-2">
            <div class="product">
              <img src="./img/about-1.jpg" alt="">
              <p class="text-truncate">Caramel Macchiato</p>
              <p>$7.5</p>
            </div>
          </div>
        </div>
        <div class="tab-pane fade" id="chocolate" role="tabpanel" aria-labelledby="chocolate-tab">...</div>
        <div class="tab-pane fade" id="frappucino" role="tabpanel" aria-labelledby="frappuccino-tab">...</div>
        <div class="tab-pane fade" id="icecream" role="tabpanel" aria-labelledby="icecream-tab">...</div>
        <div class="tab-pane fade" id="tea" role="tabpanel" aria-labelledby="tea-tab">...</div>
      </div>
    </div>
    <!-- Tab End -->

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
            <a class="btn btn-link" href="">About Us</a>
            <a class="btn btn-link" href="">Contact Us</a>
            <a class="btn btn-link" href="">Our Products</a>
            <a class="btn btn-link" href="">Your Account</a>
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
  </body>
</html>