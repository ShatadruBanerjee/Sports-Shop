<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
.footer {
    background: #020617;
    color: #cbd5f5;
    padding: 30px 40px;
    margin-top: 40px;
    border-top: 1px solid #1e293b;
}

.footer-container {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
}

.footer h3 {
    color: #facc15;
    margin-bottom: 10px;
}

.footer p, .footer a {
    font-size: 14px;
    color: #cbd5f5;
    text-decoration: none;
}

.footer a:hover {
    color: #6366f1;
}

.footer-bottom {
    text-align: center;
    margin-top: 20px;
    font-size: 13px;
    color: #94a3b8;
}

.icon {
    margin-right: 8px;
}
</style>

<div class="footer">

    <div class="footer-container">

        <div>
            <h3><i class="bi bi-cart-fill icon"></i>SportsShop</h3>
            <p><i class="bi bi-trophy icon"></i>Your one-stop shop for sports gear</p>
        </div>

        <div>
            <h3><i class="bi bi-link-45deg icon"></i>Links</h3>
            <p><a href="/products"><i class="bi bi-bag icon"></i>Products</a></p>
            <p><a href="/cart"><i class="bi bi-cart icon"></i>Cart</a></p>
            <p><a href="/profile"><i class="bi bi-person icon"></i>Profile</a></p>
        </div>

        <div>
            <h3><i class="bi bi-telephone icon"></i>Contact</h3>
            <p><i class="bi bi-envelope icon"></i>support@sportsshop.com</p>
            <p><i class="bi bi-phone icon"></i>+91 01234 56789</p>
        </div>

    </div>

    <div class="footer-bottom">
        © 2026 SportsShop | Made by Shatadru
    </div>

</div>