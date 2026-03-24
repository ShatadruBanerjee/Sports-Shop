<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>

<style>
body {
    margin:0;
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(135deg,#020617,#1e293b);
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
    color:white;
}

.box {
    background:#1e293b;
    padding:40px;
    border-radius:15px;
    width:350px;
    box-shadow:0 10px 40px rgba(0,0,0,0.7);
    text-align:center;
    position: relative;
}

.box img.logo {
    width:80px;
    margin-bottom:15px;
}

.box h1 {
    font-size:2rem;
    color:#facc15;
    margin-bottom:25px;
}

input {
    width:100%;
    padding:12px;
    margin:10px 0;
    border:none;
    border-radius:8px;
    background:#334155;
    color:white;
    font-size:1rem;
}

button {
    width:100%;
    padding:12px;
    background: linear-gradient(135deg,#22c55e,#4ade80);
    border:none;
    border-radius:8px;
    color:white;
    font-weight:bold;
    cursor:pointer;
    font-size:1rem;
    transition:0.3s;
}

button:hover {
    background: linear-gradient(135deg,#16a34a,#22c55e);
}

p {
    margin-top:15px;
    font-size:0.9rem;
}

a { 
    color:#818cf8; 
    text-decoration:none; 
}

a:hover {
    text-decoration:underline;
}
</style>

</head>

<body>

<div class="box">
    <img src="/images/logo.jpg" alt="App Logo" class="logo">
    <h1>SportsShop</h1>

    <form action="/register" method="post">
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Register</button>
    </form>

    <p>Already have an account? <a href="/login">Login</a></p>
</div>

</body>
</html>