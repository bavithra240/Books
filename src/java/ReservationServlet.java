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

@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String customerName = request.getParameter("customerName");
        String email = request.getParameter("email");
        String bookTitle = request.getParameter("bookTitle");
        String reservationDate = request.getParameter("reservationDate");

        // Validation
        if (customerName == null || email == null || bookTitle == null || reservationDate == null ||
            customerName.isEmpty() || email.isEmpty() || bookTitle.isEmpty() || reservationDate.isEmpty()) {
            response.sendRedirect("reservation.html?error=All fields are required");
            return;
        }

        // Create Reservation Object
        Reservation reservation = new Reservation(customerName, email, bookTitle, reservationDate);

        // DAO call
        ReservationDAO dao = new ReservationDAO();
        boolean isSaved = dao.addReservation(reservation);

        if (isSaved) {
            response.sendRedirect("success.html?message=Reservation Added Successfully!");
        } else {
            response.sendRedirect("reservation.html?error=Failed to add reservation!");
        }
    }
}

