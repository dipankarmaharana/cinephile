import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
 
@WebServlet("/schedule")
public class Schedule extends HttpServlet {
 
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
         
    	String sid = request.getParameter("showId");
    	String movieId = request.getParameter("movieId");
        String screen = request.getParameter("screen");
        String slot = request.getParameter("slot");
         
        System.out.println("movie: " + movieId);
        System.out.println("screening details: " + screen+" "+slot);
 
        try
        {
          String myDriver = "oracle.jdbc.driver.OracleDriver";
          String myUrl = "jdbc:oracle:thin:@localhost:1521:xe";
          Class.forName(myDriver);
          Connection conn = DriverManager.getConnection(myUrl, "dipankar", "dipankar");
          Statement smt = conn.createStatement();
          String query = " insert into shows (MId, screen, slot, booked)"
            + " values (?, ?, ?, ?);";

			/*
			 * PreparedStatement preparedStmt = conn.prepareStatement(query);
			 * preparedStmt.setInt(1, Integer.parseInt(movieId)); preparedStmt.setInt(2,
			 * Integer.parseInt(screen)); preparedStmt.setInt(3, Integer.parseInt(slot));
			 * preparedStmt.setInt(4, 0);
			 * 
			 * preparedStmt.execute();
			 */
          
          query = "insert into shows values("+sid+",'"+movieId+"','"+screen+"',"+slot+","+100+")";
          smt.executeUpdate(query);
          conn.close();
          response.sendRedirect("options.jsp");
        }
        catch (Exception e)
        {
          System.err.println("Got an exception!");
          System.err.println(e.getMessage());
        }
      
    }
 
}