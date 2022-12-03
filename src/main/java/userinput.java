
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;


import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequestWrapper;
import jakarta.servlet.http.HttpServletResponseWrapper;
 
@WebServlet("/userinput")
public class userinput extends jakarta.servlet.http.HttpServlet {
 
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequestWrapper request,
            HttpServletResponseWrapper response) throws IOException {
         
        String movieName = request.getParameter("movieName");
        String genre = request.getParameter("genre");
        String duration = request.getParameter("duration");
        String id = request.getParameter("id");
         
        System.out.println("movie: " + movieName);
        System.out.println("genre: " + genre);
 
  
        try
        {
 
          String myDriver = "oracle.jdbc.driver.OracleDriver";
          String myUrl = "jdbc:oracle:thin:@localhost:1521:xe";
          Class.forName(myDriver);
          Connection conn = DriverManager.getConnection(myUrl, "dipankar", "dipankar");
      
          String query = " insert into Movies (id, title, genre, duration)"
            + " values (?, ?, ?, ?);";
          
          
          PreparedStatement preparedStmt = conn.prepareStatement(query);
          preparedStmt.setInt(1, Integer.parseInt(id));
          preparedStmt.setString (2, movieName);
          preparedStmt.setString (3, genre);
          preparedStmt.setInt(4, Integer.parseInt(duration));

          preparedStmt.execute();
          
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