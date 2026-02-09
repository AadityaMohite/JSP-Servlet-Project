<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Users</title>

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

/* ---------- TABLE SECTION ---------- */

.container{
    padding:50px;
}

h2{
    text-align:center;
    color:white;
    margin-bottom:30px;
}

.table-container{
    background:white;
    padding:30px;
    border-radius:15px;
    box-shadow:0 8px 20px rgba(0,0,0,0.2);
    overflow-x:auto;
}

table{
    width:100%;
    border-collapse:collapse;
}

thead{
    background:#667eea;
    color:white;
}

th, td{
    padding:12px;
    text-align:center;
}

th{
    font-weight:bold;
}

tbody tr{
    border-bottom:1px solid #ddd;
    transition:0.3s;
}

tbody tr:hover{
    background:#f2f2f2;
}

.no-data{
    text-align:center;
    padding:20px;
    font-size:18px;
    color:#666;
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

<div class="container">
    <h2>All Registered Users</h2>

    <div class="table-container">
        <table>

            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>City</th>
                </tr>
            </thead>

            <tbody>

                <c:if test="${empty users}">
                    <tr>
                        <td colspan="4" class="no-data">No Users Found</td>
                    </tr>
                </c:if>

                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.name}</td>
                        <td>${user.email}</td>
                        <td>${user.gender}</td>
                        <td>${user.city}</td>
                    </tr>
                </c:forEach>

            </tbody>

        </table>
    </div>
</div>

</body>
</html>
