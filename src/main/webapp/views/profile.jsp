<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<html>
<head>
<title>Profile</title>

<style>
body {
    font-family: 'Segoe UI';
    background:#0f172a;
    color:white;
    margin:0;
}

html, body {
    height:100%;
}

.page-wrapper {
    display:flex;
    flex-direction:column;
    min-height:100vh;
}

.content {
    flex:1;
}

.container {
    max-width:700px;
    margin:40px auto;
    background:#1e293b;
    padding:30px;
    border-radius:15px;
    box-shadow:0 10px 30px rgba(0,0,0,0.6);
}

.profile-header {
    text-align:center;
    margin-bottom:25px;
}

.avatar {
    width:80px;
    height:80px;
    border-radius:50%;
    margin-bottom:10px;
    object-fit:cover;
}

.profile-header h2 {
    margin:5px 0;
}

.profile-header p {
    color:#94a3b8;
    font-size:14px;
}

.section-title {
    margin-top:20px;
    margin-bottom:10px;
    font-size:16px;
    color:#cbd5f5;
}

input {
    width:100%;
    padding:10px;
    margin:10px 0;
    border-radius:8px;
    border:none;
    background:#334155;
    color:white;
}

button {
    width:100%;
    padding:10px;
    background:#6366f1;
    border:none;
    border-radius:8px;
    color:white;
    cursor:pointer;
    margin-top:10px;
}

button:hover {
    background:#4f46e5;
}

.links {
    margin-top:20px;
    display:flex;
    justify-content:space-between;
}

.links a {
    text-decoration:none;
    color:#cbd5f5;
    font-size:14px;
}

.links a:hover {
    color:#6366f1;
}

.upload-box {
    margin-top: 10px;
    padding: 20px;
    border: 2px dashed #475569;
    border-radius: 12px;
    text-align: center;
    cursor: pointer;
    transition: 0.3s;
    background: #0f172a;
}

.upload-box:hover {
    border-color: #6366f1;
    background: #020617;
}

.upload-box i {
    font-size: 28px;
    color: #6366f1;
}

.upload-box p {
    margin-top: 8px;
    font-size: 14px;
    color: #cbd5f5;
}

.upload-box input {
    display: none;
}
</style>

</head>

<body class="page-wrapper">

<jsp:include page="common/navbar.jsp" />

<div class="content">

<div class="container">

    <!-- Profile Header -->
    <div class="profile-header">
        <img src="/profile-image/${sessionScope.userId}" class="avatar" onerror="this.src='/profile/default-avatar.jpg'">
        
        <h2><i class="bi bi-person-circle"></i> ${sessionScope.user}</h2>
        <p>Manage your account details</p>
    </div>

    <div class="section-title">
        <i class="bi bi-person"></i> Account Info
    </div>

    <form action="/profile" method="post" enctype="multipart/form-data">

        <input type="text" name="username" value="${sessionScope.user}" placeholder="Username" required>

        <div class="section-title">
            <i class="bi bi-shield-lock"></i> Security
        </div>

        <input type="password" name="password" placeholder="New Password">
        
        <div class="section-title">
    		<i class="bi bi-image"></i> Profile Photo
		</div>
        <div class="upload-box" onclick="document.getElementById('file).click()">
    		<label for="file">
        		<i class="bi bi-cloud-upload"></i>
        		<p>Click to upload profile photo</p>
    		</label>
    		<input type="file" name="file" id="file" onchange="showFileName()">
    		<p id="file-name" class="file-name"></p>
		</div>

        <button>
            <i class="bi bi-check-circle"></i> Update Profile
        </button>
    </form>

    <div class="links">
        <a href="/products"><i class="bi bi-bag"></i> Products</a>
        <a href="/cart"><i class="bi bi-cart"></i> Cart</a>
    </div>

</div>

</div>

<jsp:include page="common/footer.jsp" />
<script>
function showFileName() {
    const input = document.getElementById("file");
    const fileName = document.getElementById("file-name");

    if (input.files.length > 0) {
        fileName.textContent = input.files[0].name + " selected";
    } else {
        fileName.textContent = "";
    }
}
</script>
</body>
</html>