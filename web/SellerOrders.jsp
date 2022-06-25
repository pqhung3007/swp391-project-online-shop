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
                                            <td><a href="#"class="success">See details</a></td>
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
                        <div class="update">
                            <div class="profile-photo">
                                <img src="img/testimonial-2.jpg" alt="">
                            </div>
                            <div class="message">
                                <p><b>Quang Hung</b> received his order of Doner Kebab </p>
                                <small class="text-muted">2 minutes ago</small>
                            </div>
                        </div>

                        <div class="update">
                            <div class="profile-photo">
                                <img src="img/testimonial-3.jpg" alt="">
                            </div>
                            <div class="message">
                                <p><b>Hai Anh</b> rated 5 stars for your product </p>
                                <small class="text-muted">3 minutes ago</small>
                            </div>
                        </div>

                        <div class="update">
                            <div class="profile-photo">
                                <img src="img/testimonial-4.jpg" alt="">
                            </div>
                            <div class="message">
                                <p><b>Minh Hieu</b> received his order of roasted chicken </p>
                                <small class="text-muted">5 minutes ago</small>
                            </div>
                        </div>
                    </div>
                    
                </div>
                </div>
            </div>

        </div>

        <script src="js/seller.js"></script>
    </body>
</html>