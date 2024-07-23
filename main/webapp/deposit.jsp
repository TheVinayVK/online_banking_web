<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Deposit</title>
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
        h2 {
            color: #4CAF50; /* Green */
            margin-bottom: 20px;
        }
        form {
            background-color: #ffffff; /* White */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 300px;
        }
        label {
            display: block;
            margin-bottom: 10px;
            color: #333; /* Dark gray */
        }
        input[type="text"], input[type="number"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        button[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50; /* Green */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        button[type="submit"]:hover {
            background-color: #45a049; /* Darker green on hover */
        }
        p.message {
            color: green;
            margin-top: 10px;
        }
    </style>
</head>
<body>

<%
    String message = request.getParameter("message");
%>
<h2>Deposit Money</h2>
<form action="depositServlet" method="post">
    <label for="accountNumber">Account Number:</label>
    <input type="text" id="accountNumber" name="accountNumber" required><br><br>
    
    <label for="amount">Deposit Amount:</label>
    <input type="number" id="amount" name="amount" required><br><br>
    
    <button type="submit">Deposit</button>
</form>

<%
    if(message != null && !message.isEmpty()) {
%>
    <p class="message"><%= message %></p>
<%
    }
%>

</body>
</html>
