<%-- Document : Admin Created on : Jun 3, 2022, 9:53:26 AM Author : Admin --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Admin Management</title>
        <link rel="stylesheet" href="css/admin/edit.css" />
        <link
            href="https://fonts.googleapis.com/icon?family=Material+Symbols+Outlined"
            rel="stylesheet"
            />
    </head>

    <body>
        <div class="container">
            <!-- VERTICAL NAVBAR -->
            <%@include file="components/sidebarAdmin.jsp" %>

            <!-- MAIN SECTION -->
            <main>
                <h1>Edit Accounts</h1>

                <!-- EDIT USER -->
                <div class="edit-user">
                    <form class="edit-form" name="form1" action="editAccount" method="post" onsubmit="required()">
                        <input type="hidden" name="accountID" value="${user.accountID}">
                        Full name<input type="text" name="name" value="${user.name}">
                        Phone<input type="text" name="phone" value="${user.phone}">
                        Address<input type="text" name="address" value="${user.address}">
                        Email<input type="text" name="email" value="${user.email}">
                        <input class="btn-submit" type="submit" value="Edit">
                    </form>
                </div>
            </main>

            <script src="js/main.js"></script>
    </body>
</html>