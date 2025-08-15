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

@WebServlet("/BookServlet")
public class BookServlet extends HttpServlet {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/bookshopdb";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action"); // add, update, delete
        String itemId = request.getParameter("itemId");
        String itemName = request.getParameter("itemName");
        String description = request.getParameter("description");
        String price = request.getParameter("price");
        String category = request.getParameter("category");
        String quantity = request.getParameter("quantity");
        String lastUpdated = request.getParameter("lastUpdated");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            PreparedStatement stmt = null;

            if ("add".equalsIgnoreCase(action)) {
                String sql = "INSERT INTO books(item_id, item_name, description, price, category, quantity, last_updated) "
                        + "VALUES (?, ?, ?, ?, ?, ?, ?)";
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, itemId);
                stmt.setString(2, itemName);
                stmt.setString(3, description);
                stmt.setDouble(4, Double.parseDouble(price));
                stmt.setString(5, category);
                stmt.setInt(6, Integer.parseInt(quantity));
                stmt.setString(7, lastUpdated);

            } else if ("update".equalsIgnoreCase(action)) {
                String sql = "UPDATE books SET item_name=?, description=?, price=?, category=?, quantity=?, last_updated=? "
                        + "WHERE item_id=?";
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, itemName);
                stmt.setString(2, description);
                stmt.setDouble(3, Double.parseDouble(price));
                stmt.setString(4, category);
                stmt.setInt(5, Integer.parseInt(quantity));
                stmt.setString(6, lastUpdated);
                stmt.setString(7, itemId);

            } else if ("delete".equalsIgnoreCase(action)) {
                String sql = "DELETE FROM books WHERE item_id=?";
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, itemId);
            }

            int rows = stmt.executeUpdate();
            stmt.close();
            conn.close();

            response.getWriter().println(rows > 0 ? "Success" : "Failed");

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
