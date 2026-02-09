<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family: 'Segoe UI', sans-serif;
}

/* ---------- BODY ---------- */
body {
    background: linear-gradient(to right, #36d1dc, #5b86e5);
    min-height: 100vh;
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
    color:#5b86e5;
}

.nav-links a{
    text-decoration:none;
    margin-left:20px;
    color:#333;
    font-weight:500;
    transition:0.3s;
}

.nav-links a:hover{
    color:#5b86e5;
}

/* ---------- LOGIN SECTION ---------- */

.container{
    display:flex;
    justify-content:center;
    align-items:center;
    height:85vh;
}

.login-box {
    background: rgba(255,255,255,0.95);
    padding: 35px;
    width: 350px;
    border-radius: 15px;
    box-shadow: 0px 10px 25px rgba(0,0,0,0.25);
    transition:0.3s;
}

.login-box:hover{
    transform:translateY(-5px);
}

.login-box h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

label {
    font-weight: bold;
    display: block;
    margin-top: 15px;
}

input {
    width: 100%;
    padding: 9px;
    margin-top: 5px;
    border-radius: 8px;
    border: 1px solid #ccc;
    outline: none;
}

input:focus {
    border-color: #5b86e5;
}

.btn {
    width: 100%;
    margin-top: 20px;
    padding: 12px;
    background-color: #5b86e5;
    color: white;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    cursor: pointer;
    transition:0.3s;
}

.btn:hover {
    background-color: #3a5fcd;
}

.extra {
    text-align: center;
    margin-top: 15px;
    font-size: 14px;
}

.extra a {
    text-decoration: none;
    color: #5b86e5;
    font-weight:500;
}

.extra a:hover {
    text-decoration: underline;
}

.error{
    text-align:center;
    color:red;
    margin-bottom:10px;
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

<!-- LOGIN SECTION -->
<div class="container">
    <div class="login-box">
        <h2>Login</h2>

        <form action="LoginServlet" method="post">

            <div class="error">${msg}</div>

            <label>Email:</label>
            <input type="email" name="email" required>

            <label>Password:</label>
            <input type="password" name="password" required>

            <input type="submit" value="Login" class="btn">

            <div class="extra">
                <p>Don't have an account? <a href="Register.jsp">Register</a></p>
            </div>

        </form>
    </div>
</div>

</body>
</html>
