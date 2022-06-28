<%-- 
    Document   : createAccountAdmin
    Created on : Jun 28, 2022, 11:17:28 AM
    Author     : Le Viet
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Register - Coffee Maker</title>
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
    <body>
        <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
            <div class="h-100">
                <a href="index.html" class="navbar-brand ms-4 ms-lg-0">
                    <h1 class=" m-0 text-center">The Coffee Maker</h1>
                </a>
                <form action="create-account" method="post">
                    <div class="row g-3">
                        <div class="col-md-6">
                            <select name="roles">
                                <c:forEach items="${roles}" var="r">
                                    <option value="${r.roleId}" ${selectedId == r.roleId?"selected":""}>${r.roleName}
                                    </option>
                                </c:forEach>
                            </select>

                            <div class="col-md-6">
                                <div class="gradient-border" id="box"></div>
                                <div class="form-floating">
                                    <input type="text" class="form-control text-primary" id="username" name="username" required>
                                    <label for="username">Username</label>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="gradient-border" id="box"></div>
                                <div class="form-floating">
                                    <input type="password" class="form-control text-primary" id="password" name="password" required>
                                    <label for="password">Password</label>
                                </div>
                            </div>

                            <div class="col-12 text-center">
                                <div class="gradient-border" id="box"></div>
                                <button class="btn btn-primary rounded-pill py-3 px-5" type="submit">Register</button>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
    </body>
</html>
