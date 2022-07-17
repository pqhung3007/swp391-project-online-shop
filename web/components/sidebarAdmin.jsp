<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page contentType="text/html" pageEncoding="UTF-8" %>

        <aside>
            <div class="navbar-top">
                <div class="navbar-heading">
                    <h2>Welcome back, ${account.userName}</h2>
                    <p class="text-muted">Admin</p>
                </div>
                <div class="btn-close">
                    <span class="material-symbols-outlined"> close </span>
                </div>
            </div>

            <div class="navbar-content">
                <a href="create-account">
                    <span class="material-symbols-outlined"> person </span>
                    <h3>Create Account</h3>
                </a>
                <a href="manage">
                    <span class="material-symbols-outlined"> inventory </span>
                    <h3>Manage Accounts</h3>
                </a>
                <a href="logout" class="logout">
                    <span class="material-symbols-outlined"> logout </span>
                    <h3>Logout</h3>
                </a>
            </div>
        </aside>

        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script>
            $(function () {
                var href = window.location.href;
                $('.navbar-content a').each(function (e, i) {
                    if (href.indexOf($(this).attr('href')) >= 0) {
                        $(this).addClass('active');
                    }
                });
            });
        </script>