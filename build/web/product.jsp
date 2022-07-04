
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

        <%@include file="components/navbar.jsp" %>

        <!-- Tab Start -->
        <div class="container d-flex align-items-start" style="margin-top:10rem">

            <div class="category-container">
                <h2 class="mb-4">Our categories</h2>
                <ul class="nav nav-tabs flex-md-column flex-sm-row" id="myTab" role="tablist">
                    <c:forEach var="category" items="${sessionScope.categories}">
                        <li class="nav-item" role="presentation">
                            <a href="listProducts?categoryId=${category.categoryId}" 
                               <c:choose>
                                   <c:when test="${category.categoryId == sessionScope.catID}">
                                       class="nav-link active"
                                   </c:when>
                                   <c:otherwise>
                                       class="nav-link"
                                   </c:otherwise>
                               </c:choose>
                               >
                                ${category.categoryName}
                            </a>
                        </li>
                    </c:forEach>

                </ul>
                <a href="products" 
                   class="btn btn-primary rounded-pill mt-4">
                    View all products
                </a>
            </div>

            <div class="container" id="myTabContent">
                <div class="search-form mb-5 w-50">
                    <form action="search" class="d-flex justify-content-between">
                        <input class="form-control me-2" type="search" name="keyword" placeholder="Search product by name">
                        <button class="btn btn-primary rounded-pill" type="submit">Search</button>
                    </form>
                </div>

                <c:choose>
                    <c:when test="${products == null || products.size() == 0}">
                        <p class="text-center mb-4" style="font-size: 1.2rem">Oops, cannot find any product :(</p>
                    </c:when>
                    <c:otherwise>
                        <div class="tab-pane fade show active row" id="espresso" role="tabpanel" aria-labelledby="espresso-tab">
                            <c:forEach var="product" items="${products}">
                                <div class="col-md-4 col-sm-6 mb-4">
                                    <div class="product">
                                        <div class="product-image">
                                            <img src="${product.productImage}" alt="">
                                        </div>
                                        <h5 class="mt-4">${product.name}</h5>
                                        <p>Price: ${product.price} VND</p>
                                        <p class="text-end mb-0"><a
                                                href="productDetail?pid=${product.productId}"
                                                class="btn btn-primary rounded-pill"
                                                >View Product</a>
                                        </p>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </c:otherwise>
                </c:choose>

            </div>
        </div>
        <!-- Tab End -->


        <!--Paging-->
        <c:choose>
            <c:when test="${products == null || products.size() == 0}">
            </c:when>
            <c:otherwise>
                <nav aria-label="Page navigation example" class=" d-flex justify-content-center mt-3">
                    <ul class="pagination">
                        <li class="page-item ${page lt 2 ? "disabled" : ""}">
                            <a class="page-link" href="products?page=${page-1}">Previous</a>
                        </li>
                        <c:forEach begin="1" end="${totalPages}" var="i">
                            <li class="page-item ${i == page ? "active":""}">
                                <a class="page-link" href="products?page=${i}">${i}</a>
                            </li>
                        </c:forEach>
                        <li class="page-item ${page gt (totalPages-1) ? "disabled" : ""}">
                            <a class="page-link" href="products?page=${page+1}">Next</a>
                        </li>
                    </ul>
                </nav>
            </c:otherwise>
        </c:choose>

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