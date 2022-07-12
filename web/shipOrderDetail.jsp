<%-- Document : shipOrderDetail Created on : 12-Jul-2022, 23:46:34 Author : Administrator --%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <!DOCTYPE html>
            <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Order Details</title>
                <link rel="stylesheet" href="css/admin/manage.css" />
                <link href="https://fonts.googleapis.com/icon?family=Material+Symbols+Outlined" rel="stylesheet">
            </head>
            <body>
                <div class="container">
                    <%@include file="components/sidebarShipper.jsp" %>
                        <main>
                            <h2>Detail of order #${requestScope.orderId}</h2>
                            <table>
                                <tr>
                                    <th>Product Name</th>
                                    <th>Quantity</th>
                                    <th>Price</th>
                                    <th>Seller Name</th>
                                    <th>Seller Address</th>
                                    <th>Seller Phone</th>
                                </tr>
                                <c:forEach var="detail" items="${detail}">
                                    <tr>
                                        <td>${detail.productName}</td>
                                        <td>${detail.quantity}</td>
                                        <td>${detail.price}</td>
                                        <td>${detail.sellerName}</td>
                                        <td>${detail.address}</td>
                                        <td>${detail.phone}</td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </main>
                </div>
            </body>
            </html>