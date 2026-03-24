<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
.navbar {
    background: #1e293b;
    padding: 15px 40px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 4px 10px rgba(0,0,0,0.5);
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
    font-family: 'Segoe UI';
}

.logo {
    font-size: 1.5rem;
    font-weight: bold;
    color: #facc15;
}

.profile-dropdown {
    position: relative;
    display: flex;
    align-items: center;
    cursor: pointer;
    padding: 5px;
    z-index: 200;
}

.profile-dropdown .avatar {
    width: 35px;
    height: 35px;
    border-radius: 50%;
    object-fit: cover;
    margin-right: 5px;
}

.profile-dropdown .user-name {
    color: white;
}

.profile-dropdown .dropdown-content {
    display: none;
    position: absolute;
    top: 100%;
    right: 0;
    background: #1e293b;
    min-width: 180px;
    border-radius: 8px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.6);
    z-index: 300;
}

.profile-dropdown:hover .dropdown-content {
    display: block;
}

.dropdown-content a {
    color: white;
    padding: 10px 15px;
    display: block;
    text-decoration: none;
    transition: background 0.2s;
}

.dropdown-content a:hover {
    background: #334155;
}

.cart-count {
    background: #ef4444;
    padding: 2px 6px;
    border-radius: 50%;
    font-size: 0.8rem;
    margin-left: 5px;
}
</style>

<div class="navbar">
    <div class="logo">🛒 SportsShop</div>

    <div class="profile-dropdown">

        <img class="avatar" src="/profile-image/${sessionScope.userId}" onerror="this.src='/profile/default-avatar.jpg'">

        <span class="user-name">${sessionScope.user}</span>

        <div class="dropdown-content">
            <a href="/products">Products</a>

            <a href="/cart">
                Cart
                <c:if test="${not empty sessionScope.cartCount}">
                    <span class="cart-count">${sessionScope.cartCount}</span>
                </c:if>
            </a>

            <a href="/profile">Profile</a>
            <a href="/logout">Logout</a>
        </div>
    </div>
</div>