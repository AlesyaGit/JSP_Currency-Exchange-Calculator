package UserRegistration;

import User.UserLogin;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.javaguides.usermanagement.dao.LoginDao;

@WebServlet("/login")
public class UserLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginDao loginDao;

    @Override
    public void init() {
        loginDao = new LoginDao();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        
        UserLogin loginBean = new UserLogin();
        loginBean.setUsername(username);
        loginBean.setPassword(password);

        try {
            
            if (loginDao.validate(loginBean)) {
                
                response.sendRedirect("currencyExchange.jsp");
            } else {
                
                request.setAttribute("errorMessage", "Invalid username or password.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (ClassNotFoundException e) {
            throw new ServletException("Error validating login credentials", e);
        }
    }
}

