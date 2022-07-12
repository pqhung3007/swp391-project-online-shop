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
        <link href="https://fonts.googleapis.com/icon?family=Material+Symbols+Outlined" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <%@include file="components/sidebarShipper.jsp" %>
            <main>
                <h1>Manage Waiting Orders</h1>

                <!-- USER TABLE -->
                <div class="recent-orders">
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
                                        <fmt:formatDate pattern = "dd/MM/yy" value = "${l.orderDate}"/>
                                    </td>
                                    <td>${l.status == 3 ? "Waiting" : "Completed"}</td>
                                    <td>
                                        <a href="updateStatusOrder?oid=${l.orderId}&status=4">Ship</a>
                                    </td>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                </div>
            </main>
        </div>
    </body>
</html>