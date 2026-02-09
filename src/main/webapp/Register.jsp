<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>

<style>
    *{
        margin:0;
        padding:0;
        box-sizing:border-box;
        font-family: Arial, sans-serif;
    }

    body {
        background: linear-gradient(to right, #ff9966, #ff5e62);
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
        color:#ff5e62;
    }

    .nav-links a{
        text-decoration:none;
        margin-left:20px;
        color:#333;
        font-weight:500;
        transition:0.3s;
    }

    .nav-links a:hover{
        color:#ff5e62;
    }

    /* ---------- REGISTER CARD ---------- */
    .container{
        display:flex;
        justify-content:center;
        align-items:center;
        height:85vh;
    }

    .register-box {
        background: white;
        padding: 30px;
        width: 350px;
        border-radius: 12px;
        box-shadow: 0px 10px 25px rgba(0,0,0,0.2);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    label {
        font-weight: bold;
        display: block;
        margin-top: 12px;
    }

    input, select {
        width: 100%;
        padding: 8px;
        margin-top: 5px;
        border-radius: 6px;
        border: 1px solid #ccc;
    }

    .gender-box {
        margin-top: 8px;
    }

    .gender-box input {
        width: auto;
        margin-right: 5px;
    }

    .btn {
        width: 100%;
        margin-top: 20px;
        padding: 10px;
        background-color: #ff5e62;
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 16px;
        cursor: pointer;
    }

    .btn:hover {
        background-color: #e0484d;
    }

    .login-link {
        text-align: center;
        margin-top: 15px;
        font-size: 14px;
    }

    .login-link a {
        text-decoration: none;
        color: #ff5e62;
        font-weight: bold;
    }

    .login-link a:hover {
        text-decoration: underline;
    }

    .message{
        text-align:center;
        color:green;
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
        <a href="getallusers">All Users</a>
    </div>
</div>

<!-- REGISTER FORM -->
<div class="container">
    <div class="register-box">

        <div class="message">${message}</div>

        <h2>Register</h2>

        <form action="do-RegistrationServlet" method="post">

            <label>Name:</label>
            <input type="text" name="name" required>

            <label>Email:</label>
            <input type="email" name="email" required>

            <label>Password:</label>
            <input type="password" name="password" required>

            <label>Gender:</label>
            <div class="gender-box">
                <input type="radio" name="gender" value="Male" required> Male
                <input type="radio" name="gender" value="Female"> Female
            </div>

            <label>City:</label>
            <select name="city" required>
                <option value="">-- Select City --</option>
                <option>Mumbai</option>
                <option>Pune</option>
                <option>Chennai</option>
            </select>

            <input type="submit" value="Register" class="btn">

            <div class="login-link">
                Already have an account?
                <a href="Login.jsp">Login</a>
            </div>

        </form>
    </div>
</div>

</body>
</html>
