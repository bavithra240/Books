/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Bavi2
 */
public class Reservation {
    private int id;
    private String customerName;
    private String email;
    private String bookTitle;
    private String reservationDate;
    // Constructor
    public Reservation(String customerName, String email, String bookTitle, String reservationDate) {
        this.customerName = customerName;
        this.email = email;
        this.bookTitle = bookTitle;
        this.reservationDate = reservationDate;
    }
    // Getter & Setter methods
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public void setCustomerName(String customerName) { this.customerName = customerName; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getBookTitle() { return bookTitle; }
    public void setBookTitle(String bookTitle) { this.bookTitle = bookTitle; }

    public String getReservationDate() { return reservationDate; }
    public void setReservationDate(String reservationDate) { this.reservationDate = reservationDate; }

    String getCustomerName() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
