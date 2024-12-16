package UserRegistration;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ExchangeServlet", urlPatterns = {"/ExchangeServlet"})
public class ExchangeServlet extends HttpServlet {

    
    private static final double USD_TO_EUR = 0.92;
    private static final double USD_TO_GBP = 0.81;
    private static final double USD_TO_JPY = 135.0;

    private static final double EUR_TO_USD = 1.09;
    private static final double EUR_TO_GBP = 0.88;
    private static final double EUR_TO_JPY = 146.0;

    private static final double GBP_TO_USD = 1.23;
    private static final double GBP_TO_EUR = 1.14;
    private static final double GBP_TO_JPY = 166.0;

    private static final double JPY_TO_USD = 0.0074;
    private static final double JPY_TO_EUR = 0.0068;
    private static final double JPY_TO_GBP = 0.0060;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        double amount = Double.parseDouble(request.getParameter("amount"));
        String fromCurrency = request.getParameter("fromCurrency");
        String toCurrency = request.getParameter("toCurrency");

        
        double result = convertCurrency(amount, fromCurrency, toCurrency);

        
        request.setAttribute("amount", amount);
        request.setAttribute("fromCurrency", fromCurrency);
        request.setAttribute("toCurrency", toCurrency);
        request.setAttribute("result", result);

        
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }

    
    private double convertCurrency(double amount, String fromCurrency, String toCurrency) {
        double result = 0.0;

        if (fromCurrency.equals("USD") && toCurrency.equals("EUR")) {
            result = amount * USD_TO_EUR;
        } else if (fromCurrency.equals("USD") && toCurrency.equals("GBP")) {
            result = amount * USD_TO_GBP;
        } else if (fromCurrency.equals("USD") && toCurrency.equals("JPY")) {
            result = amount * USD_TO_JPY;
        } else if (fromCurrency.equals("EUR") && toCurrency.equals("USD")) {
            result = amount * EUR_TO_USD;
        } else if (fromCurrency.equals("EUR") && toCurrency.equals("GBP")) {
            result = amount * EUR_TO_GBP;
        } else if (fromCurrency.equals("EUR") && toCurrency.equals("JPY")) {
            result = amount * EUR_TO_JPY;
        } else if (fromCurrency.equals("GBP") && toCurrency.equals("USD")) {
            result = amount * GBP_TO_USD;
        } else if (fromCurrency.equals("GBP") && toCurrency.equals("EUR")) {
            result = amount * GBP_TO_EUR;
        } else if (fromCurrency.equals("GBP") && toCurrency.equals("JPY")) {
            result = amount * GBP_TO_JPY;
        } else if (fromCurrency.equals("JPY") && toCurrency.equals("USD")) {
            result = amount * JPY_TO_USD;
        } else if (fromCurrency.equals("JPY") && toCurrency.equals("EUR")) {
            result = amount * JPY_TO_EUR;
        } else if (fromCurrency.equals("JPY") && toCurrency.equals("GBP")) {
            result = amount * JPY_TO_GBP;
        }

        return result;
    }
}
