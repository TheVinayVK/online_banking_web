<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Banking Application Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #007bff; /* Blue background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 300px;
        }
        .login-container h1 {
            margin-bottom: 20px;
            color: #007bff; /* Blue heading */
        }
        .login-button {
            display: block;
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            background-color: #007bff; /* Blue button */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .login-button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Welcome to Our Bank</h1>
        <form action="customerlog.jsp" method="post">
            <button type="submit" class="login-button">Customer Login</button>
        </form>
        <form action="adminlog.jsp" method="post">
            <button type="submit" class="login-button">Admin Login</button>
        </form>
    </div>
</body>
</html>
