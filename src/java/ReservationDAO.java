/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Bavi2
 */

    
    import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class ReservationDAO {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/bookshopdb";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    public boolean addReservation(Reservation reservation) {
        boolean isSaved = false;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
                String sql = "INSERT INTO reservations (customerName, email, bookTitle, reservationDate) VALUES (?, ?, ?, ?)";
                try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                    stmt.setString(1, reservation.getCustomerName());
                    stmt.setString(2, reservation.getEmail());
                    stmt.setString(3, reservation.getBookTitle());
                    stmt.setString(4, reservation.getReservationDate());

                    int rows = stmt.executeUpdate();
                    isSaved = rows > 0;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSaved;
    }

    
}

    

