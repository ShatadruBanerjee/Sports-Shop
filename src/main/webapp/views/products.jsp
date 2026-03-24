<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Products</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    margin:0;
    font-family:'Segoe UI';
    background:#0f172a;
    color:white;
}

.container {
    padding-top:30px;
}

.product-card {
    background:#1e293b;
    border:none;
    border-radius:15px;
    overflow:hidden;
    transition:0.3s;
    box-shadow:0 10px 30px rgba(0,0,0,0.6);
}

.product-card:hover {
    transform:translateY(-5px);
    box-shadow:0 15px 40px rgba(0,0,0,0.8);
}

.product-card img {
    height:180px;
    object-fit:cover;
}

.btn-add {
    background:#22c55e;
    color:white;
}

.btn-buy {
    background:#6366f1;
    color:white;
}

.price {
    font-size:18px;
    font-weight:bold;
    color:#38bdf8;
}

.card-title {
    color: #f1f5f9;
}

.card p {
    color: #cbd5f5;
}
</style>

</head>

<body>

<jsp:include page="common/navbar.jsp" />

<div class="container">

    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2>🛒 Products</h2>
    </div>

    <div class="row">

        <c:forEach var="p" items="${products}">
            <div class="col-md-4 col-lg-3 mb-4">

                <div class="card product-card text-center">

                    <img src="/images/${p.imageUrl}" class="card-img-top">

                    <div class="card-body">
                        <h5 class="card-title">${p.name}</h5>
                        <p class="price">₹${p.price}</p>

                        <div class="d-flex justify-content-center gap-2">

                            <a href="/add-to-cart?name=${p.name}&price=${p.price}">
                                <button class="btn btn-add btn-sm">Add</button>
                            </a>

                            <a href="/place-order?name=${p.name}&price=${p.price}">
                                <button class="btn btn-buy btn-sm">Buy</button>
                            </a>

                        </div>
                    </div>

                </div>

            </div>
        </c:forEach>

    </div>

</div>
<jsp:include page="common/footer.jsp" />
</body>
</html>