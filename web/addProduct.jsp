<%-- 
    Document   : addProduct
    Created on : 20-Jun-2022, 10:29:59
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <div class="container">
            <!-- VERTICAL NAVBAR -->
            <%@include file="components/sidebar.jsp" %>
            <!-- MAIN SECTION -->
            <main>
                <h1>Add new product</h1>
                <form action="action">
                    <div class="input-product">
                        <div class="input-image">
                            <input class="field" type="text" placeholder="Product Image URL">
                            <img src="img/service-2.jpg" alt="">
                        </div>
                        <div class="input-fields">
                            <input class="field" type="text" placeholder="Product Name">
                            <input class="field" type="text" placeholder="Product Price">
                            <input class="field" type="text" placeholder="Product Quantity">
                            <fieldset class="info">
                                <legend>Product Description</legend>
                                <textarea></textarea>
                            </fieldset>
                            <input class="btn-submit" type="submit" value="Save"> 
                        </div>
                    </div>
                </form>
            </main>

        </div>

        <script src="app.js"></script>
    </body>
</html>
