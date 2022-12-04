<%@ page import="com.mysql.*"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<title>cinephile</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/style.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>


<div class="navbar navbar-inverse" style="margin-bottom:0px;">
<div class="nav-container">
	<div class="navbar-header">
		<a class="navbar-brand" href="user.jsp" style="font-size: 40px;"><b>cinephile</b></a>
	</div>
	<ul class="nav navbar-nav navbar-right">
		<!-- <li><a href="#"><span class="glyphicon glyphicon-user"></span>admin login</a></li> -->
		       <li><a data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-user"></span><b> admin login</b></a></li> -->
	</ul>
</div>
</div>

  <div class="container">
    <!-- Modal -->
    <div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Admin Login</h4>
          </div>
          <div class="modal-body">
            
            <form action="login" method="POST">
        <input type="text" name="Username" placeholder="Username">
        &nbsp
        <input type="password" name="Password" placeholder="Password">
        <input type="submit" class="btn btn-primary">
    </form>



          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>
  </div>

<div id="carousel-example-generic" class="carousel slide container-fluid" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="Images/Avatar-The-Way-Of-Water-Header.webp" style="width:1100px; height:600px;">
      <div class="carousel-caption">
        <b>Movie 1</b>
      </div>
    </div>
    <div class="item">
      <img src="Images/black-panther-wakanda-forever-movie-review-002.jpg" alt="..." style="width:1100px;height:600px;">
      <div class="carousel-caption">
       <b>Movie 2</b>
      </div>
    </div>
    <div class="item">
      <img src="Images/maxresdefault.jpg" alt="..." style="width:1100px;height:600px;">
      <div class="carousel-caption">
      <b>Movie 3</b>
      </div>
    </div>
  </div>
  
  
  
 

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<br>
<br>
<br>

<!-- <div class="container">
    Modal
    <div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog">
        Modal content
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Login</h4>
          </div>
          <div class="modal-body">
            
            <form action="login" method="POST">
        <input type="text" name="Username" placeholder="Username">s
        <input type="password" name="Password" placeholder="Password">
        <input type="submit" class="btn btn-primary">
    </form> -->


<div class="card-container">
	<div class="card">
		<img alt="Movie 1"
			src="Images/avatar.jpeg">
		<div class="intro">
			<h1>Movie 1</h1>
			<p>This is movie 1</p>
		</div>

	</div>
	
	<div class="card">
		<img alt="Movie 1"
			src="Images/Drishyam 2.jpg">
		<div class="intro">
			<h1>Movie 2</h1>
			<p>This is movie 2</p>
		</div>

	</div>
	
	<div class="card">
		<img alt="Movie 1"
			src="Images/Wakanda Forever.jpg">
		<div class="intro">
			<h1>Movie 3</h1>
			<p>This is movie 3</p>
		</div>

	</div>
</div>
<form action="book" method="post">
<div>
<div class="container" style="float:left; margin-left:150px;">
    <table class="table table-hover">
        <thead>
            <tr>
            <th>Select</th>
                <th>Movie</th>
                <th>Show Slot</th>
                <th>Duration</th>
                <th>Screen No.</th>
                <th>Available</th>
            </tr>
        </thead>
        <tbody>


            <%
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection conn = null;
                conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "dipankar", "dipankar");
                Statement stmt = null;
                Statement stmt2 = null;
                stmt = conn.createStatement();
                stmt2 = conn.createStatement();
                String query = "select * from Shows";
                ResultSet rs = null;
                rs = stmt.executeQuery(query);
                while(rs.next()){
            %>
            
                <%
                    
                    int id = rs.getInt("id");
                  int Mid = rs.getInt("Mid");
                  int screen = rs.getInt("screen");
                  int slot = rs.getInt("slot");
                  int avail = rs.getInt("booked");
                  String query2 = "select title, duration from movies where id="+Mid;
                  ResultSet rs2 = null;
                    rs2 = stmt2.executeQuery(query2);
                    String moviename=null;
                    int duration=0;
                    boolean a=true;
                    while(a && rs2.next()){
                      moviename = rs2.getString("title");
                      duration= rs2.getInt("duration");
                      a=false;
                    }
                    int start=0, end=0;
                    if(slot==1){
                      start=9;
                      end=1;
                    }
                    else if(slot==2){
                      start=1;
                      end=5;
                    }
                    else if(slot==3){
                      start=5;
                      end=9;
                    }
                    if(screen==1){
                    	avail=100-avail;
                    }
                    if(screen==2){
                    	avail=100-avail;
                    }
                    if(screen==3){
                    	avail=100-avail;
                    }
                
                %>
                
                <tr>
                <td><input type="radio" value=<%=id %> name="id"></td>
                <td><%=moviename %></td>
                <td><%=start %> to <%=end %></td>
                <td><%=duration %> minutes</td>
                <td><%=screen %></td>
                <td><%=avail %></td>
            </tr>               

            <%      
                }
            %>

        </tbody>
    </table>
  </div>
</div>
<div class="testbox3"  style="float:right; margin-right:150px;">
        <h1>Book Movie</h1>
       

          <input type="number" name="num" placeholder="No. Of Seats">
          <br />
          <select name="class">
              <option value="normal">Normal - Rs.250</option>
              <option value="executive">Executive - Rs.300</option>
              <option value="premium">Premium - Rs.350</option>
        </select>
          <br /><br />
          <input class="btn btn-primary" type="submit" value="BOOK NOW">
      
</div>
</form>

</html>