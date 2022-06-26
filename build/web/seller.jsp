<%-- 
    Document   : seller
    Created on : Jun 3, 2022, 10:07:00 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin</title>
        <link href="img/favicon.ico" rel="icon">

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
        <link href="js/animate/animate.min.css" rel="stylesheet">
        <link href="js/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/admin.css" rel="stylesheet">
        <link href="css/home.css" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" />



    </head>

    <body>

        <nav class="navbar navbar-expand-lg navbar-dark fixed-top py-lg-0 px-lg-5 wow fadeIn" data-wow-delay="0.1s">
            <a href="index.html" class="navbar-brand ms-4 ms-lg-0">
                <h1 class="text-primary m-0">Coffee Maker</h1>
            </a>
        </nav>


        <div class=" py-3 row">
            <div class="col-lg-2">

                <div class="fact-item bg-light rounded text-center h-100 slidebar">


                    <a href="index.html" class="nav-item nav-link active">
                        <span class="material-icons-sharp">grid_view</span>
                        <h3>Home</h3>
                    </a>
                    <a href="about.html" class="nav-item nav-link">
                        <span class="material-icons-sharp">person_outline</span>
                        <h3>About</h3>
                    </a>
                    <a href="product.html" class="nav-item nav-link">
                        <span class="material-icons-sharp">inventory</span>
                        <h3>Products</h3>
                    </a>
                    <a href="contact.html" class="nav-item nav-link">
                        <span class="material-icons-sharp">insights</span>
                        <h3>Contact</h3>
                    </a>


                </div>


            </div>
            <div class="col-lg-8">
                <div class="container-xxl py-6">
                    <div class="container">
                        <div class="row g-4">
                            <div class="col-lg-4 col-md-6 wow fadeIn" data-wow-delay="0.1s">
                                <div class="fact-item bg-light rounded text-center h-100 p-5">

                                    <p class="mb-2">Customers</p>
                                    <h1 class="display-5 mb-0" data-toggle="counter-up">50</h1>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeIn" data-wow-delay="0.3s">
                                <div class="fact-item bg-light rounded text-center h-100 p-5">

                                    <p class="mb-2">Shippers</p>
                                    <h1 class="display-5 mb-0" data-toggle="counter-up">175</h1>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeIn" data-wow-delay="0.5s">
                                <div class="fact-item bg-light rounded text-center h-100 p-5">

                                    <p class="mb-2">Sellers</p>
                                    <h1 class="display-5 mb-0" data-toggle="counter-up">135</h1>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>

                <div class="container-xxl py-6">
                    <div class="col-lg-12 ">
                        <div class="fact-item bg-light rounded text-center h-100 p-5">

                            <p class="mb-2">Customers</p>
                            <h1 class="display-5 mb-0" data-toggle="counter-up">50</h1>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-lg-2 py-6">
                <div>
                    <div class="fact-item bg-light rounded text-center h-100 p-5">

                        <p class="mb-2">Customers</p>
                        <h1 class="display-5 mb-0" data-toggle="counter-up">50</h1>
                    </div>
                </div>
                <br>
                <div>
                    <div class="fact-item bg-light rounded text-center h-100 p-5">

                        <p class="mb-2">Customers</p>
                        <h1 class="display-5 mb-0" data-toggle="counter-up">50</h1>
                    </div>
                </div>
            </div>

        </div>


    </body>
</html>
