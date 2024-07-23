<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Transactions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 80%;
        }
        .container h2 {
            margin-bottom: 20px;
            color: #333; /* Dark gray */
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #007bff; /* Blue */
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2; /* Light gray for even rows */
        }
        tr:hover {
            background-color: #ddd; /* Gray on hover */
        }
        td {
            color: #333; /* Dark gray text */
        }
        .no-transactions {
            font-style: italic;
            color: #777; /* Light gray text */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Transactions</h2>
        <table>
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Type</th>
                    <th>Amount</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Map<String, String>> transactions = (List<Map<String, String>>) request.getAttribute("transactions");
                    if (transactions != null && !transactions.isEmpty()) {
                        for (Map<String, String> transaction : transactions) {
                %>
                    <tr>
                        <td><%= transaction.get("date") %></td>
                        <td><%= transaction.get("type") %></td>
                        <td><%= transaction.get("amount") %></td>
                    </tr>
                <% 
                        }
                    } else { 
                %>
                    <tr>
                        <td colspan="3" class="no-transactions">No transactions found.</td>
                    </tr>
                <% 
                    } 
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
