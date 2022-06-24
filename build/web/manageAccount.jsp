<%-- Document : Admin Created on : Jun 3, 2022, 9:53:26 AM Author : Admin --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Admin Management</title>
        <link rel="stylesheet" href="css/admin/manage.css" />
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Playfair+Display:wght@600;700&display=swap"
            rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="js/animate/animate.min.css" rel="stylesheet">
        <link href="js/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/admin.css" rel="stylesheet">
        <link href="css/home.css" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" />
        

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet" />
        



    </head>
    <body>
        <div class="container">
            <!-- VERTICAL NAVBAR -->
            <%@include file="components/sidebar.jsp" %>

            <!-- MAIN SECTION -->
            <main>
                <h1>Manage Accounts</h1>

                <!-- USER TABLE -->
                <div class="recent-orders">
                    <h2>Recent Users</h2>
                    <form action="manage" method="post">
                        <select name="roles" onchange="this.form.submit();">
                            <c:forEach items="${roles}" var="r">
                                <option value="${r.roleId}" ${selectedId == r.roleId?"selected":""}>${r.roleName}</option>
                            </c:forEach>
                        </select>
                        <table>
                            <thead>
                                <tr>
                                    <th>Account ID</th>
                                    <th>Username</th>
                                    <th>Role Name</th>
                                    <th>Status</th>
                                    <th colspan="2">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${accounts}" var="a">
                                    <tr>
                                        <td>${a.accountId}</td>
                                        <td>${a.userName}</td>
                                        <td>${a.roleId}</td>
                                        <td>
                                            <c:if test="${a.status == true}">
                                                Active
                                            </c:if>
                                            <c:if test="${a.status == false}">
                                                Inactive
                                            </c:if>
                                        </td>
                                        <td class="primary"><a href="editAccount?aid=${a.accountId}">Edit</a></td>
                                        <td class="primary" style="width: 7rem">
                                            <c:if test="${!a.status}">
                                                <a href="updateStatus?aid=${a.accountId}&status=1">Authorize</a>
                                            </c:if>
                                            <c:if test="${a.status}">
                                                <a href="updateStatus?aid=${a.accountId}&status=0">Unauthorize</a>
                                            </c:if>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </form>
                </div>
           



       






        <!-- <script src="js/seller.js"></script> -->
    </body>
</html>
