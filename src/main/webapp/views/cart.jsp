<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Cart</title>

<style>
body {
    margin:0;
    font-family:'Segoe UI';
    background:#0f172a;
    color:white;
}

.container {
    padding:30px;
}

.card {
    background:#1e293b;
    padding:15px;
    margin:10px 0;
    border-radius:10px;
}

.btn {
    padding:10px;
    background:#6366f1;
    border:none;
    border-radius:8px;
    color:white;
    cursor:pointer;
}

.btn:disabled {
    background:#475569;
    cursor:not-allowed;
    opacity:0.6;
}

html, body {
    height: 100%;
    margin: 0;
}

.page-wrapper {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

.content {
    flex: 1;
}
</style>

</head>

<body class="page-wrapper">
<jsp:include page="common/navbar.jsp" />

<div class="content">
<div class="container">

<h2>Your Cart</h2>

<c:if test="${empty sessionScope.cart}">
    <p style="color:#94a3b8;">Your cart is empty 🛒</p>
</c:if>

<c:forEach var="item" items="${sessionScope.cart}">
    <div class="card">
        <h3>${item.name}</h3>
        <p>₹${item.price}</p>
    </div>
</c:forEach>

<c:choose>
    <c:when test="${empty sessionScope.cart}">
        <button class="btn" disabled>Place Order</button>
    </c:when>
    <c:otherwise>
        <a href="/place-order">
            <button class="btn">Place Order</button>
        </a>
    </c:otherwise>
</c:choose>

</div>
</div>

<jsp:include page="common/footer.jsp" />
</body>
</html>