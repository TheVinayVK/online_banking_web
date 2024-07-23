<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f5f9; /* Light blue-gray background */
        }
        .container {
            display: flex;
            height: 100vh;
        }
        .left-side {
            background-color: #007bff; /* Blue */
            color: white;
            font-family: 'Times New Roman', Times, serif;
            font-size: 24px;
            font-weight: bold;
            display: flex;
            justify-content: center;
            align-items: center;
            flex: 1;
        }
        .right-side {
            background-color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            flex: 1;
        }
        .login-form {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 300px; /* Adjust width as needed */
        }
        .login-form h2 {
            margin-bottom: 20px;
            color: #007bff; /* Blue */
        }
        .login-form label {
            color: #333; /* Dark gray */
            margin-bottom: 5px;
            display: block;
        }
        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .login-form input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #007bff; /* Blue */
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        .login-form input[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="left-side">
            <div>ADMIN LOGIN</div>
        </div>
        <div class="right-side">
            <div class="login-form">
                <h2>Login</h2>
                <form action="adminloginServlet" method="post">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" required>
                    
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required>
                    
                    <input type="submit" value="Login">
                </form>
            </div>
        </div>
    </div>
</body>
</html>
