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
                    <link href="img/icons8-supplier-16.png" rel="icon" />
                    <link rel="stylesheet" href="css/seller/home.css">
                    <link href="https://fonts.googleapis.com/icon?family=Material+Symbols+Outlined" rel="stylesheet">
                </head>
                <body>
                    <div class="container">
                        <!-- VERTICAL NAVBAR -->
                        <%@include file="components/sidebarSeller.jsp" %>

                            <!-- MAIN SECTION -->
                            <main>
                                <h1>Dashboard</h1>
                                <div class="date">
                                    <input type="date" name="" id="">
                                </div>

                                <div class="insights">
                                    <div class="insight sales">
                                        <span class="material-symbols-outlined">
                                            analytics
                                        </span>
                                        <div class="insight-content">
                                            <div class="insight-figure">
                                                <h3>Total Sales</h3>
                                                <p>${totalMoney} VND</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="insight products">
                                        <span class="material-symbols-outlined">
                                            inventory
                                        </span>
                                        <div class="insight-content">
                                            <div class="insight-figure">
                                                <h3>Total Products</h3>
                                                <p>${totalProducts}</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="insight ratings">
                                        <span class="material-symbols-outlined">
                                            reviews
                                        </span>
                                        <div class="insight-content">
                                            <div class="insight-figure">
                                                <h3>Average Ratings</h3>
                                                <p>4.2</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- ORDER TABLE -->
                                <div class="recent-orders">
                                    <h2>Recent Orders</h2>
                                    <c:choose>
                                        <c:when test="${orderList.size()== 0 || orderList == null}">
                                            <h1>No recent order</h1>
                                        </c:when>
                                        <c:otherwise>
                                            <table>
                                                <thead>
                                                    <tr>
                                                        <th>Order ID</th>
                                                        <th>Customer Name</th>
                                                        <th>Phone</th>
                                                        <th>Address</th>
                                                        <th>Order Date</th>
                                                        <th>Status</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="l" items="${orderList}">
                                                        <tr>
                                                            <td>${l.orderId}</td>
                                                            <td>${l.customerName}</td>
                                                            <td>${l.phone}</td>
                                                            <td>${l.address}</td>
                                                            <td>
                                                                <fmt:formatDate pattern="dd/MM/yy"
                                                                    value="${l.orderDate}" />
                                                            </td>
                                                            <td class="status">
                                                                <c:if test="${l.status == 1}">
                                                                    Unchecked
                                                                </c:if>
                                                                <c:if test="${l.status == 3}">
                                                                    Waiting
                                                                </c:if>
                                                                <c:if test="${l.status == 4}">
                                                                    Completed
                                                                </c:if>
                                                            </td>
                                                            <td><a href="status-seller?oid=${l.orderId}&status=3" <c:if
                                                                    test="${l.status == 3 || l.status == 4}">style="pointer-events:
                                                                    none; cursor: default;"</c:if>>Check</a></td>
                                                        </tr>
                                                    </c:forEach>

                                                </tbody>
                                            </table>
                                        </c:otherwise>
                                    </c:choose>
                                    <a href="my-orders" class="cta-btn">Show All</a>
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

                                <!--Insert bestseller here-->
                                <div class="recent-updates">
                                    <h2>Best Sellers</h2>
                                    <small>Last updated 24 hours ago</small>
                                    <c:forEach var="product" items="${bestSellers}">
                                        <div class="updates">
                                            <div class="update">
                                                <div class="profile-photo">
                                                    <img src="${product.productImage}" alt="">
                                                </div>
                                                <div class="message">
                                                    <p><b>${product.name}</b> was ordered <b>${product.quantity}</b>
                                                        times</p>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>

                    </div>

                    <script src="js/seller.js"></script>
                </body>
                </html>