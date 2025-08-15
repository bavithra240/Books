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
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/bookshopdb"; // உங்க DB பெயர்
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Form data retrieve
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Validation
        if (username == null || email == null || password == null ||
            username.isEmpty() || email.isEmpty() || password.isEmpty()) {
            response.sendRedirect("register.html?error=All fields are required");
            return;
        }

        try {
            // JDBC driver load
            Class.forName("com.mysql.cj.jdbc.Driver");

            // DB connect
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // SQL insert
            String sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, email);
            stmt.setString(3, password); // Production-ல் password hashing use பண்ணணும்

            int rowsInserted = stmt.executeUpdate();

            stmt.close();
            conn.close();

            if (rowsInserted > 0) {
                response.sendRedirect("login.html?message=Registration successful! Please login.");
            } else {
                response.sendRedirect("register.html?error=Registration failed! Please try again.");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
            response.sendRedirect("register.html?error=Database error! Please try again.");
        }
    }
}
