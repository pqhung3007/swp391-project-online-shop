<%-- Document : createAccountAdmin Created on : Jun 28, 2022, 11:17:28 AM Author : Le Viet --%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <!DOCTYPE html>
            <html>
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Create Account</title>
                <link rel="stylesheet" href="css/admin/edit.css" />
                <link href="img/icons8-admin-settings-male-16.png" rel="icon" />
                <link href="https://fonts.googleapis.com/icon?family=Material+Symbols+Outlined" rel="stylesheet" />
            </head>
            <body>
                <div class="container-create">
                    <%@include file="components/sidebarAdmin.jsp" %>
                        <main class="main">
                            <h1>Create Account</h1>
                            <form action="create-account" method="post">
                                <label for="">Create account for</label>
                                <select name="roles">
                                    <c:forEach items="${roles}" var="r">
                                        <option value="${r.roleId}" ${selectedId==r.roleId?"selected":""}>${r.roleName}
                                        </option>
                                    </c:forEach>
                                </select>
                                <div class="form">
                                    <label>Username</label>
                                    <input oninput="blankAlert(this.value)" type="text" name="username" required>

                                    <h6 id="blankAlert" style="display: none; color:red;">Username can not contain white
                                        space</h6>
                                    <label>Password</label>
                                    <input type="password" name="password" required>

                                    <button class="btn-submit" type="submit">Create</button>
                                </div>
                            </form>
                        </main>
                </div>

                <script src="./js/validate.js"></script>
            </body>
            </html>