<%-- Document : SellerDashboard Created on : 13-Jun-2022, 09:34:30 Author : Administrator --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Seller Dashboard</title>
            <link rel="stylesheet" href="css/seller/home.css">
            <link href="https://fonts.googleapis.com/icon?family=Material+Symbols+Outlined" rel="stylesheet">
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
                            <span class="material-symbols-outlined">
                                close
                            </span>
                        </div>
                    </div>

                    <div class="navbar-content">
                        <a href="#" class="active">
                            <span class="material-symbols-outlined">
                                grid_view
                            </span>
                            <h3>Dashboard</h3>
                        </a>
                        <a href="#">
                            <span class="material-symbols-outlined">
                                person
                            </span>
                            <h3>Customers</h3>
                        </a>
                        <a href="#">
                            <span class="material-symbols-outlined">
                                receipt_long
                            </span>
                            <h3>Orders</h3>
                        </a>
                        <a href="#">
                            <span class="material-symbols-outlined">
                                inventory_2
                            </span>
                            <h3>Products</h3>
                        </a>
                        <a href="#">
                            <span class="material-symbols-outlined">
                                add
                            </span>
                            <h3>Add Product</h3>
                        </a>
                        <a href="#">
                            <span class="material-symbols-outlined">
                                logout
                            </span>
                            <h3>Logout</h3>
                        </a>
                    </div>
                </aside>

                <!-- MAIN SECTION -->
                <main>
                    <h1>Dashboard</h1>
                    <div class="date">
                        <input type="date" name="" id="">
                    </div>

                    <div class="insights">
                        <div class="insight sales">
                            <span class="material-symbols-outlined">
                                analytics
                            </span>
                            <div class="insight-content">
                                <div class="insight-figure">
                                    <h2>Total Sales</h2>
                                    <p>3.000.000 VND</p>
                                </div>
                                <small class="text-muted">Last 24 hours</small>
                            </div>
                        </div>

                        <div class="insight products">
                            <span class="material-symbols-outlined">
                                inventory
                            </span>
                            <div class="insight-content">
                                <div class="insight-figure">
                                    <h2>Total Products</h2>
                                    <p>20</p>
                                </div>
                                <small class="text-muted">Last 24 hours</small>
                            </div>
                        </div>

                        <div class="insight income">
                            <span class="material-symbols-outlined">
                                trending_up
                            </span>
                            <div class="insight-content">
                                <div class="insight-figure">
                                    <h2>Total Income</h2>
                                    <p>3.000.000 VND</p>
                                </div>
                                <small class="text-muted">Last 24 hours</small>
                            </div>
                        </div>
                    </div>
                    <!-- ORDER TABLE -->
                    <div class="recent-orders">
                        <h2>Recent Orders</h2>
                        <table>
                            <thead>
                                <tr>
                                    <th>Product ID</th>
                                    <th>Product Name</th>
                                    <th>Payment</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>0005</td>
                                    <td>Pham Quang Hung</td>
                                    <td>Due</td>
                                    <td class="success">Done</td>
                                    <td class="primary"><a href="#">See details</a></td>
                                </tr>
                                <tr>
                                    <td>0062</td>
                                    <td>Ha Hai Anh</td>
                                    <td>Due</td>
                                    <td class="warning">Pending</td>
                                    <td class="primary"><a href="#">See details</a></td>
                                </tr>
                                <tr>
                                    <td>0247</td>
                                    <td>Cao Quynh Anh</td>
                                    <td>Due</td>
                                    <td class="success">Done</td>
                                    <td class="primary"><a href="#">See details</a></td>
                                </tr>
                                <tr>
                                    <td>1517</td>
                                    <td>Tran Minh Hieu</td>
                                    <td>Due</td>
                                    <td class="warning">Pending</td>
                                    <td class="primary"><a href="#">See details</a></td>
                                </tr>
                                <tr>
                                    <td>3508</td>
                                    <td>Le Ba Viet</td>
                                    <td>Due</td>
                                    <td class="warning">Pending</td>
                                    <td class="primary"><a href="#">See details</a></td>
                                </tr>
                            </tbody>
                        </table>
                        <a href="#" class="cta-btn">Show All</a>
                    </div>

                </main>
                <!-- TOP RIGHT COLUMN -->
                <div class="right-col">
                    <div class="top">
                        <button class="btn-menu">
                            <span class="material-symbols-outlined">
                                menu
                            </span>
                        </button>

                        <div class="profile">
                            <div class="info">
                                <p>Welcome back, Hung</p>
                                <small class="text-muted">Seller</small>
                            </div>
                            <div class="profile-photo">
                                <img src="img/testimonial-1.jpg" alt="">
                            </div>
                        </div>
                    </div>

                    <div class="recent-updates">
                        <h2>Recent Updates</h2>
                        <div class="updates">
                            <div class="update">
                                <div class="profile-photo">
                                    <img src="img/testimonial-2.jpg" alt="">
                                </div>
                                <div class="message">
                                    <p><b>Quang Hung</b> received his order of Doner Kebab </p>
                                    <small class="text-muted">2 minutes ago</small>
                                </div>
                            </div>

                            <div class="update">
                                <div class="profile-photo">
                                    <img src="img/testimonial-3.jpg" alt="">
                                </div>
                                <div class="message">
                                    <p><b>Hai Anh</b> rated 5 stars for your product </p>
                                    <small class="text-muted">3 minutes ago</small>
                                </div>
                            </div>

                            <div class="update">
                                <div class="profile-photo">
                                    <img src="img/testimonial-4.jpg" alt="">
                                </div>
                                <div class="message">
                                    <p><b>Minh Hieu</b> received his order of roasted chicken </p>
                                    <small class="text-muted">5 minutes ago</small>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- SALE ANALYTICS -->
                    <div class="sale-analytics">
                        <h2>Sale Analytics</h2>
                        <div class="item online">
                            <div class="icon">
                                <span class="material-symbols-outlined">
                                    shopping_cart
                                </span>
                            </div>
                            <div class="right">
                                <div class="info">
                                    <h3>Online Orders</h3>
                                    <small class="text-muted">Last 24 hours</small>
                                </div>
                                <h5 class="success">+39%</h5>
                                <h4>3849</h4>
                            </div>
                        </div>

                        <div class="item offline">
                            <div class="icon">
                                <span class="material-symbols-outlined">
                                    credit_card
                                </span>
                            </div>
                            <div class="right">
                                <div class="info">
                                    <h3>Offline Orders</h3>
                                    <small class="text-muted">Last 24 hours</small>
                                </div>
                                <h5 class="danger">-16%</h5>
                                <h4>130</h4>
                            </div>
                        </div>

                        <div class="item customers">
                            <div class="icon">
                                <span class="material-symbols-outlined">
                                    group
                                </span>
                            </div>
                            <div class="right">
                                <div class="info">
                                    <h3>New Customers</h3>
                                    <small class="text-muted">Last 24 hours</small>
                                </div>
                                <h5 class="success">+20%</h5>
                                <h4>49</h4>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <script src="js/seller.js"></script>
        </body>
        </html>