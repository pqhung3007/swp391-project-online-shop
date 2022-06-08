<%-- 
    Document   : checkBought.jsp
    Created on : Jun 8, 2022, 1:55:00 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Gọi và đặt món - Du Lịch </title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
              integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />

    </head>

    <body>
        <!-- Product section-->
        <section class="py-5">

            <div class="container" style="min-height: 1000px">
                <h1>Checkout</h1>
                <form action="checkbought" method="post">
                    <div class="row">
                        <div class="col-md-8" style="border: 1px solid #ccc; border-radius: 5px; padding: 1rem">
                            <h3>List Products</h3>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">STT</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Quantity</th>
                                        <th scope="col">Total Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <tbody>
                                    <c:set var="total" value="${0}"/>
                                    <c:forEach items="${carts}" var="c" varStatus="index">
                                        <tr>
                                            <th scope="row">${index.count}</th>
                                            <td>${c.value.product.name}</td>
                                            <td>${c.value.product.price}</td>
                                            <td>${c.value.quantity}</td>
                                            <td>${c.value.product.price * c.value.quantity}</td>
                                        </tr>
                                        <c:set var="total" value="${total + c.value.product.price * c.value.quantity}"/>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <h3>Total Amount: ${total}</h3>
                        </div>
                        <div class="col-md-4" style="border: 1px solid #ccc; border-radius: 5px; padding: 1rem">
                                <h3>Information of customer</h3>

                                <div class="mb-3">
                                    <label for="name" class="form-label">Name</label>
                                    <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp">
                                </div>
                                <div class="mb-3">
                                    <label for="phone" class="form-label">Phone</label>
                                    <input type="text" class="form-control" id="phone" name="phone"
                                           aria-describedby="emailHelp">
                                </div>
                                <div class="mb-3">
                                    <label for="email" class="form-label">Email</label>
                                    <input type="text" class="form-control" id="email" name="email"
                                           aria-describedby="emailHelp">
                                </div>
                                <div class="mb-3">
                                    <label for="note" class="form-label">Note</label>
                                    <textarea class="form-control" id="note" name="note" rows="3"></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary w-100">Submit</button>
                        </div>

                    </div>
                </form>
            </div>
        </section>




        <%@include file="components/footer.jsp" %>
    </body>

</html>