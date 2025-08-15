/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {

    // Database connection details
    private static final String DB_URL = "jdbc:mysql://localhost:3306/bookshopdb";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form data
        String bookName = request.getParameter("bookName");
        String userName = request.getParameter("userName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String quantity = request.getParameter("quantity");
        String reservationDate = request.getParameter("reservationDate");

        // Basic validation
        if (bookName == null || userName == null || email == null || phone == null || quantity == null || reservationDate == null ||
            bookName.isEmpty() || userName.isEmpty() || email.isEmpty() || phone.isEmpty() || quantity.isEmpty() || reservationDate.isEmpty()) {
            
            response.sendRedirect("bookreserve.jsp?error=Please fill in all fields");
            return;
        }

        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to database
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // SQL insert statement
            String sql = "INSERT INTO reservations (book_name, user_name, email, phone, quantity, reservation_date) " +
                         "VALUES (?, ?, ?, ?, ?, ?)";

            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, bookName);
            stmt.setString(2, userName);
            stmt.setString(3, email);
            stmt.setString(4, phone);
            stmt.setInt(5, Integer.parseInt(quantity));
            stmt.setString(6, reservationDate);

            int rowsInserted = stmt.executeUpdate();

            stmt.close();
            conn.close();

            if (rowsInserted > 0) {
                response.sendRedirect("bookreserve.jsp?message=Book successfully reserved!");
            } else {
                response.sendRedirect("bookreserve.jsp?error=Reservation failed! Please try again.");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
            response.sendRedirect("bookreserve.jsp?error=Database error! Please try again.");
        }
    }
}
