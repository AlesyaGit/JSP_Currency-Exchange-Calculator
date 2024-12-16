<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Currency Exchange Calculator</title>
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
        .container {
            text-align: center;
            padding: 40px;
            background-color: rgba(255, 255, 255, 0.85);
            border-radius: 12px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);
            width: 90%;
            max-width: 600px;
        }
        h1 {
            color: #4CAF50;
            margin-bottom: 20px;
            font-size: 28px;
        }
        form {
            margin: 20px 0;
        }
        label {
            display: block;
            font-size: 16px;
            margin: 10px 0 5px;
            color: #333;
        }
        input, select, button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 16px;
            outline: none;
            transition: border-color 0.3s ease;
        }
        input:focus, select:focus, button:hover {
            border-color: #4CAF50;
        }
        button {
            background-color: #FFC107;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 18px;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #FFB300;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Currency Exchange Calculator</h1>
        <form action="ExchangeServlet" method="post">
            <label for="amount">Amount:</label>
            <input type="number" id="amount" name="amount" required min="0.01" step="0.01" placeholder="Enter amount">
            <label for="fromCurrency">From:</label>
            <select id="fromCurrency" name="fromCurrency" required>
                <option value="USD">USD</option>
                <option value="EUR">EUR</option>
                <option value="GBP">GBP</option>
                <option value="JPY">JPY</option>
            </select>
            <label for="toCurrency">To:</label>
            <select id="toCurrency" name="toCurrency" required>
                <option value="USD">USD</option>
                <option value="EUR">EUR</option>
                <option value="GBP">GBP</option>
                <option value="JPY">JPY</option>
            </select>
            <button type="submit">Calculate</button>
        </form>
    </div>
</body>
</html>


