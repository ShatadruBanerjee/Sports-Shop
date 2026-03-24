<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Login</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', sans-serif;
        background: linear-gradient(135deg, #0f172a, #1e293b);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #fff;
    }

    .login-container {
        background: rgba(30, 41, 59, 0.95);
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.5);
        width: 350px;
        text-align: center;
    }

    .login-container img {
        width: 80px;
        margin-bottom: 15px;
    }

    .login-container h1 {
        margin-bottom: 25px;
        font-size: 2rem;
        color: #facc15;
    }

    .login-container input {
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        border-radius: 8px;
        border: none;
        background: #334155;
        color: #fff;
    }

    .login-container button {
        width: 100%;
        padding: 12px;
        margin-top: 15px;
        background: #6366f1;
        border: none;
        border-radius: 8px;
        font-weight: bold;
        cursor: pointer;
        color: white;
        transition: 0.3s;
    }

    .login-container button:hover {
        background: #4f46e5;
    }

    .login-container .links {
        margin-top: 15px;
        font-size: 0.9rem;
    }

    .login-container .links a {
        color: #facc15;
        text-decoration: none;
        margin: 0 5px;
    }

    .login-container .links a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<div class="login-container">
    <img src="/images/logo.jpg" alt="App Logo">
    <h1>SportsShop</h1>

    <form action="/login" method="post">
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Login</button>
    </form>

    <div class="links">
        <span>Don't have an account?</span>
        <a href="/register">Register</a>
    </div>
</div>

</body>
</html>