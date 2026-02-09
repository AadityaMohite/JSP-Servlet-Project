<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>

<style>

    *{
        margin:0;
        padding:0;
        box-sizing:border-box;
        font-family: 'Segoe UI', sans-serif;
    }

    body{
        background: linear-gradient(to right, #667eea, #764ba2);
        min-height:100vh;
    }

    /* ---------- NAVBAR ---------- */
    .navbar{
        display:flex;
        justify-content:space-between;
        align-items:center;
        padding:15px 50px;
        background:white;
        box-shadow:0 2px 10px rgba(0,0,0,0.1);
    }

    .logo{
        font-size:22px;
        font-weight:bold;
        color:#667eea;
    }

    .nav-links a{
        text-decoration:none;
        margin-left:20px;
        color:#333;
        font-weight:500;
        transition:0.3s;
    }

    .nav-links a:hover{
        color:#667eea;
    }

    /* ---------- PROFILE CARD ---------- */

    .container{
        display:flex;
        justify-content:center;
        align-items:center;
        margin-top:80px;
    }

    .profile-card{
        background:white;
        padding:40px;
        border-radius:15px;
        width:400px;
        box-shadow:0 8px 20px rgba(0,0,0,0.2);
        transition:0.3s;
    }

    .profile-card:hover{
        transform:translateY(-5px);
    }

    .profile-card h2{
        text-align:center;
        margin-bottom:25px;
        color:#444;
    }

    .profile-info{
        margin:15px 0;
        font-size:17px;
    }

    .label{
        font-weight:bold;
        color:#555;
    }

    .btn{
        display:block;
        text-align:center;
        margin-top:25px;
        padding:12px;
        background:#667eea;
        color:white;
        text-decoration:none;
        border-radius:8px;
        transition:0.3s;
    }

    .btn:hover{
        background:#5a67d8;
    }

</style>
</head>

<body>

<!-- NAVBAR -->
<div class="navbar">
    <div class="logo">UserManagement</div>
    <div class="nav-links">
        <a href="index.jsp">Home</a>
        <a href="Login.jsp">Login</a>
        <a href="Register.jsp">Register</a>
       
    </div>
</div>

<!-- PROFILE SECTION -->
<div class="container">
    <div class="profile-card">
        <h2>User Profile</h2>

        <div class="profile-info">
            <span class="label">Name:</span> ${user.name}
        </div>

        <div class="profile-info">
            <span class="label">Email:</span> ${user.email}
        </div>

        <div class="profile-info">
            <span class="label">Gender:</span> ${user.gender}
        </div>

        <div class="profile-info">
            <span class="label">City:</span> ${user.city}
        </div>

        <a href="Login.jsp" class="btn">Logout</a>
    </div>
</div>

</body>
</html>
