<%-- 
    Document   : navbar
    Created on : 04-Jun-2022, 21:39:41
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Navbar Start -->
        <nav
            class="navbar navbar-expand-lg navbar-dark py-lg-0 px-lg-5 fixed-top wow fadeIn"
            data-wow-delay="0.1s"
            style="background-color: black"
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
                    <a href="home" class="nav-item nav-link active">Home</a>
                    <a href="about.html" class="nav-item nav-link">About</a>
                    <a href="products" class="nav-item nav-link">Products</a>
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
