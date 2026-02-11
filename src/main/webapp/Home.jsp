<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

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

/* ---------- HERO ---------- */
.hero{
    text-align:center;
    padding:60px 20px;
    color:white;
}

.hero h1{
    font-size:38px;
    margin-bottom:15px;
}

.hero p{
    font-size:18px;
}

/* ---------- CARDS SECTION ---------- */

.cards{
    display:flex;
    justify-content:center;
    gap:30px;
    margin-top:40px;
    flex-wrap:wrap;
}

.card{
    background:white;
    width:280px;
    padding:30px;
    border-radius:15px;
    text-align:center;
    box-shadow:0 8px 20px rgba(0,0,0,0.2);
    transition:0.3s;
}

.card:hover{
    transform:translateY(-8px);
}

.card h3{
    margin-bottom:15px;
    color:#333;
}

.card p{
    font-size:14px;
    margin-bottom:20px;
    color:#666;
}

.card a{
    display:inline-block;
    padding:10px 20px;
    background:#667eea;
    color:white;
    text-decoration:none;
    border-radius:6px;
    transition:0.3s;
}

.card a:hover{
    background:#5a67d8;
}

</style>
</head>

<body>

<!-- NAVBAR -->
<div class="navbar">
    <div class="logo">UserManagement</div>
    <div class="nav-links">
        <a href="Home.jsp">Home</a>
        <a href="Login.jsp">Login</a>
        <a href="Register.jsp">Register</a>
    </div>
</div>

<!-- HERO SECTION -->
<div class="hero">
    <h1>Welcome to User Management System</h1>
    <p>Select an option below to continue</p>
</div>

<!-- CARDS SECTION -->
<div class="cards">

    <!-- LOGIN CARD -->
    <div class="card">
        <h3>Login</h3>
        <p>Access your account securely and view your profile.</p>
        <a href="Login.jsp">Go to Login</a>
    </div>

    <!-- REGISTER CARD -->
    <div class="card">
        <h3>Register</h3>
        <p>Create a new account to start using our system.</p>
        <a href="Register.jsp">Go to Register</a>
    </div>

    <!-- GET ALL USERS CARD -->
    <div class="card">
        <h3>Get All Users</h3>
        <p>View all registered users in the system.</p>
        <a href="getallusers">View Users</a>
    </div>
    
    <div class="card">
    <h3>Get Male Users</h3>
    <p>View all male registered users in the system.</p>
    <a href="getMaleuser?gender=Male">View users</a>

    </div>
<div class="card">
    <h3>Get Female Users</h3>
    <p>View all Female registered users in the system.</p>
    <a href="getFemaleuser?gender=Female">View users</a>

    </div>

</div>

</body>
</html>
