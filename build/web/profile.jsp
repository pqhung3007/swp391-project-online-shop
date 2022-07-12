<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>My Profile</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/home.css" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" />
        <link rel="shortcut icon" type="image/png" href="img/favicon.png">
        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Playfair+Display:wght@600;700&display=swap"
            rel="stylesheet" />

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
              rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
              rel="stylesheet" />

        <!--Libraries Stylesheet-->
        <link href="js/animate/animate.min.css" rel="stylesheet" />
        <link href="js/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet" />

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/home.css" rel="stylesheet" />
    </head>

    <body>
        <%@include file="components/navbar.jsp" %>

        <div class="container rounded bg-white" style="margin-top: 100px">
            <div class="row">
                <div class="col-md-6 border-right ">
                    <div class="user-image">
                        <img class="rounded-circle mt-5"
                             width="150px"
                             src="${user.image}">
                    </div>
                </div>
                <div class="col-md-6 border-right">
                    <div class="p-3 py-5">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h4 class="text-right">Profile Settings</h4>
                        </div>
                        <form action="profile" method="POST">
                            <input type="hidden" name="accountID" value="${user.userID}">
                            <input type="hidden" name="accountIDS" value="${sessionScope.account.accountId}">
                            <div class="row mt-2">
                                <div class="col-md-12">
                                    <label  class="labels"></label>
                                    <input  type="text" class="form-control"
                                            placeholder="Fullname" name="name" value="${user.name}">
                                </div>
                                <div class="col-md-12">
                                    <label class="labels"></label>
                                    <input type="text" class="form-control"
                                           placeholder="Username" name="fullname" value="${sessionScope.account.userName}">
                                </div>
                                <div class="col-md-12">
                                    <label class="labels"></label>
                                    <input type="password" class="form-control"
                                           placeholder="Password" name="password" value="${sessionScope.account.passWord}">
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-6">
                                    <label class="labels"></label>
                                    <input type="text" class="form-control"
                                           placeholder="Phone" name="phone" value="${user.phone}"></div>
                                <div class="col-md-6">
                                    <label class="labels"></label>
                                    <input type="text" class="form-control"
                                           placeholder="Address" name="address" value="${user.address}"></div>
                                <div class="col-md-12">
                                    <label class="labels"></label>
                                    <input type="text" class="form-control"
                                           placeholder="Email" name="email" value="${user.email}"></div>
                            </div>

                            <div class="mt-5 text-center">
                                <button class="btn btn-primary profile-button m-4" type="submit" >Save Profile</button>

                            </div>
                        </form>
                    </div>
                </div>

            </div>

        </div>

        <!-- Footer End -->
        <%@include file="components/footer.jsp" %>
    </div>
</div>
</body>

</html>