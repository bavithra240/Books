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

@WebServlet("/EditCustomerServlet")
public class EditCustomerServlet extends HttpServlet {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/pahanaedu";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form data from JSP
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String accountNumber = request.getParameter("accountNumber");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String registrationDate = request.getParameter("registrationDate");
        String password = request.getParameter("password");

        // Validate fields
        if (id == null || name == null || accountNumber == null || address == null ||
            email == null || phone == null || registrationDate == null || password == null ||
            id.isEmpty() || name.isEmpty() || accountNumber.isEmpty() || address.isEmpty() ||
            email.isEmpty() || phone.isEmpty() || registrationDate.isEmpty() || password.isEmpty()) {

            response.sendRedirect("editcustomer.jsp?error=All fields are required");
            return;
        }

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to database
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // SQL UPDATE statement
            String sql = "UPDATE customers SET name=?, account_number=?, address=?, email=?, phone=?, registration_date=?, password=? WHERE id=?";

            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, accountNumber);
            stmt.setString(3, address);
            stmt.setString(4, email);
            stmt.setString(5, phone);
            stmt.setString(6, registrationDate);
            stmt.setString(7, password);
            stmt.setString(8, id);

            int rowsUpdated = stmt.executeUpdate();

            stmt.close();
            conn.close();

            if (rowsUpdated > 0) {
                response.sendRedirect("editcustomer.jsp?message=Customer updated successfully");
            } else {
                response.sendRedirect("editcustomer.jsp?error=No customer found with that ID");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("editcustomer.jsp?error=Database error, please try again");
        }
    }
}
