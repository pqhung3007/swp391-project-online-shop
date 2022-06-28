<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Profile Maker</title>
        <link rel="stylesheet" href="profile.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="admin.css" rel="stylesheet">
        <link href="css/home.css" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" />
        <link rel="shortcut icon" type="image/png" href="img/favicon.png">
    </head>

    <body>
        <nav class="fixed-top navbar navbar-expand-lg navbar-dark py-lg-0 px-lg-5 wow fadeIn" data-wow-delay="0.1s"
             style="background-color: black">
            <a href="home" class="navbar-brand ms-4 ms-lg-0">
                <h1 class="text-primary m-0 mt-2">Coffee Maker</h1>
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav mx-auto p-4 p-lg-0">
                    <a href="home" class="nav-item nav-link active">Home</a>
                    <a href="about.html" class="nav-item nav-link">About</a>
                    <a href="products" class="nav-item nav-link">Products</a>
                    <a href="contact.html" class="nav-item nav-link">Contact</a>
                    <div class="nav-item dropdown dropmenu">
                        <c:if test="${sessionScope.account !=null}">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">${sessionScope.account.userName}</a>
                            <ul class="dropitems">
                                <li class="m-8"><a href="#">My Profile</a></li>
                                <li class="m-8"><a href="#">My Orders</a></li>
                                <li class="m-8"><a href="logout">Logout</a></li>
                            </ul>
                    </div>
                    <a class="shopping-cart nav-item nav-link" href="cart?aid=${sessionScope.account.accountId}"><i
                            class="fas fa-shopping-cart"></i></a>

                    </c:if>

                    <c:if test="${sessionScope.account == null}">
                        <div class="navbar-nav mx-auto p-4 p-lg-0">
                            <a href="login" class="nav-item nav-link">Login</a>
                            <a href="register.jsp" class="nav-item nav-link">Register</a>
                        </div>
                    </c:if>
                </div>
            </div>
            <div class="d-none d-lg-flex">
                <div class="flex-shrink-0 btn-lg-square border border-light rounded-circle">
                    <i class="fa fa-phone text-primary"></i>
                </div>
                <div class="ps-3">
                    <small class="text-primary mb-0">Call Us</small>
                    <p class="text-light fs-5 mb-0">+012 345 6789</p>
                </div>
            </div>
        </div>
    </nav>
    <div class="container rounded bg-white" style="margin-top: 100px">
        <div class="row">
            <div class="col-md-6 border-right ">
                <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5"
                                                                                             width="150px"
                                                                                             src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span
                                                                                             class="font-weight-bold">Edogaru</span><span class="text-black-50">edogaru@mail.com.my</span><span> </span>
                </div>
            </div>
            <div class="col-md-6 border-right">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h4 class="text-right">Profile Settings</h4>
                    </div>
                    <form action="profile" method="POST">
                        <input type="hidden" name="accountID" value="${user.accountID}">
                        <input type="hidden" name="accountIDS" value="${sessionScope.account.accountId}">
                        <div class="row mt-2">
                            <div class="col-md-12"><label  class="labels"></label><input  type="text" class="form-control"
                                                                                          placeholder="Fullname" name="name" value="${user.name}">
                            </div>
                            <div class="col-md-12"><label class="labels"></label><input type="text" class="form-control"
                                                                                        placeholder="Username" name="fullname" value="${sessionScope.account.userName}">
                            </div>
                            <div class="col-md-12"><label class="labels"></label><input type="password" class="form-control"
                                                                                        placeholder="Password" name="password" value="${sessionScope.account.passWord}">
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-6"><label class="labels"></label><input type="text" class="form-control"
                                                                                       placeholder="Phone" name="phone" value="${user.phone}"></div>
                            <div class="col-md-6"><label class="labels"></label><input type="text" class="form-control"
                                                                                       placeholder="Address" name="address" value="${user.address}"></div>
                            <div class="col-md-12"><label class="labels"></label><input type="text" class="form-control"
                                                                                        placeholder="Email" name="email" value="${user.email}"></div>
                        </div>

                        <div class="mt-5 text-center">
                            <button class="btn btn-primary profile-button m-4" type="submit" >Save Profile</button>

                        </div>
                    </form>
                </div>
            </div>



        </div>

    </div>
    <div class="container-fluid bg-dark text-light footer my-6 mb-0 py-5 wow fadeIn" data-wow-delay="0.1s">
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
                    <a class="btn btn-link" href="products">Our Products</a>
                    <a class="btn btn-link" href="">Your Account</a>
                </div>
                <div class="col-lg-4 col-md-12">
                    <h4 class="text-light mb-4">Photo Gallery</h4>
                    <div class="row g-2">
                        <div class="col-4">
                            <img class="img-fluid bg-light rounded p-1" src="img/product-1.jpg" alt="Image" />
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light rounded p-1" src="img/product-2.jpg" alt="Image" />
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light rounded p-1" src="img/product-3.jpg" alt="Image" />
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light rounded p-1" src="img/product-2.jpg" alt="Image" />
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light rounded p-1" src="img/product-3.jpg" alt="Image" />
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light rounded p-1" src="img/product-1.jpg" alt="Image" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->

    <!-- Copyright Start -->
    <div class="container-fluid copyright text-light py-4 wow fadeIn" data-wow-delay="0.1s">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                    &copy; <a href="#">Coffee Maker</a>, All Right Reserved.
                </div>
                <div class="col-md-6 text-center text-md-end">
                    <!--/*** This template is free as long as you keep the footer author?s credit link/attribution link/backlink. If you'd like to use the template without the footer author?s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                    Designed By <a href="https://htmlcodex.com">Us</a>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</body>

</html>