<%-- Document : addProduct Created on : 20-Jun-2022, 10:29:59 Author : Administrator --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add New Product</title>
        <link rel="stylesheet" href="css/seller/home.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Symbols+Outlined" rel="stylesheet">
    </head>
    <body>
        <div class="container-product">
            <!-- VERTICAL NAVBAR -->
            <%@include file="components/sidebar.jsp" %>
            <!-- MAIN SECTION -->
            <div style="margin-top: 2rem">
                <h1>Add new product</h1>
                <form action="action">
                    <div class="input-product">
                        <div class="input-image">
                            <input class="field image-name" type="text" placeholder="Product Image URL" name="image">
                            <img id="image" />
                        </div>
                        <div class="input-fields">
                            <input class="field" type="text" placeholder="Product Name" name="name">
                            <input class="field" type="number" placeholder="Product Price (VND)" name="price">
                            <select name="category" class="field">
                                <c:forEach items="${categories}" var="c">
                                    <option>${c.categoryName}</option>
                                </c:forEach>
                            </select>
                            <fieldset class="info">
                                <legend>Product Description</legend>
                                <textarea></textarea>
                            </fieldset>
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