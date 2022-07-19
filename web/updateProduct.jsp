<%-- 
    Document   : updateProduct
    Created on : Jun 24, 2022, 2:46:59 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="img/icons8-supplier-16.png" rel="icon" />
        <title>Edit Product</title>
        <link rel="stylesheet" href="css/seller/home.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Symbols+Outlined" rel="stylesheet">
    </head>
    <body>
        <div class="container-product">
            <!-- VERTICAL NAVBAR -->
            <%@include file="components/sidebarSeller.jsp" %>
            <!-- MAIN SECTION -->
            <div style="margin-top: 2rem">
                <h1>Edit product</h1>
                <form action="update-product" method="POST">
                    <div class="input-product">
                        <div class="input-image">
                            <div>
                                <label for="input">
                                    Choose Image <br>
                                    <i class="fa-solid fa-camera"></i>
                                    <input class="field image-name" 
                                           id="input"
                                           type="file" 
                                           name="image"
                                           style="display: none">
                                </label>
                            </div>
                            <input class="field image-name" type="hidden" placeholder="Product Image URL" name="image" value="${product.productImage}">
                            <img id="image" src="${product.productImage}"/>
                        </div>
                        <div class="input-fields">
                            <input class="field" type="text" placeholder="Product Name" name="name" value="${product.name}">
                            <input class="field" type="number" placeholder="Product Price (VND)" name="price" value="${product.price}">
                            <select name="category" class="field">
                                <!--current category of product-->
                                <option value="${currentCategory.categoryId}">${currentCategory.categoryName}</option>
                                <c:forEach items="${categories}" var="c">
                                    <!--if category matches with the current category then don't display-->
                                    <c:if test="${c.categoryId != currentCategory.categoryId}">
                                        <option value="${c.categoryId}">${c.categoryName}</option>
                                    </c:if>
                                </c:forEach>
                            </select>
                            <fieldset class="info">
                                <legend>Product Description</legend>
                                <textarea name="description">${product.description}</textarea>
                            </fieldset>
                            <input type="hidden" name="pid" value="${product.productId}"/>
                            <input class="btn-submit" type="submit" value="Save">
                        </div>
                    </div>
                </form>
            </div>

        </div>

        <script src="app.js"></script>
        <script>
            const pictureURL = document.querySelector('.image-name');
            function changePicture() {
                document.querySelector('#image').src = pictureURL.value;
            }
            pictureURL.addEventListener("input", changePicture)
        </script>

    </body>
</html>
