

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletException;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/AddNewCustomerServlet")
public class AddNewCusServlet extends HttpServlet {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/pahanaedu";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form data
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String accountNumber = request.getParameter("accountNumber");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String registrationDate = request.getParameter("registrationDate");

        // Validation
        if (id == null || name == null || accountNumber == null || address == null ||
            email == null || phone == null || registrationDate == null ||
            id.isEmpty() || name.isEmpty() || accountNumber.isEmpty() || address.isEmpty() ||
            email.isEmpty() || phone.isEmpty() || registrationDate.isEmpty()) {
            
            response.sendRedirect("addnewcustomer.jsp?error=All fields are required");
            return;
        }

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to DB
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // SQL insert query
            String sql = "INSERT INTO customers (id, name, account_number, address, email, phone, registration_date) " +
                         "VALUES (?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, id);
            stmt.setString(2, name);
            stmt.setString(3, accountNumber);
            stmt.setString(4, address);
            stmt.setString(5, email);
            stmt.setString(6, phone);
            stmt.setString(7, registrationDate);

            int rowsInserted = stmt.executeUpdate();

            stmt.close();
            conn.close();

            if (rowsInserted > 0) {
                response.sendRedirect("addnewcustomer.jsp?message=Customer account successfully added!");
            } else {
                response.sendRedirect("addnewcustomer.jsp?error=Failed to add customer!");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
            response.sendRedirect("addnewcustomer.jsp?error=Database error! Please try again.");
        }
    }
}
