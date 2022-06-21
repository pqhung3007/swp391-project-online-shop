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
            href="https://fonts.googleapis.com/icon?family=Material+Symbols+Outlined"
            rel="stylesheet"
            />
    </head>
    <body>
        <div class="container">
            <!-- VERTICAL NAVBAR -->
            <aside>
                <div class="navbar-top">
                    <div class="navbar-heading">
                        <h2>CoMa</h2>
                    </div>
                    <div class="btn-close">
                        <span class="material-symbols-outlined"> close </span>
                    </div>
                </div>

                <div class="navbar-content">
                    <a href="#" class="active">
                        <span class="material-symbols-outlined"> grid_view </span>
                        <h3>Dashboard</h3>
                    </a>
                    <a href="#">
                        <span class="material-symbols-outlined"> person </span>
                        <h3>About</h3>
                    </a>
                    <a href="#">
                        <span class="material-symbols-outlined"> inventory </span>
                        <h3>Manage Accounts</h3>
                    </a>
                    <a href="#">
                        <span class="material-symbols-outlined"> insights </span>
                        <h3>Contact</h3>
                    </a>
                    <c:if test="${sessionScope.account !=null}">
                        <a href="#">
                            <span class="material-symbols-outlined"> logout </span>
                            <h3>Logout</h3>
                        </a>
                    </c:if>
                </div>
            </aside>

            <!-- MAIN SECTION -->
            <main>
                <h1>Manage Accounts</h1>

                <!-- USER TABLE -->
                <div class="recent-orders">
                    <h2>Recent Users</h2>
                    <table>
                        <thead>
                            <tr>
                                <th>Account ID</th>
                                <th>Username</th>
                                <th>Role Name</th>
                                <th>Status</th>
                                <th>Edit</th>
                                <th>Action</th>
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
                                    <td class="primary">
                                        <c:if test="${!a.status}">
                                            <a href="updateStatus?aid=${a.accountId}&status=1">Cấp quyền tài khoản</a>
                                        </c:if>
                                        <c:if test="${a.status}">
                                            <a href="updateStatus?aid=${a.accountId}&status=0">Gỡ quyền tài khoản</a>
                                        </c:if>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </main>
        </div>

        <!-- <script src="js/seller.js"></script> -->
    </body>
</html>
