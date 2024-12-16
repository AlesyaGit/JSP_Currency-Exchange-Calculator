<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Registration</title>
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
        table {
            width: 100%;
            border-spacing: 15px 10px;
        }
        td {
            text-align: left;
            font-size: 14px;
            color: #333;
        }
        input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
        }
        button {
            width: 100%;
            padding: 10px;
            border: none;
            background-color: #FFC107;
            color: white;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #FFB300;
        }
        a {
            display: inline-block;
            margin-top: 10px;
            font-size: 14px;
            color: #4CAF50;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>User Registration Form</h1>
        <form action="<%= request.getContextPath() %>/register" method="post">
            <table>
                <tr>
                    <td>First Name:</td>
                    <td><input type="text" name="firstname" required /></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><input type="text" name="lastname" required /></td>
                </tr>
                <tr>
                    <td>Username:</td>
                    <td><input type="text" name="username" required /></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" required /></td>
                </tr>
            </table>
            <button type="submit">Register</button>
        </form>
        <a href="<%= request.getContextPath() %>/login.jsp">Already registered? Log in here</a>
    </div>
</body>
</html>

