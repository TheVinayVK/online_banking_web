<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Check Balance</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5; /* Light blue-gray */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #ffffff; /* White */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
            margin-top: 20px;
        }
        h2 {
            margin-bottom: 20px;
            color: #007bff; /* Blue */
        }
        label {
            display: block;
            margin: 10px 0 5px;
            color: #333;
        }
        input, button {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box; /* Ensure padding and border don't increase element size */
        }
        button {
            background-color: #007bff; /* Blue */
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
        .message {
            color: green;
            margin-top: 10px;
        }
        .go-back-button {
            width: 100%;
            padding: 10px;
            background-color: #6c757d; /* Dark grey */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
            margin-top: 10px;
        }
        .go-back-button:hover {
            background-color: #5a6268; /* Darker grey on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Check Balance</h2>
        <form action="balanceServlet" method="post">
            <label for="accountNo">Account Number:</label>
            <input name="accountNo" id="accountNo" type="text" required/>
            <button type="submit">Check Balance</button>
        </form>

        <%
        // Check if the balance attribute is set
        Double balance = (Double) request.getAttribute("balance");
        if (balance != null) { 
        %>
            <p>Current Balance: <%= balance %></p>
        <% } %>

        <%
        // Display message if there is any
        String message = request.getParameter("message");
        if (message != null && !message.isEmpty()) { 
        %>
            <p style="color: green;"><%= message %></p>
        <% } %>
    </div>

    <button class="go-back-button" onclick="window.location.href = 'customerdashboard.jsp'">Go Back</button>
</body>
</html>
