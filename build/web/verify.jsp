<%-- 
    Document   : verify
    Created on : Jun 17, 2022, 11:04:21 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Account Verification</title>
        <link rel="stylesheet" href="css/sendMail.css">
    </head>
    <body>
        <div class="container">
            <form action="verify" method="post">
                <h2>Verify Your Account</h2>
                <p>We emailed you the six digit code to your email. <br /> Enter the code below to confirm your email
                    address.</p>
                <div class="code-container">
                    <input name="number1" type="number" class="code" min="0" max="9" required>
                    <input name="number2" type="number" class="code" min="0" max="9" required>
                    <input name="number3" type="number" class="code" min="0" max="9" required>
                    <input name="number4" type="number" class="code" min="0" max="9" required>
                    <input name="number5" type="number" class="code" min="0" max="9" required>
                    <input name="number6" type="number" class="code" min="0" max="9" required>
                </div>
                <button class="btn-cta">Submit</button>
                <h6>${requestScope.msg}</h6>
            </form>
        </div>

        <script src="js/sendMail.js"></script>
    </body>
</html>
