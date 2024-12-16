<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Currency Exchange Result</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
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
        .result-container {
            text-align: center;
            padding: 30px 50px;
            background-color: rgba(255, 255, 255, 0.85);
            border-radius: 12px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);
            width: 80%;
            max-width: 600px;
        }
        h1 {
            color: #4CAF50;
            margin-bottom: 20px;
            font-size: 28px;
        }
        p {
            font-size: 18px;
            margin: 10px 0;
            color: #333;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="result-container">
        <h1>Currency Exchange Result</h1>
        <p>Amount: <%= request.getAttribute("amount") %> <%= request.getAttribute("fromCurrency") %></p>
        <p>Converted Amount: <%= request.getAttribute("result") %> <%= request.getAttribute("toCurrency") %></p>
        <a href="index.html">Go back</a>
    </div>
</body>
</html>


