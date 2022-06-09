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
        <link href="css/style.css" rel="stylesheet">
        <!-- Libraries Stylesheet -->
        <link href="js/animate/animate.min.css" rel="stylesheet">
        <link href="js/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body style="background-color: #ffc107;">

        <%@include file="components/navbar.jsp" %>

        <div class="container" style="margin: 8rem auto; ">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="card card-registration card-registration-2" style="border-radius: 15px;">
                    <div class="row g-0">
                        <div class="col-lg-8">
                            <div class="p-5">
                                <div class="d-flex justify-content-between align-items-center mb-5">
                                    <h1 class="fw-bold mb-0 text-black">Shopping Cart</h1>
                                    <h6 class="mb-0 text-muted"${sessionScope.carts.size()} items</h6>
                                </div>
                                <c:choose>
                                    <c:when test="${sessionScope.carts==null||sessionScope.carts.size()==0}">
                                        <p>Cart is empty!</p>
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
                                                    <p class="text-black mb-0">${c.value.product.name}</p>
                                                </div>
                                                <div class="col-md-6 col-lg-6 col-xl-6 d-flex align-items-center justify-content-around">
                                                    <div>
                                                        <a class="btn btn-link px-2"
                                                           href="updatequantity?action=dec&id=${c.value.product.productId}">
                                                            <i class="fas fa-minus"></i>
                                                        </a>
                                                        <input id="form1" name="quantity" value="${c.value.quantity}" type="text"
                                                               style="max-width: 3rem; text-align: center"
                                                               class="form-control-sm"
                                                               />
                                                        <a class="btn btn-link px-2"
                                                           href="updatequantity?action=inc&id=${c.value.product.productId}">
                                                            <i class="fas fa-plus"></i>
                                                        </a>
                                                    </div>

                                                    <p class="mb-0">${c.value.product.price * c.value.quantity} VND</p>
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
                                                class="fas fa-long-arrow-alt-left me-2"></i>Back to searching</a>
                                    </h6>
                                </div>
                            </div>
                        </div>
                                    <c:choose>
                                        <c:when test="${sessionScope.carts==null||sessionScope.carts.size()==0}">

                                        </c:when>
                                        <c:otherwise>
                                            <div class="col-lg-4">
                                                <div class="p-5">
                                                    <h2 class="mb-5 mt-2 pt-1">Summary</h2>
                                                    <hr class="my-4">
                                                    <c:forEach items="${carts}" var="c"> 
                                                        <div class="d-flex justify-content-between">
                                                            <p>${c.value.product.name}</p>
                                                            <p>${c.value.product.price * c.value.quantity}</p>
                                                        </div>
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
                                        </c:otherwise>             
                                    </c:choose>       


                                </div>
      
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <%@include file="components/footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

    </body>
</html>
