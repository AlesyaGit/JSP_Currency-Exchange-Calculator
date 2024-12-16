package UserRegistration;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import User.User;
import net.javaguides.usermanagement.dao.UserDao;

@WebServlet(name = "UserServlet", urlPatterns = {"/register"})
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDao userDao;

    @Override
    public void init() {
        userDao = new UserDao();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");

        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setFirstname(firstname);
        user.setLastname(lastname);

        try {
            int result = userDao.registerUser(user);
            if (result > 0) {
                response.sendRedirect("RegistrationDitails.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}

