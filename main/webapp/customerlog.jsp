<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2; /* Light gray */
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }
        .dashboard-container {
            background-color: #ffffff; /* White */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 300px;
        }
        .dashboard-container h2 {
            margin-bottom: 20px;
            color: #4CAF50; /* Green */
        }
        .dashboard-button {
            display: block;
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            background-color: #4CAF50; /* Green */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .dashboard-button:hover {
            background-color: #45a049; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <h2>Customer Dashboard</h2>
        <a href="deposit.jsp" class="dashboard-button">Deposit</a>
        <a href="withdraw.jsp" class="dashboard-button">Withdraw</a>
        <a href="balance.jsp" class="dashboard-button">Balance</a>
        <a href="transactions.jsp" class="dashboard-button">Transactions</a>
    </div>
</body>
</html>
