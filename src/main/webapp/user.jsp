
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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Nunito&family=Saira:wght@200&display=swap" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<meta name="viewport"content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js">
</script>
<script src=
"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js">
</script>
</head>



<div class="navbar navbar-inverse" style="margin-bottom:0%;">
<div class="nav-container">
	<div class="navbar-header">
		<a class="navbar-brand" href="user.jsp" style="font-size: 40px;"><b class="brand"><span id="hl">cine</span>phile</b></a>
	</div>
	<ul class="nav navbar-nav navbar-right">
	<li><a href="#book"><b>book tickets</b> </a></li>
		       <li><a data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-user"></span><b> admin login</b></a></li>
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
          </div>
          <div class="modal-body">
            <h2>admin login</h2>
            <form action="login" method="POST">
        <input type="text" name="Username" placeholder="Username">
        &nbsp
        <input type="password" name="Password" placeholder="Password">
        <input type="submit" class="btn btn-primary">
    </form>



          </div>
          <div class="modal-footer">
           <!--  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
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
  <div class="carousel-inner" role="listbox" style="height:600px">
    <div class="item active" align="center" >
      <img src="Images/Avatar-The-Way-Of-Water-Header.webp" style="width:1100px; height:100%;">
    <!--   <div class="carousel-caption" align="center">
        <b>Movie 1</b>
      </div> -->
    </div>
 
    <div class="item" align="center">
      <img src="Images/black-panther-wakanda-forever-movie-review-002.jpg" alt="..." style="width:1150px;height:100%;">
     <!--  <div class="carousel-caption">
       <b>Movie 2</b>
      </div> -->
    </div>
    <div class="item" align="center">
      <img src="Images/maxresdefault.jpg" alt="..." style="width:1100px;height:100%; ">
      <!-- <div class="carousel-caption">
      <b>Movie 3</b>
      </div> -->
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
    
    <div class="heading"><span id="hl2">now</span> showing</div>


<div class="card-container">
	<div class="card">
		<img alt="Movie 1"
			src="Images/avatar.jpeg">
		<div class="intro">
<!-- 			<h3>Avatar: The Way of Water</h3> -->
			<p>Jake Sully lives with his newfound family formed on the planet of Pandora. Once a familiar threat returns to finish what was previously started, Jake must work with Neytiri and the army of the Na'vi race to protect their planet.<br><span>Director</span>
: James Cameron</p>
		</div>

	</div>
	
	<div class="card">
		<img alt="Movie 2"
			src="Images/Wakanda Forever.jpg">
		<div class="intro">
<!-- 			<h3>Black Panther: Wakanda Forever</h3> -->
			<p>Queen Ramonda, Shuri, M'Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T'Challa's death.<br><span>Director</span>
: Ryan Coogler</p>
		</div>

	</div>
	
	<div class="card">
		<img alt="Movie 3"
			src="Images/Drishyam 2.jpg">
		<div class="intro">
<!-- 			<h3>Drishyam 2</h3> -->
			<p>Seven years after the case related to Vijay and his family was closed, a series of unexpected events brings a truth to light that threatens to change everything for the Salgaonkars.<br><span>Director</span>
: Abhishek Pathak</p>
		</div>

	</div>
</div>
<div class="heading"><span id="hl3">box</span> office</div>
<form action="book" method="post">
<div>
<div class="container">
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
                String query = "select * from shows";
                ResultSet rs = null;
                //out.println("Hi....");
                rs = stmt.executeQuery(query);
                while(rs.next()){
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
                <td><input type="radio" value=<%= id %> name="id"></td>
                <td><%= moviename %></td>
                <td><%= start %> to <%= end %></td>
                <td><%= duration %> minutes</td>
                <td><%= screen %></td>
                <td><%= avail %></td>
            </tr>               

            <%      
                }
            %>

        </tbody>
    </table>
  </div>
  <br>
 </div>
<br>

      
     



<!--     <div class="textbox3" > -->

        

 

        <form class="form-inline">

<!--             <label for="seat">Username:</label> -->

            <input type= "number" class="form-control" id="num" placeholder="No. of seats">
			<select class="rates">
              <option value="normal">Normal - Rs.280</option>
              <option value="executive">Executive - Rs.300</option>
              <option value="premium">Premium - Rs.320</option>
        </select>

<!--             </div> -->
          <input  type="submit" value="book now" id="btn">
          
<!--           </div> -->
        </form>

<!--     </div> -->

<div class="footer">
	<h5 class="brand-footer"><b><span id="hl4">cine</span>phile</b></h5>
	<br>
	<h7 class="footer-data">&#169 2022 Cinephile India Pvt Ltd. All rights reserved.</h7>
</div>

<!-- </body> -->

</html>