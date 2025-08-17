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

@WebServlet("/BillServlet")
public class BillServlet extends HttpServlet {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/pahanaedu";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accountNumber = request.getParameter("accountNumber");
        String email = request.getParameter("email");
        String itemName = request.getParameter("itemName");
        String priceStr = request.getParameter("price");
        String quantityStr = request.getParameter("quantity");
        String payment = request.getParameter("payment");
        String totalStr = request.getParameter("totalAmount");

        // Validation
        if (accountNumber == null || email == null || itemName == null ||
            priceStr == null || quantityStr == null || payment == null || totalStr == null ||
            accountNumber.isEmpty() || email.isEmpty() || itemName.isEmpty() ||
            priceStr.isEmpty() || quantityStr.isEmpty() || payment.isEmpty() || totalStr.isEmpty()) {
            
            response.sendRedirect("bill.jsp?error=Please fill all fields and calculate the bill");
            return;
        }

        try {
            double price = Double.parseDouble(priceStr);
            int quantity = Integer.parseInt(quantityStr);
            double total = Double.parseDouble(totalStr);

            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // Insert bill record into database
            String sql = "INSERT INTO bills (account_number, email, item_name, price, quantity, payment_method, total_amount) "
                       + "VALUES (?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, accountNumber);
            stmt.setString(2, email);
            stmt.setString(3, itemName);
            stmt.setDouble(4, price);
            stmt.setInt(5, quantity);
            stmt.setString(6, payment);
            stmt.setDouble(7, total);

            int rows = stmt.executeUpdate();

            stmt.close();
            conn.close();

            if (rows > 0) {
                response.sendRedirect("bill.jsp?message=Bill saved successfully");
            } else {
                response.sendRedirect("bill.jsp?error=Failed to save bill");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("bill.jsp?error=Database error, please try again");
        }
    }
}
