package net.javaguides.usermanagement.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import User.User;

public class UserDao {

    public int registerUser(User user) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO users (username, password, firstname, lastname) VALUES (?, ?, ?, ?);";

        int result = 0;

        
        Class.forName("com.mysql.cj.jdbc.Driver");

        
        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/Lab10?useSSL=false", "root", "Alesya2004@$");

             
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {

            
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getFirstname());
            preparedStatement.setString(4, user.getLastname());

            System.out.println(preparedStatement);

            
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            
            printSQLException(e);
        }

        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}