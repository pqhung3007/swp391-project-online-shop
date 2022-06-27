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
        <link href="css/home.css" rel="stylesheet" />
    </head>
    <style>
        .card{
            border: 1px solid rgb(234 166 54);
        }

    </style>
    <body>
        <%@include file="components/navbar.jsp" %>
        <div class="container mt-5">
            <div class="row">
                <div class="col-2 pt-5">
                </div> 
                <div class="col-10 pt-5">


                    <div class="container px-4 px-lg-1">
                        <div class="btn-group w-100" role="group" aria-label="Basic checkbox toggle button group" style="background-color: white">
                            <a class="btn btn-outline-secondary" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" href="">All Order</a>
                            <a class="btn btn-outline-secondary" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" href="">Processing</a>
                            <a class="btn btn-outline-secondary" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" href="">Confirmed</a>
                            <a class="btn btn-outline-secondary" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" href="">Cancel</a>
                        </div>

                        <div id="carouselExampleIndicators" class="carousel slide mt-3 mb-5" data-bs-ride="true">
                            <c:forEach var="orderDetail" items="${OrderDetails}">

                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <div class="card mb-2 w-100">

                                            <div class="card-body text-secondary">
                                                <div class="row">
                                                    <div class="col-2 ">                                                    
                                                        <img style="width: 100px; height: 100px" class="card-img-center ms-4" src="${orderDetail.productImage}" alt="..." />
                                                    </div>
                                                    <div class="col-8">
                                                        <h4 class="card-title">${orderDetail.name}</h4>
                                                        <p class="card-text"></p>                             
                                                    </div>
                                                    <div class="col-2"> 
                                                        <p class="card-text">Price: ${orderDetail.price}</p>
                                                        <p class="card-text">Quantity: ${orderDetail.quantity}</p>
                                                        <p class="card-text">Total cost: ${orderDetail.price * orderDetail.quantity}</p>
                                                    </div>
                                                </div> 
                                            </div>
                                            <div class="card-footer bg-transparent"> 
                                                <div class="row">
                                                    <div class="col-9">

                                                    </div>
                                                    <!--                                                    <div class="col-3">
                                                                                                            Total product: 1000 </br>
                                                                                                            Order total cost: 1000 </br>                                
                                                                                                        </div>-->
                                                </div> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>

                    <!--Paging-->
                    <c:choose>
                        <c:when test="${OrderDetails == null || OrderDetails.size() == 0}">
                        </c:when>
                        <c:otherwise>
                            <nav aria-label="Page navigation example" class=" d-flex justify-content-center mt-3">
                                <ul class="pagination">
                                    <li class="page-item ${page lt 1 ? "disabled" : ""}">
                                        <a class="page-link" href="myorder?page=${page-1}">Previous</a>
                                    </li>
                                    <c:forEach begin="1" end="${totalPages}" var="i">
                                        <li class="page-item ${i == page ? "active":""}">
                                            <a class="page-link" href="myorder?page=${i}">${i}</a>
                                        </li>
                                    </c:forEach>
                                    <li class="page-item ${page gt totalPages ? "disabled" : ""}">
                                        <a class="page-link" href="myorder?page=${page+1}">Next</a>
                                    </li>
                                </ul>
                            </nav>
                        </c:otherwise>
                    </c:choose>

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
