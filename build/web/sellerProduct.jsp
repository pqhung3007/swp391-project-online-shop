
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>All Products</title>
        <link rel="stylesheet" href="./css/seller/home.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Symbols+Outlined" rel="stylesheet">
    </head>
    <body>
        <div class="container-product">
            <!-- VERTICAL NAVBAR -->
            <%@include file="components/sidebarSeller.jsp" %>
            <!-- MAIN SECTION -->
            <main>
                <h1>Products</h1>
                <div class="insights">
                    <c:forEach items="${productList}" var="product">
                        <div class="insight sales">
                            <div class="insight-content">
                                <div class="insight-figure">
                                    <img src="${product.productImage}" width="100%">
                                    <h2>${product.name}</h2>
                                    <p>${product.price} VND</p>
                                </div>
                                <button><a href="update-product?pid=${product.productId}">Edit</a></button>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </main>
        </div>

        <script src="https://kit.fontawesome.com/3a6c73e27c.js" crossorigin="anonymous"></script>
    </body>
</html>