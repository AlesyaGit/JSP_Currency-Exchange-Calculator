<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Registration Success</title>
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
            background: rgba(0, 0, 0, 0.4);
            z-index: -1;
        }
        .container {
            text-align: center;
            padding: 40px;
            background-color: rgba(255, 255, 255, 0.85);
            border-radius: 12px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 90%;
        }
        h1 {
            font-size: 24px;
            color: #4CAF50;
            margin-bottom: 20px;
        }
        button {
            display: inline-block;
            padding: 10px 20px;
            border: none;
            background-color: #FFC107;
            color: white;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            text-decoration: none;
            margin-top: 10px;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #FFB300;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>User successfully registered!</h1>
        <a href="login.jsp">
            <button>Log In</button>
        </a>
    </div>
</body>
</html>


