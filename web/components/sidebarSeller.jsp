<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
<head>
    <title>TODO supply a title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <aside>
        <div class="navbar-top">
            <div class="profile">
                <div class="info">
                    <h2>Welcome back, ${sessionScope.account.userName}</h2>
                    <p class="text-muted">Seller</p>
                </div>
                <div class="profile-photo">
                    <img src="${user.image}" alt="">
                </div>
            </div>
            <div class="btn-close">
                <span class="material-symbols-outlined">
                    close
                </span>
            </div>
        </div>

        <div class="navbar-content">
            <a href="seller-dashboard">
                <span class="material-symbols-outlined">
                    grid_view
                </span>
                <h3>Dashboard</h3>
            </a>
            <a href="my-orders">
                <span class="material-symbols-outlined">
                    receipt_long
                </span>
                <h3>Orders</h3>
            </a>
            <a href="my-products">
                <span class="material-symbols-outlined">
                    inventory_2
                </span>
                <h3>Products</h3>
            </a>
            <a href="add-product">
                <span class="material-symbols-outlined">
                    add
                </span>
                <h3>Add Product</h3>
            </a>
            <a href="settings">
                <span class="material-symbols-outlined">
                    account_circle
                </span>
                <h3>Account Settings</h3>
            </a>
            <a href="logout">
                <span class="material-symbols-outlined">
                    logout
                </span>
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
</body>
</html>