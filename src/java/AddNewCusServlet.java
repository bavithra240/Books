import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletException;
import java.io.IOException;

@WebServlet("/addCustomer")
public class AddNewCusServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String accountNumber = request.getParameter("accountNumber");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String registrationDate = request.getParameter("registrationDate");

        customer customers = new customer(name, accountNumber, address, email, phone, registrationDate);

        CustomerDAO dao = new CustomerDAO();
        dao.save(customers);

        request.setAttribute("message", "Customer account successfully added!");
        request.getRequestDispatcher("success.jsp").forward(request, response);
    }

}
