<%-- 
    Document   : sidebarShipper
    Created on : 11-Jul-2022, 16:09:45
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<aside>
    <div class="navbar-top">
        <div class="profile">
            <div class="info">
                <h2>Welcome back, ${sessionScope.account.userName}</h2>
                <p class="text-muted">Shipper</p>
            </div>
            <div class="profile-photo">
                <img src="${user.image}" alt="">
            </div>
        </div>
        <div class="btn-close">
            <span class="material-symbols-outlined"> close </span>
        </div>
    </div>

    <div class="navbar-content">
        <a href="shipper-dashboard">
            <span class="material-symbols-outlined"> grid_view </span>
            <h3>Dashboard</h3>
        </a>
        <a href="#">
            <span class="material-symbols-outlined"> inventory </span>
            <h3>View Orders</h3>
        </a>
        <a href="settings">
            <span class="material-symbols-outlined"> person </span>
            <h3>View Settings</h3>
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
