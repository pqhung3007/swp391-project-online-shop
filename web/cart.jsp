<%-- 
    Document   : Cart1
    Created on : Jun 8, 2022, 9:36:01 AM
    Author     : Le Viet
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Slot 1</title>\
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/cart.css">
        <link href="css/admin.css" rel="stylesheet">
        <link href="css/home.css" rel="stylesheet">
        <!-- Libraries Stylesheet -->
        <link href="js/animate/animate.min.css" rel="stylesheet">
        <link href="js/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark fixed-top py-lg-0 px-lg-5 wow fadeIn" data-wow-delay="0.1s">
            <a href="index.html" class="navbar-brand ms-4 ms-lg-0">
                <h1 class="text-primary m-0">Coffee Maker</h1>
            </a>
        </nav>

        <section class="h-100 h-custom" style="background-color: #ffc107;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12">
                        <div class="card card-registration card-registration-2" style="border-radius: 15px;">
                            <div class="card-body p-0">
                                <div class="row g-0">
                                    <div class="col-lg-8">
                                        <div class="p-5">
                                            <div class="d-flex justify-content-between align-items-center mb-5">
                                                <h1 class="fw-bold mb-0 text-black">Shopping Cart</h1>
                                                <h6 class="mb-0 text-muted"${sessionScope.carts.size()} items</h6>
                                            </div>
                                            <c:choose>
                                                <c:when test="${sessionScope.carts==null||sessionScope.carts.size()==0}">
                                                    <h4>Cart is empty!</h4>
                                                </c:when>
                                                <c:otherwise>
                                                    <hr class="my-4">
                                                    <c:forEach items="${carts}" var="c" >
                                                        <div class="row mb-4 d-flex justify-content-between align-items-center">
                                                            <div class="col-md-2 col-lg-2 col-xl-2">
                                                                <img src="${c.value.product.productImage}"
                                                                     class="img-fluid rounded-3" alt="Cotton T-shirt">
                                                            </div>
                                                            <div class="col-md-3 col-lg-3 col-xl-3">
                                                                <h6 class="text-black mb-0">${c.value.product.name}</h6>
                                                            </div>
                                                            <div class="col-md-3 col-lg-3 col-xl-2 d-flex">
                                                                <a class="btn btn-link px-2"
                                                                   href="updatequantity?action=dec&id=${c.value.product.productId}">
                                                                    <i class="fas fa-minus"></i>
                                                                </a>

                                                                <input id="form1" name="quantity" value="${c.value.quantity}" type="text"
                                                                       class="form-control form-control-sm" />

                                                                <a class="btn btn-link px-2"
                                                                   href="updatequantity?action=inc&id=${c.value.product.productId}">
                                                                    <i class="fas fa-plus"></i>
                                                                </a>
                                                            </div>
                                                            <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
                                                                <h6 class="mb-0">${c.value.product.price * c.value.quantity}</h6>
                                                            </div>
                                                            <div class="col-md-1 col-lg-1 col-xl-1 text-end">
                                                                <a href="delete?id=${c.value.product.productId}" class="btn btn-outline-info"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                                            </div>
                                                        </div>
                                                    </c:forEach>

                                                    <hr class="my-4">
                                                </c:otherwise>
                                            </c:choose> 
                                            <div class="pt-5">
                                                <h6 class="mb-0"><a href="products" class="text-body"><i
                                                            class="fas fa-long-arrow-alt-left me-2"></i>Back to shop</a>
                                                </h6>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 bg-grey">
                                        <div class="p-5">
                                            <h3 class="fw-bold mb-5 mt-2 pt-1">Summary</h3>
                                            <hr class="my-4">
                                            <c:forEach items="${carts}" var="c"> 
                                                <table>
                                                    <tr>
                                                        <td>${c.value.product.name}</td>
                                                        <td>     </td>
                                                        <td>     </td>
                                                        <td>${c.value.product.price * c.value.quantity}</td>
                                                    </tr>

                                                </table>


                                            </c:forEach>

                                            <hr class="my-4">


                                            <div class="d-flex justify-content-between mb-5">
                                                <h5 class="text-uppercase">Total price</h5>
                                                <h5>${sessionScope.totalPrice}</h5>
                                            </div>
                                            <form action="checkbought" method="get">
                                                <button type="submit" class="btn btn-dark btn-block btn-lg"
                                                        data-mdb-ripple-color="dark">Register</button>
                                            </form>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

    </body>
</html>
