import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
 
@WebServlet("/delete")
public class Delete extends HttpServlet {
 
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
         
        int id = Integer.parseInt(request.getParameter("id"));
         
        System.out.println("movieID deleted: " + id);
 
        try
        {
          String myDriver = "oracle.jdbc.driver.OracleDriver";
          String myUrl = "jdbc:oracle:thin:@localhost:1521:xe";
          Class.forName(myDriver);
          Connection conn = DriverManager.getConnection(myUrl, "dipankar", "dipankar");
 
          String query = " delete from movies where id = ?";
          
          Statement smt = conn.createStatement();
          
          query = "delete from movies where id="+id;
          System.out.println(query);

			/*
			 * PreparedStatement preparedStmt = conn.prepareStatement(query);
			 * preparedStmt.setString (1, movieName); preparedStmt.execute();
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