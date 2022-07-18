<%-- Document : myOrders Created on : Jun 26, 2022, 8:47:48 PM Author : Admin --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Orders</title>
        <!-- Favicon -->
        <link href="img/icons8-cofee-16.png" rel="icon" />

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
                        <a class="tab-item order-header" href="">
                            <h4 class="tab-item">Order Detail</h4>
                        </a>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="card mb-2 w-100">
                                <div class="card-body text-secondary">
                                    <div id="content">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Orders list -->
                <div class="col-7 pt-5">
                    <div class="container px-4 px-lg-1">
                        <div class="tab-group w-100" role="group"
                             aria-label="Basic checkbox toggle button group">
                            <a class="tab-item" data-bs-target="#carouselExampleIndicators"
                               data-bs-slide-to="0" class="active" href="">
                                <h4>All Orders</h4>
                            </a>
                            <!--                                            <a class="tab-item" data-bs-target="#carouselExampleIndicators"
                                                                            data-bs-slide-to="1" class="active" href="">
                                                                            <h4>Processing</h4>
                                                                        </a>
                                                                        <a class="tab-item" data-bs-target="#carouselExampleIndicators"
                                                                            data-bs-slide-to="2" class="active" href="">
                                                                            <h4>History</h4>
                                                                        </a>-->
                        </div>

                        <div id="carouselExampleIndicators" class="carousel slide mt-3 mb-5"
                             data-bs-ride="true">
                            <c:choose>
                                <c:when test="${OrderDetails == null || OrderDetails.size() == 0}">
                                    <p class="text-center mb-4" style="font-size: 1.2rem">Oops, Looks like you haven't placed any order :(
                                    </p>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach items="${OrderDetails}" var="order">
                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <div class="card mb-2 w-100">
                                                    <div class="card-body text-secondary">
                                                        <div class="card-heading">
                                                            <h4 class="card-title">Order #<span
                                                                    class="card-title card-id">${order.orderId}</span>
                                                            </h4>
                                                            <button class="card-button detail">View
                                                                detail</button>
                                                        </div>
                                                        <div class="card-info">
                                                            <p class="card-text m-0">Time ordered
                                                                <span class="card-text__detail"><b>
                                                                        <fmt:formatDate pattern="dd/MM/yy"
                                                                                        value="${order.ordersDate}" />
                                                                    </b></span>
                                                            </p>
                                                            <p class="card-text m-0">Total products
                                                                <span
                                                                    class="card-text__detail"><b>${order.numberOfProducts}</b></span>
                                                            </p>
                                                            <p class="card-text m-0">Total cost
                                                                <span
                                                                    class="card-text__detail"><b>${order.cost}</b></span>
                                                            </p>
                                                            <p class="card-text m-0">Status
                                                                <span class="card-text__detail"><b>
                                                                        <c:if test="${order.status == 1}">
                                                                            Processing
                                                                        </c:if>
                                                                        <c:if test="${order.status == 2}">
                                                                            Denied
                                                                        </c:if>
                                                                        <c:if test="${order.status == 3}">
                                                                            Waiting
                                                                        </c:if>
                                                                        <c:if test="${order.status == 4}">
                                                                            Completed
                                                                        </c:if>
                                                                    </b></span>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div <!--Paging-->
                    <c:choose>
                        <c:when test="${OrderDetails == null || OrderDetails.size() == 0}">
                        </c:when>
                        <c:otherwise>
                            <nav aria-label="Page navigation example"
                                 class=" d-flex justify-content-center mt-3">
                                <ul class="pagination">
                                    <li class="page-item ${page lt 2 ? " disabled" : "" }">
                                        <a class="page-link" href="myorder?page=${page-1}">Previous</a>
                                    </li>
                                    <c:forEach begin="1" end="${totalPages}" var="i">
                                        <li class="page-item ${i == page ? " active":""}">
                                            <a class="page-link" href="myorder?page=${i}">${i}</a>
                                        </li>
                                    </c:forEach>
                                    <li class="page-item ${page gt (totalPages-1) ? " disabled" : "" }">
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
        <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i
                class="bi bi-arrow-up"></i></a>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
        <script src="js/app.js"></script>
        <script>
            $(document).ready(function () {
                $(".detail").click(function () {
                    var currentRow = $(this).closest("div");
                    var data = currentRow.find(".card-id").text();
                    console.log(data);
                    $.ajax({
                        url: "myorder",
                        type: 'POST',
                        data: {
                            "id": data
                        },
                        success: function (results) {
                            $("#content").html(results);
                        }
                    });
                });
            });
        </script>
    </body>
</html>