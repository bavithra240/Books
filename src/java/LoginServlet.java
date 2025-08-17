/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet
{
     private static final String VALID_USERNAME = "Bavithra";
    private static final String VALID_PASSWORD = "bavi@20#"; // exactly 8 characters
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException,IOException
    {
        //get the username and password from the request
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        response.setContentType("text/html");
        PrintWriter out =response.getWriter();
        
        //Simple authentication logic
        if(VALID_USERNAME.equals(username) && VALID_PASSWORD.equals(password))
        {
            out.println("<Html><Body>");
            out.println("<h2>Welcome, "+ username + " !<h2>");
            out.println("<a href = 'index.jsp'>Log out</a>");
            out.println("</Body></Html>");

        }else
        {
            out.println("<Html><Body>");
            out.println("<h2 style='color:red;'>Invalid username or password<h2>");
            out.println("<a href = 'index.jsp'>Try again</a>");
            out.println("</Body></Html>");
//            out.println("<Html><Body>");
        }
    }
}
