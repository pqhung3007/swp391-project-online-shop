<%-- Document : login Created on : Jun 3, 2022, 9:10:40 AM Author : Admin --%>
    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>
        <head>
            <meta charset="utf-8" />
            <title>Sign Up</title>
            <meta content="width=device-width, initial-scale=1.0" name="viewport" />
            <meta content="" name="keywords" />
            <meta content="" name="description" />

            <!-- Favicon -->
            <link href="img/icons8-cofee-16.png" rel="icon" />

            <!-- Google Web Fonts -->
            <link rel="preconnect" href="https://fonts.googleapis.com" />
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
            <link
                href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Playfair+Display:wght@600;700&display=swap"
                rel="stylesheet" />

            <!-- Icon Font Stylesheet -->
            <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
            <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

            <!-- Libraries Stylesheet -->
            <link href="js/animate/animate.min.css" rel="stylesheet" />
            <link href="js/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />

            <!-- Customized Bootstrap Stylesheet -->
            <link href="css/bootstrap.min.css" rel="stylesheet" />

            <!-- Template Stylesheet -->
            <link rel="stylesheet" href="css/style.css" />
        </head>

        <body class="bo">
            <!-- Spinner Start -->
            <div id="spinner"
                class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
                <div class="spinner-grow text-primary" role="status"></div>
            </div>
            <!-- Spinner End -->

            <div class="container-xxl py-6 mt-5">
                <div class="container">
                    <div class="row g-5">
                        <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="row img-twice position-relative h-100">
                                <div class="col-6">
                                    <img class="img-fluid rounded" src="./img/about-1.jpg" alt="" />
                                </div>
                                <div class="col-6 pt-6">
                                    <img class="img-fluid rounded" src="./img/about-2.jpg" alt="" />
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                            <div class="h-100">
                                <span class="navbar-brand ms-4 ms-lg-0">
                                    <h1 class=" m-0 text-center">Sign Up</h1>
                                </span>
                                <p style="text-align: center"><b>Join us and you will never regret that choice.</b>
                                </p>
                                <form action="register" method="post">
                                    <div class="row g-2">
                                        <div class="col-md-6">
                                            <div class="gradient-border" id="box"></div>
                                            <div class="form-floating">
                                                <input type="text" class="form-control text-primary" id="fullname"
                                                    name="FullName" required />
                                                <label for="fullname">Full Name</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="gradient-border" id="box"></div>
                                            <div class="form-floating">
                                                <input type="text" class="form-control text-primary" id="username"
                                                    name="UserName" required />
                                                <label for="username">Username</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="gradient-border" id="box"></div>
                                            <div class="form-floating">
                                                <input type="text" minlength="10" maxlength="12"
                                                    class="form-control text-primary" id="phone" name="phone"
                                                    required />
                                                <label for="phone">Phone</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="gradient-border" id="box"></div>
                                            <div class="form-floating">
                                                <input type="email" class="form-control text-primary" id="email"
                                                    name="email" required />
                                                <label for="email">Email</label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="gradient-border" id="box"></div>
                                            <div class="form-floating">
                                                <input type="text" class="form-control text-primary" id="address"
                                                    name="address" required />
                                                <label for="address">Address</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="gradient-border" id="box"></div>
                                            <div class="form-floating">
                                                <input type="password" class="form-control text-primary" id="password"
                                                    name="password" required />
                                                <label for="password">Password</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="gradient-border" id="box"></div>
                                            <div class="form-floating">
                                                <input type="password" class="form-control text-primary" id="repassword"
                                                    name="repassword" required />
                                                <label for="repassword">Confirm your Password</label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="gradient-border d-flex d-none" id="passconfirm">
                                                <i class="fas fa-exclamation" style="color: red; margin-right: 5px"></i>
                                                <h6>Confirm password does not match.</h6>
                                            </div>
                                        </div>
                                        <p class="forget">Already have your account? <a href="login">Sign In</a></p>
                                        <div class="col-12 text-center">
                                            <div class="gradient-border" id="box"></div>
                                            <button class="btn btn-primary rounded-pill py-3 px-5" type="submit">
                                                Register
                                            </button>
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
            <script src="js/app.js"></script>
        </body>
        </html>