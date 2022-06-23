
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Products</title>
    <link rel="stylesheet" href="./css/seller/home.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Symbols+Outlined" rel="stylesheet">
</head>
<body>
    <div class="container">
        <!-- VERTICAL NAVBAR -->
        <%@include file="components/sidebar.jsp" %>
        <!-- MAIN SECTION -->
        <main>
            <h1>Products</h1>
            <div class="insights" style="height:85vh; overflow-y: scroll; padding-right: 20px;" id="scroll-bar">
                <div class="insight sales">
                    <div class="insight-content">
                        <div class="insight-figure">
                            <img src="./img/service-2.jpg" width="100%">
                            <h2>Caramel Macchiato</h2>
                            <p>3.000.000 VND</p>
                        </div>
                        <button>Edit</button>
                    </div>
                </div>
                <div class="insight sales">
                    <div class="insight-content">
                        <div class="insight-figure">
                            <img src="./img/service-2.jpg" width="100%">
                            <h2>Caramel Macchiato</h2>
                            <p>3.000.000 VND</p>
                        </div>
                        <button>Edit</button>
                    </div>
                </div>
                <div class="insight sales">
                    <div class="insight-content">
                        <div class="insight-figure">
                            <img src="./img/service-2.jpg" width="100%">
                            <h2>Caramel Macchiato</h2>
                            <p>3.000.000 VND</p>
                        </div>
                        <button>Edit</button>
                    </div>
                </div>
                <div class="insight sales">
                    <div class="insight-content">
                        <div class="insight-figure">
                            <img src="./img/service-2.jpg" width="100%">
                            <h2>Caramel Macchiato</h2>
                            <p>3.000.000 VND</p>
                        </div>
                        <button>Edit</button>
                    </div>
                </div>
                <div class="insight sales">
                    <div class="insight-content">
                        <div class="insight-figure">
                            <img src="./img/service-2.jpg" width="100%">
                            <h2>Caramel Macchiato</h2>
                            <p>3.000.000 VND</p>
                        </div>
                        <button>Edit</button>
                    </div>
                </div>

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
                <h2>Best Sellers</h2>
                <small>Last updated 24 hours ago</small>
                <div class="updates">
                    <div class="update">
                        <div class="profile-photo">
                            <img src="img/testimonial-2.jpg" alt="">
                        </div>
                        <div class="message">
                            <p><b>Caramel Macchiato</b> was ordered <b>multiple</b> times</p>
                        </div>
                    </div>
                </div>
                <div class="updates">
                    <div class="update">
                        <div class="profile-photo">
                            <img src="img/testimonial-2.jpg" alt="">
                        </div>
                        <div class="message">
                            <p><b>Caramel Macchiato</b> was ordered <b>multiple</b> times</p>
                        </div>
                    </div>
                </div>
                <div class="updates">
                    <div class="update">
                        <div class="profile-photo">
                            <img src="img/testimonial-2.jpg" alt="">
                        </div>
                        <div class="message">
                            <p><b>Caramel Macchiato</b> was ordered <b>multiple</b> times</p>
                        </div>
                    </div>
                </div>
                <div class="updates">
                    <div class="update">
                        <div class="profile-photo">
                            <img src="img/testimonial-2.jpg" alt="">
                        </div>
                        <div class="message">
                            <p><b>Caramel Macchiato</b> was ordered <b>multiple</b> times</p>
                        </div>
                    </div>
                </div>
                <div class="updates">
                    <div class="update">
                        <div class="profile-photo">
                            <img src="img/testimonial-2.jpg" alt="">
                        </div>
                        <div class="message">
                            <p><b>Caramel Macchiato</b> was ordered <b>multiple</b> times</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>