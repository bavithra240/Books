/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletException;
import java.io.IOException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form data
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Validation
        if (username == null || email == null || password == null ||
            username.isEmpty() || email.isEmpty() || password.isEmpty()) {
            response.sendRedirect("register.html?error=All fields are required");
            return;
        }

        // Create User object
        user user = new user(username, email, password);

        // Use DAO to save user
        userDAO dao = new userDAO();
        boolean isRegistered = dao.registerUser(user);

        if (isRegistered) {
            response.sendRedirect("login.html?message=Registration successful! Please login.");
        } else {
            response.sendRedirect("register.html?error=Registration failed! Please try again.");
        }
    }
}
