<%-- Document : Admin Created on : Jun 3, 2022, 9:53:26 AM Author : Admin --%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <!DOCTYPE html>
            <html>
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>View Account</title>
                <link href="img/icons8-admin-settings-male-16.png" rel="icon" />
                <link rel="stylesheet" href="css/admin/edit.css" />
                <link href="https://fonts.googleapis.com/icon?family=Material+Symbols+Outlined" rel="stylesheet" />
            </head>

            <body>
                <div class="container">
                    <!-- VERTICAL NAVBAR -->
                    <%@include file="components/sidebarAdmin.jsp" %>

                        <!-- MAIN SECTION -->
                        <main>
                            <h1>View Account</h1>
                            <button class="btn-submit" type="submit"><a href="manage">Back</a></button>

                            <!-- EDIT USER -->
                            <div class="edit-user">
                                <input type="hidden" name="accountID" value="${user.account.accountId}">
                                <div class="user-image">
                                    <img src="${user.image}" alt="" srcset="">
                                </div>
                                <div class="user-info">
                                    <div>
                                        <label>Full Name</label>
                                        <input type="text" name="name" value="${user.name}" disabled>
                                        <label>Phone</label>
                                        <input type="text" name="phone" value="${user.phone}" disabled>
                                    </div>
                                    <div>
                                        <label>Address</label>
                                        <input type="text" name="address" value="${user.address}" disabled>
                                        <label>Email</label>
                                        <input type="text" name="email" value="${user.email}" disabled>
                                    </div>
                                </div>
                            </div>
                        </main>

                        <script src="js/main.js"></script>
            </body>
            </html>