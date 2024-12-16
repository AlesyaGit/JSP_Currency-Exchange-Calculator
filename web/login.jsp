<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('currency-calculator.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            position: relative;
        }
        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: inherit;
            filter: blur(8px);
            z-index: -1;
        }
        .container {
            background: rgba(255, 255, 255, 0.85);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            color: #4CAF50;
        }
        input, button {
            padding: 10px;
            margin: 10px 5px;
            width: 100%;
            max-width: 300px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        button {
            background-color: #FFC107;
            color: white;
            border: none;
        }
        button:hover {
            background-color: #FFB300;
        }
        a {
            text-decoration: none;
            color: #007BFF;
        }
        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>User Login Form</h1>
        <form action="<%=request.getContextPath()%>/login" method="post">
            <input type="text" name="username" placeholder="Username" required />
            <input type="password" name="password" placeholder="Password" required />
            <button type="submit">Login</button>
        </form>
        <p>Not registered? <a href="<%=request.getContextPath()%>/UserRegistration.jsp">Register here</a></p>
    </div>
</body>
</html>

