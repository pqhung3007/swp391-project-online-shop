
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add New Product</title>
    <link rel="stylesheet" href="css/seller/home.css" />
    <link rel="stylesheet" href="css/seller/detail.css" />
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Symbols+Outlined"
      rel="stylesheet"
    />
  </head>
  <body>
    <div class="container-product">
      <!-- VERTICAL NAVBAR -->
      <%@include file="components/sidebar.jsp" %>

      <!-- MAIN SECTION -->
      <form action="">
        <div class="detail-banner">
            <img
              class="detail-img"
              src="https://globalassets.starbucks.com/assets/f12bc8af498d45ed92c5d6f1dac64062.jpg?impolicy=1by1_wide_topcrop_630"
              alt=""
            />
            <div class="detail-name">
                <h1 class="detail-text">Espresso Con Panna</h1>
                <h1>$7.5</h1>
            </div>
            <div class="detail-time">
                <h1>Times ordered</h1>
                <h1 class="detail-text">36</h1>
            </div>
        </div>
        
        <div class="detail-description">
            <div>
                <h1>Average Rating</h1>
                <img src="./img/carousel-1.jpg" alt="" style="width:100%">
            </div>
            <div>
                <h1>Product Description</h1>
                <p>
                  From our first store in Seattle’s Pike Place Market to our
                  coffeehouses around the world, customers requested a freshly
                  brewed coffee they could enjoy throughout the day. In 2008 our
                  master blenders and roasters created this for you—a smooth,
                  well-rounded blend of Latin American coffees with subtly rich
                  flavors of chocolate and toasted nuts, it’s served fresh every day
                  at a Starbucks® store near you. (Decaf as you like it.)
                </p>
            </div>
        </div>

        <div class="detail-edit">
            <button class="btn-submit">Edit product</button>
        </div>
      </form>
    </div>

    <script src="js/seller.js"></script>
  </body>
</html>
