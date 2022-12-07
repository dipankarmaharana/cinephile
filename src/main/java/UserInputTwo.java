

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet("/userinput")
public class UserInputTwo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Submitted....");
		String movieName = request.getParameter("movieName");
        String genre = request.getParameter("genre");
        int duration = Integer.parseInt(request.getParameter("duration"));
        int id = Integer.parseInt(request.getParameter("id"));
         
        System.out.println("movie: " + movieName);
        System.out.println("genre: " + genre);
        System.out.println("duration: " + duration);
        System.out.println("id: " + id);
 
  
        try
        {
 
          String myDriver = "oracle.jdbc.driver.OracleDriver";
          String myUrl = "jdbc:oracle:thin:@localhost:1521:xe";
          Class.forName(myDriver);
          Connection conn = DriverManager.getConnection(myUrl, "dipankar", "dipankar");
          Statement smt = conn.createStatement();
      
          String query = "insert into movies values (?, ?, ?, ?);";
          query = "insert into movies values("+id+",'"+movieName+"','"+genre+"',"+duration+")";
          System.out.println(query);
          
          /*
          PreparedStatement preparedStmt = conn.prepareStatement(query);
          preparedStmt.setInt(1, Integer.parseInt(id));
          preparedStmt.setString (2, movieName);
          preparedStmt.setString (3, genre);
          preparedStmt.setInt(4, Integer.parseInt(duration));

          preparedStmt.execute();
          */
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
