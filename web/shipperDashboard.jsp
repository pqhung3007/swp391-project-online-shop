<%-- Document : shipperDashboard Created on : 11-Jul-2022, 16:09:15 Author : Administrator --%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@page contentType="text/html" pageEncoding="UTF-8" %>
                <!DOCTYPE html>
                <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                    <title>Shipper Dashboard</title>
                    <link rel="stylesheet" href="css/admin/manage.css" />
                    <!-- Favicon -->
                    <link href="img/icons8-admin-settings-male-16.png" rel="icon" />
                    <link href="https://fonts.googleapis.com/icon?family=Material+Symbols+Outlined" rel="stylesheet">
                </head>
                <body>
                    <div class="container">
                        <%@include file="components/sidebarShipper.jsp" %>
                            <main>
                                <h1 style="margin-bottom: 2rem">Shipper Dashboard</h1>

                                <h2>General Information</h2>
                                <div class="insights">
                                    <div class="insight sales">
                                        <span class="material-symbols-outlined">
                                            analytics
                                        </span>
                                        <div class="insight-content">
                                            <div class="insight-figure">
                                                <h3>Total Money Gained</h3>
                                                <p>${15000 * total} VND</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="insight products">
                                        <span class="material-symbols-outlined">
                                            inventory
                                        </span>
                                        <div class="insight-content">
                                            <div class="insight-figure">
                                                <h3>Total Shipped Orders</h3>
                                                <p>${total}</p>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <!-- USER TABLE -->
                                <div class="recent-orders">
                                <h2>Manage Orders</h2>
                                    <table>
                                        <thead>
                                            <tr>
                                                <th>Order ID</th>
                                                <th>Customer Name</th>
                                                <th>Phone</th>
                                                <th>Address</th>
                                                <th>Order Date</th>
                                                <th>Status</th>
                                                <th colspan="2">Action</th>
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
                                                        <fmt:formatDate pattern="dd/MM/yy" value="${l.orderDate}" />
                                                    </td>
                                                    <td class="status">${l.status == 3 ? "Waiting" : "Completed"}</td>
                                                    <td><a href="updateStatusOrder?oid=${l.orderId}&status=4"
                                                            class="success" <c:if
                                                            test="${l.status == 4}">style="pointer-events:
                                                            none; cursor: default; color:rgba(0,0,0,0.5)"</c:if>
                                                            >Ship</a></td>
                                                    <td><a href="orders?orderId=${l.orderId}" class="success">See
                                                            details</a></td>
                                                </tr>
                                            </c:forEach>

                                        </tbody>
                                    </table>
                                </div>
                            </main>
                    </div>
                    <script src="js/seller.js"></script>
                </body>
                </html>