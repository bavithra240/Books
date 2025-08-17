import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class userDAO {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/bookshopdb";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    public boolean registerUser(user users) {
        boolean isRegistered = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
           try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
                String sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
                try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                    stmt.setString(1, users.getUsername());
                    stmt.setString(2, users.getEmail());
                    stmt.setString(3, users.getPassword());
                    int rowsInserted = stmt.executeUpdate();
                    isRegistered = rowsInserted > 0;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isRegistered;
    }
}
