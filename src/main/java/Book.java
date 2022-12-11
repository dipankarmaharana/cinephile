import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/book")
public class Book extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	static int cost=0;
	protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
         
        String showId = request.getParameter("id");
        String num = request.getParameter("num");
        String sType = request.getParameter("class");
 
        try
        {
        	String myDriver = "oracle.jdbc.driver.OracleDriver";
            String myUrl = "jdbc:oracle:thin:@localhost:1521:xe";
            Class.forName(myDriver);
            Connection conn = DriverManager.getConnection(myUrl, "dipankar", "dipankar");
  
          Statement stmt = null;
          stmt = conn.createStatement();
          String query = " select MId, screen, slot, booked from shows where id="+showId;
          System.out.println(showId);
          ResultSet rs = null, rs2=null;
          int screen=0, slot=0, booked=0, MId=0;
          rs = stmt.executeQuery(query);
          PrintWriter writer = response.getWriter();
          String htmlResponse = "<html>";    
        
          
          if(rs==null){
        	  htmlResponse += "<h2>Wrong Entry</h2><br/>"; 
          }
          while(rs.next()){
        	  screen = rs.getInt("screen");
        	  slot = rs.getInt("slot");
        	  booked = rs.getInt("booked");
        	  MId = rs.getInt("MId");
          }
          
          query = " select * from movies where id="+MId;
          rs = stmt.executeQuery(query);
          String name=null,genre=null;
          int duration=0;
          while(rs.next()){
        	  name = rs.getString("title");
        	  genre = rs.getString("genre");
        	  duration = rs.getInt("duration");
        	  
          }
         String htmlResponse2;
          
          if(sType.equals("normal")){
        	  cost=280;
          }
          else if(sType.equals("executive")){
        	  cost=300;
          }
          else if(sType.equals("premium")){
        	  cost=320;
          }
          
          
          int number =Integer.parseInt(num);
          cost*=number;
          System.out.println(cost);
          int price,no;
          switch(screen){
          	case 1: if(slot==1)
          			{
          			showS1T1 m = new showS1T1(name, genre, duration);
          			m.booked=booked;
          			if(!m.bookNew(number)){
          				htmlResponse += "<center><h2>Show Full</h2><br/></center>"; 
          			}
          			else{
						/*
						 * htmlResponse +=
						 * "<center><div style='border:1px solid black; border-radius:3px; width:400px;'><h2>Booking Successful</h2><hr><br/><h3>Total : Rs."
						 * + cost + "</h3><br><hr><p>Booking Details: "+ number+" x "
						 * +sType+" tickets<br>Movie: "+name+"- ("+duration+" minutes)</p><h2>Screen: "
						 * +screen+"</h2><br><h2>Slot: "
						 * +slot+"</h2><p>Kindly show the booking details and collect the tickets from the counter.<br>100% cancellation charges will be levied upon cancellation after a successful booking.</p></div></center>"
						 * ;
						 */
          				request.setAttribute("cost",cost);
          				request.setAttribute("number",number);
          				request.setAttribute("sType",sType);
          				request.setAttribute("name",name);
          				request.setAttribute("duration",duration);
          				request.setAttribute("screen",screen);
          				request.setAttribute("slot",slot);
          				request.getRequestDispatcher("confirm.jsp").forward(request, response);
  	          			query = " update shows set booked="+m.booked+" where id="+showId;
  	          			System.out.println(query);
  	          			Statement smt = conn.createStatement();
  	          			smt.executeUpdate(query);
          			}
          			}
          			else if(slot==2){
          				showS1T2 m=new showS1T2(name, genre, duration);
          				m.booked=booked;
          				if(!m.bookNew(number)){
              				htmlResponse += "<center><h2>Show Full</h2><br/></center>"; 
              			}
              			else{
              				htmlResponse += "<center><div style='border:1px solid black; border-radius:3px; width:400px;'><h2>Tickets Booked</h2><hr><br/><h3>Please pay Rs." + cost + "</h3><br><hr><p>order: "+ number+" x " +sType+" tickets<br>Movie: "+name+"- ("+duration+" minutes)</p><h2>Screen: "+screen+"</h2><br><h2>Slot: "+slot+"</h2></div></center>"; 
              				request.setAttribute("cost",cost);
              				request.setAttribute("number",number);
              				request.setAttribute("sType",sType);
              				request.setAttribute("name",name);
              				request.setAttribute("duration",duration);
              				request.setAttribute("screen",screen);
              				request.setAttribute("slot",slot);
              				request.getRequestDispatcher("confirm.jsp").forward(request, response);
              				query = " update shows set booked="+m.booked+" where id="+showId;
      	          	System.out.println(query);
      	          Statement smt = conn.createStatement();
          			smt.executeUpdate(query);
              			}
          			}
          			else{
          				showS1T3 m=new showS1T3(name, genre, duration);
          				m.booked=booked;
          				if(!m.bookNew(number)){
              				htmlResponse += "<center><h2>Show Full</h2><br/></center>"; 
              			}
              			else{
              				htmlResponse += "<center><div style='border:1px solid black; border-radius:3px; width:400px;'><h2>Tickets Booked</h2><hr><br/><h3>Please pay Rs." + cost + "</h3><br><hr><p>order: "+ number+" x " +sType+" tickets<br>Movie: "+name+"- ("+duration+" minutes)</p><h2>Screen: "+screen+"</h2><br><h2>Slot: "+slot+"</h2></div></center>"; 
              				request.setAttribute("cost",cost);
              				request.setAttribute("number",number);
              				request.setAttribute("sType",sType);
              				request.setAttribute("name",name);
              				request.setAttribute("duration",duration);
              				request.setAttribute("screen",screen);
              				request.setAttribute("slot",slot);
              				request.getRequestDispatcher("confirm.jsp").forward(request, response);
              				query = " update shows set booked="+m.booked+" where id="+showId;
      	          	System.out.println(query);
      	          	Statement smt = conn.createStatement();
          			smt.executeUpdate(query);
              			}
          			}
          			break;
          			
          	case 2: if(slot==1){
          		showS2T1 m=new showS2T1(name, genre, duration);
          		m.booked=booked;
          		if(!m.bookNew(number)){
      				htmlResponse += "<center><h2>Show Full</h2><br/></center>"; 
      			}
      			else{
      				htmlResponse += "<center><div style='border:1px solid black; border-radius:3px; width:400px;'><h2>Tickets Booked</h2><hr><br/><h3>Please pay Rs." + cost + "</h3><br><hr><p>order: "+ number+" x " +sType+" tickets<br>Movie: "+name+"- ("+duration+" minutes)</p><h2>Screen: "+screen+"</h2><br><h2>Slot: "+slot+"</h2></div></center>"; 
      				request.setAttribute("cost",cost);
      				request.setAttribute("number",number);
      				request.setAttribute("sType",sType);
      				request.setAttribute("name",name);
      				request.setAttribute("duration",duration);
      				request.setAttribute("screen",screen);
      				request.setAttribute("slot",slot);
      				request.getRequestDispatcher("confirm.jsp").forward(request, response);	
      				query = " update shows set booked="+m.booked+" where id="+showId;
	          			System.out.println(query);
	          			Statement smt = conn.createStatement();
  	          			smt.executeUpdate(query);
      			}
          		}
  					else if(slot==2){
  						showS2T2 m=new showS2T2(name, genre, duration);
  						m.booked=booked;
  						if(!m.bookNew(number)){
  	          				htmlResponse += "<center><h2>Show Full</h2><br/></center>"; 
  	          			}
  	          			else{
  	          				htmlResponse += "<center><div style='border:1px solid black; border-radius:3px; width:400px;'><h2>Tickets Booked</h2><hr><br/><h3>Please pay Rs." + cost + "</h3><br><hr><p>order: "+ number+" x " +sType+" tickets<br>Movie: "+name+"- ("+duration+" minutes)</p><h2>Screen: "+screen+"</h2><br><h2>Slot: "+slot+"</h2></div></center>"; 
  	          			request.setAttribute("cost",cost);
          				request.setAttribute("number",number);
          				request.setAttribute("sType",sType);
          				request.setAttribute("name",name);
          				request.setAttribute("duration",duration);
          				request.setAttribute("screen",screen);
          				request.setAttribute("slot",slot);
          				request.getRequestDispatcher("confirm.jsp").forward(request, response);
  	          				query = " update shows set booked="+m.booked+" where id="+showId;
  	  	          	System.out.println(query);
  	  	        Statement smt = conn.createStatement();
        			smt.executeUpdate(query);
  	          			}
  					}
  					else{
  						showS2T3 m=new showS2T3(name, genre, duration);
  						m.booked=booked;
  						if(!m.bookNew(number)){
  	          				htmlResponse += "<center><h2>Show Full</h2><br/></center>"; 
  	          			}
  	          			else{
  	          				htmlResponse += "<center><div style='border:1px solid black; border-radius:3px; width:400px;'><h2>Tickets Booked</h2><hr><br/><h3>Please pay Rs." + cost + "</h3><br><hr><p>order: "+ number+" x " +sType+" tickets<br>Movie: "+name+"- ("+duration+" minutes)</p><h2>Screen: "+screen+"</h2><br><h2>Slot: "+slot+"</h2></div></center>"; 
  	          			request.setAttribute("cost",cost);
          				request.setAttribute("number",number);
          				request.setAttribute("sType",sType);
          				request.setAttribute("name",name);
          				request.setAttribute("duration",duration);
          				request.setAttribute("screen",screen);
          				request.setAttribute("slot",slot);
          				request.getRequestDispatcher("confirm.jsp").forward(request, response);
  	          				query = " update shows set booked="+m.booked+" where id="+showId;
  	  	          	System.out.println(query);
  	  	        Statement smt = conn.createStatement();
        			smt.executeUpdate(query);
  	          			}
  					}
  					break;
  					
          	case 3: if(slot==1){
          		showS3T1 m=new showS3T1(name, genre, duration);
          		m.booked=booked;
          		if(!m.bookNew(number)){
      				htmlResponse += "<center><h2>Show Full</h2><br/></center>"; 
      			}
      			else{
      				htmlResponse += "<center><div style='border:1px solid black; border-radius:3px; width:400px;'><h2>Tickets Booked</h2><hr><br/><h3>Please pay Rs." + cost + "</h3><br><hr><p>order: "+ number+" x " +sType+" tickets<br>Movie: "+name+"- ("+duration+" minutes)</p><h2>Screen: "+screen+"</h2><br><h2>Slot: "+slot+"</h2></div></center>"; 
      				request.setAttribute("cost",cost);
      				request.setAttribute("number",number);
      				request.setAttribute("sType",sType);
      				request.setAttribute("name",name);
      				request.setAttribute("duration",duration);
      				request.setAttribute("screen",screen);
      				request.setAttribute("slot",slot);
      				request.getRequestDispatcher("confirm.jsp").forward(request, response);	
      				query = " update shows set booked="+m.booked+" where id="+showId;
	          			System.out.println(query);
	          			Statement smt = conn.createStatement();
  	          			smt.executeUpdate(query);
      			}
          	}
  					else if(slot==2){
  						showS3T2 m=new showS3T2(name, genre, duration);
  						m.booked=booked;
  						if(!m.bookNew(number)){
  	          				htmlResponse += "<center><h2>Show Full</h2><br/></center>"; 
  	          			}
  	          			else{
  	          				htmlResponse += "<center><div style='border:1px solid black; border-radius:3px; width:400px;'><h2>Tickets Booked</h2><hr><br/><h3>Please pay Rs." + cost + "</h3><br><hr><p>order: "+ number+" x " +sType+" tickets<br>Movie: "+name+"- ("+duration+" minutes)</p><h2>Screen: "+screen+"</h2><br><h2>Slot: "+slot+"</h2></div></center>"; 
  	          			request.setAttribute("cost",cost);
          				request.setAttribute("number",number);
          				request.setAttribute("sType",sType);
          				request.setAttribute("name",name);
          				request.setAttribute("duration",duration);
          				request.setAttribute("screen",screen);
          				request.setAttribute("slot",slot);
          				request.getRequestDispatcher("confirm.jsp").forward(request, response);
  	          				query = " update shows set booked="+m.booked+" where id="+showId;
  	  	          	System.out.println(query);
  	  	        Statement smt = conn.createStatement();
        			smt.executeUpdate(query);
  	          			}
  					}
  					else{
  						showS3T3 m=new showS3T3(name, genre, duration);
  						m.booked=booked;
  						if(!m.bookNew(number)){
  	          				htmlResponse += "<center><h2>Show Full</h2><br/></center>"; 
  	          			}
  	          			else{
  	          				htmlResponse += "<center><div style='border:1px solid black; border-radius:3px; width:400px;'><h2>Booking Successful</h2><hr><br/><h3>Booking Total: Rs." + cost + "</h3><br><p>Kindly show the booking details and collect the tickets from the counter.</p><hr><p>Booking Details: "+ number+" x " +sType+" tickets<br>Movie: "+name+"- ("+duration+" minutes)</p><h2>Screen: "+screen+"</h2><br><h2>Slot: "+slot+"</h2></div><a href='user.jsp'>home</center>"; 
  	          			request.setAttribute("cost",cost);
          				request.setAttribute("number",number);
          				request.setAttribute("sType",sType);
          				request.setAttribute("name",name);
          				request.setAttribute("duration",duration);
          				request.setAttribute("screen",screen);
          				request.setAttribute("slot",slot);
          				request.getRequestDispatcher("confirm.jsp").forward(request, response);
  	          				query = " update shows set booked="+m.booked+" where id="+showId;
  	          		System.out.println(query);
  	          	Statement smt = conn.createStatement();
        			smt.executeUpdate(query);
  	          			}
  					}
  					break;
  					
  			default: htmlResponse += "<center><h2>Wrong Input</h2><br/></center>"; 
 
          }
          
          conn.close();
          htmlResponse += "</html>";
			/* writer.println(htmlResponse); */

        }
        catch (Exception e)
        {
          System.err.println("Got an exception!");
          System.err.println(e.getMessage());
        }       
    }
}