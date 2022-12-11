
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<head>
  <title>cinephile</title>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
  <link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Nunito&family=Saira:wght@200&display=swap" rel="stylesheet">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
</head>

<nav class="navbar navbar-inverse">
  <div class="nav-container">
    <div class="navbar-header">
      <a class="navbar-brand" href="user.jsp" style="font-size: 40px;"><b class="nav-brand" style="color:#ffffff"><span id="hl4">cine</span>phile</b></a>
    </div>
  </div>
</nav>
<!-- <div class="cards"> -->
<center style="margin:10px;">
	<div style="float: left; margin-left: 30px;margin-top:50px;">
		<div class="testbox1">
		  <h1>add Movie</h1>
		  <form action="userinput" method="post">
		  <input type="text" name="id" placeholder="Movie ID" required/>
		  <input type="text" name="movieName" placeholder="Movie Name" required/>
		  <input type="text" name="genre" placeholder="Genre" required/>
		  <input type="text" name="duration" placeholder="Duration" required/>
		  <br />
		  <br />
		   <input class="btn btn-primary" type="submit" value="ADD" >
		  </form>
		</div>
	</div>

<!-- 	<div style="float: right; margin-right: 50px;"> -->
		<div style="float: left; margin-left: 30px;margin-top:50px;">
			<div class="testbox2">
			  <h1>Schedule Movie</h1>
			  <form action="schedule" method="POST">
			  <input type="text" name="showId" placeholder="Show ID">
			  <input type="text" name="movieId" placeholder="Movie ID">
	          <input type="text" name="screen" placeholder="Screen Number">
	          <input type="text" name="slot" placeholder="Slot Number">
	          <br />
	          <br />
			   <input class="btn btn-primary" type="submit" value="SCHEDULE">
			  </form>
			</div>
		</div>

		<div style="float: left; margin-left:30px;margin-top:50px;">
			<div class="testbox3">
			  <h1>Delete Movie</h1>
			  <form action="delete" method="POST">
	        	<input type="text" name="id" placeholder="Movie ID">
	        	<br />
	        	<br />
			    <input class="btn btn-primary" type="submit" value="DELETE">
			  </form>
			</div>
		</div>

<!-- 	</div> -->
</center>
<div>
    <div class="container">
	    <table class="table table-hover" style="margin: 30px ;">
	        <thead>
	            <tr>
	            	<th><b>ID</b></th>
	                <th><b>Title</b></th>
	                <th><b>Genre</b></th>
	            </tr>
	        </thead>
	        <tbody>


	            <%
	                Class.forName("oracle.jdbc.driver.OracleDriver");
	                Connection conn = null;
	                conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "dipankar", "dipankar");
	                Statement stmt = null;
	                stmt = conn.createStatement();
	                String query = "select * from Movies";
	                ResultSet rs = null;
	                rs = stmt.executeQuery(query);
	                while(rs.next()){
	            %>
	            <tr>
	                <%
	                	int id = rs.getInt("id");
	                    String title = rs.getString("title");
	                    String genre = rs.getString("genre");
	                
	                %>
	                <td><%=id %></td>
	                <td><%=title %></td>
	                <td><%=genre %></td>
	            </tr>               

	            <%      
	                }
	            %>

	        </tbody>
	    </table>
    </div>
</div>

 
 
<div class="footer">
	<h5 class="brand-footer"><b><span id="hl4">cine</span>phile</b></h5>
	<br>
	<p class="meta">ABOUT US   |   TERMS OF SERVICE   |   PRIVACY POLICY   |   SITE DATA </p>
	<h7 class="footer-data">&#169 2022 Cinephile India Pvt Ltd. All rights reserved.</h7>
</div>

<style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset, input, textarea, p, blockquote, th, td { 
  padding:0;
  margin:0;}
/*   
b.navbar-brand{
	margin-left:125px;
	color: white;
} */
 center{
 background-color:black:
 } 
body,
input,
textarea,
select {
  font-family: 'Open Sans', sans-serif;
  font-size: 16px;
  color: #4c4c4c;
}
#hl,#hl2,#hl3,#hl4{
	color:#FFE227;
}
*{
	font-family: 'Nunito', sans-serif;
}
/* 
.brand{
	color:white;
}
 */
.nav-container{
height:85px;
/* padding-top:70px; */
	padding-top: 20px;
	padding-left:125px;
};

.navbar-brand{
	color= white;
}

.container{
	padding-top:0;
}

center{
display: flex;
	width:100%;
	flex-wrap:wrap;
	}
h1 {
  font-size: 32px;
  font-weight: 300;
  color: #4c4c4c;
  text-align: center;
  padding-top: 10px;
  margin-bottom: 10px;
}
.testbox1, .testbox2, .testbox3 {
  /*margin: 20px auto;*/
  width: 300px; 
  /*height: 330px;*/ 
  -webkit-border-radius: 8px/7px; 
  -moz-border-radius: 8px/7px; 
  border-radius: 8px/7px; 
  background-color: #ebebeb; 
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.9); 
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.9); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.9); 
  border: solid 1px #cbc9c9;
}
.testbox1{
	height: 340px; 
}
.testbox2{
	height: 340px; 
}
.testbox3{
	height: 185px; 
}
form{
  margin: 0 30px;
}
input[type=text],input[type=password]{
  width: 200px; 
  height: 39px; 
  -webkit-border-radius: 0px 4px 4px 0px/5px 5px 4px 4px; 
  -moz-border-radius: 0px 4px 4px 0px/0px 0px 4px 4px; 
  border-radius: 0px 4px 4px 0px/5px 5px 4px 4px; 
  background-color: #fff; 
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  border: solid 1px #cbc9c9;
  margin-left: -5px;
  margin-top: 13px; 
  padding-left: 10px;
}
input[type=password]{
  margin-bottom: 25px;
}

.footer{
	width:100%;
	position: absolute;
	background-color: black;
	color:white;
	padding-top:35px; 
padding-bottom: 20px;
text-align:center;
	
}
.brand-footer,.footer-data{
text-align:center;}

.meta{
	margin-bottom: 20px;
	font-size: 10px;
}
</style>

</html>