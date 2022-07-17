<%-- Document : sellerSettings Created on : 30-Jun-2022, 08:43:12 Author : Administrator --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <!DOCTYPE html>
            <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Account Settings</title>
                <link href="img/icons8-supplier-16.png" rel="icon" />
                <link rel="stylesheet" href="css/seller/home.css">
                <link href="https://fonts.googleapis.com/icon?family=Material+Symbols+Outlined" rel="stylesheet">
            </head>
            <body>
                <div class="container-product">
                    <c:if test="${sessionScope.account.roleId == 3}">
                        <%@include file="components/sidebarSeller.jsp" %>
                    </c:if>
                    <c:if test="${sessionScope.account.roleId == 4}">
                        <%@include file="components/sidebarShipper.jsp" %>
                    </c:if>

                    <div class="container-settings">
                        <div class="container-info">
                            <p class="container-title">If you are new to this account, please fill in all fields in this
                                form to update personal
                                info</p>
                            <form action="update-info" method="post" enctype='multipart/form-data'>
                                <div class="user-image">
                                    <img src="${user.image}" alt="">
                                </div>
                                <div class="image-input">
                                    <label for="input">
                                        Change Image <br>
                                        <i class="fa-solid fa-camera"></i>
                                        <input class="field image-name" id="input" type="file" name="image"
                                            style="display: none">
                                    </label>
                                </div>
                                <label>Full Name</label>
                                <input type="text" name="name" value="${user.name}">
                                <label>Phone</label>
                                <input type="text" name="phone" value="${user.phone}">
                                <label>Address</label>
                                <input type="text" name="address" value="${user.address}">
                                <label>Email</label>
                                <input type="email" name="email" value="${user.email}">
                                <button class="btn-submit" type="submit">Update info</button>
                            </form>
                        </div>

                        <div class="container-account">
                            <p class="container-title">Remember to set a strong password to avoid unauthorized access
                            </p>
                            <form action="update-account" method="post">
                                <label>Username</label>
                                <input type="text" name="username" value="${user.account.userName}">
                                <label>Password</label>
                                <input type="password" name="password" value="${user.account.passWord}">
                                <button class="btn-submit" type="submit">Save</button>
                            </form>
                        </div>
                    </div>
                </div>
            </body>
            </html>