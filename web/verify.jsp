<%-- 
    Document   : verify
    Created on : Jun 17, 2022, 11:04:21 AM
    Author     : Admin
--%>

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
            <h2>Verify Your Account</h2>
            <p>We emailed you the six digit code to cool_guy@email.com <br /> Enter the code below to confirm your email
                address.</p>
            <div class="code-container">
                <input type="number" class="code" min="0" max="9" required>
                <input type="number" class="code" min="0" max="9" required>
                <input type="number" class="code" min="0" max="9" required>
                <input type="number" class="code" min="0" max="9" required>
                <input type="number" class="code" min="0" max="9" required>
                <input type="number" class="code" min="0" max="9" required>
            </div>
            <form action="verify" method="post">
                <button class="btn-cta">Submit</button>
            </form>
        </div>

        <script src="js/sendMail.js"></script>
    </body>
</html>
