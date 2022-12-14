
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/login")
public class admin extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
         
        String Username = request.getParameter("Username");
        String Password = request.getParameter("Password");

         
		/*
		 * System.out.println("Username admin: " + Username);
		 * System.out.println("Password admin: " + Password);
		 */
        PrintWriter writer = response.getWriter();
         
        if(Username.equals("admin") && Password.equals("admin")){
            response.sendRedirect("options.jsp");
        }
        else{
               String htmlResponse = "<html>";
               htmlResponse += "<h2>Invalid Credentials</h2>";        
               htmlResponse += "</html>";
               writer.println(htmlResponse);
        }
         
        
         
    }
}