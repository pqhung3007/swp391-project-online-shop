<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<aside>
    <div class="navbar-top">
        <div class="navbar-heading">
            <h2>CoMa</h2>
        </div>
        <div class="btn-close">
            <span class="material-symbols-outlined"> close </span>
        </div>
    </div>

    <div class="navbar-content">
        <a href="#">
            <span class="material-symbols-outlined"> grid_view </span>
            <h3>Dashboard</h3>
        </a>
        <a href="#">
            <span class="material-symbols-outlined"> person </span>
            <h3>About</h3>
        </a>
        <a href="#" class="active">
            <span class="material-symbols-outlined"> inventory </span>
            <h3>Manage Accounts</h3>
        </a>
        <a href="#">
            <span class="material-symbols-outlined"> insights </span>
            <h3>Contact</h3>
        </a>
        <a href="#" class="logout">
            <span class="material-symbols-outlined"> logout </span>
            <h3>Logout</h3>
        </a>
    </div>
</aside>