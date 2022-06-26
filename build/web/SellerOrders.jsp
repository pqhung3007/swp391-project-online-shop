<%-- Document : SellerDashboard Created on : 13-Jun-2022, 09:34:30 Author : Administrator --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Seller Dashboard</title>
        <link rel="stylesheet" href="css/seller/home.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Symbols+Outlined" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    </head>
    <body>
        <div class="container">
            <!-- VERTICAL NAVBAR -->
            <%@include file="components/sidebarSeller.jsp" %>

            <!-- MAIN SECTION -->
            <main>
                <h1>All Orders</h1>

                <!-- ORDER TABLE -->
                <div class="recent-orders">
                    <c:choose>
                        <c:when test="${orderList.size()== 0 || orderList == null}">
                            <h1>No recent order</h1>
                        </c:when>
                        <c:otherwise>
                            <table>
                                <thead>
                                    <tr>
                                        <th>Customer Name</th>
                                        <th>Phone</th>
                                        <th>Address</th>
                                        <th>Order ID</th>
                                        <th>Order Date</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="l" items="${orderList}">
                                        <tr>
                                            <td>${l.customerName}</td>
                                            <td>${l.phone}</td>
                                            <td>${l.address}</td>
                                            <td>${l.orderId}</td>
                                            <td>
                                                <fmt:formatDate pattern = "dd/MM/yy" value = "${l.orderDate}"/>
                                            </td>
                                            <td><a href="#" class="success detail">See details</a></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </c:otherwise>
                    </c:choose>
                </div>
            </main>

            <!-- TOP RIGHT COLUMN -->
            <div class="right-col">
                <div class="top">
                    <button class="btn-menu">
                        <span class="material-symbols-outlined">
                            menu
                        </span>
                    </button>

                </div>

                <div class="recent-updates">
                    <h1>Order Detail</h1>
                    <div class="updates" style="margin-top: 2rem">
                        <div>
                            <div id="content">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!--<script src="js/seller.js"></script>-->
    <script>
        $(document).ready(function () {
            $(".detail").click(function () {
                var currentRow=$(this).closest("tr");
                var data=currentRow.find("td:eq(3)").text();
                console.log(data);
                $.ajax({
                    url: "load-detail",
                    type: 'GET',
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