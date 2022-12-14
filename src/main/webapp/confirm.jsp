<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
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
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
    <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js">
</script>
<script src=
"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js">
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
  </head>
    <style>
    .brand{
	margin-left:125px;
	color: white;
}

*{
	scroll-behavior: smooth;
	padding:0;
	margin:0;
}
.brand-footer{
	color:white;
}

.footer-data{
	color: white;
	text-align: center;
	
}

.footer{
	width:100%;
	position: absolute;
	background-color: black;
	color:white;
	padding-top:35px;
	padding-bottom: 20px;
	text-align: center;
	margin-top: 20px;
}
.navbar-header{
	padding-top: 20px;
	padding-bottom: 15px;
	margin:auto;
}

ul.nav.navbar-nav.navbar-right{
	padding-top: 35px;
	margin-left: 10rem;
	margin-right: 125px;
}
*{
	font-family: 'Nunito';
}
span{
	color:#FFE227;
	font-weight:bold;
	}
      body {
        text-align: center;
        /* padding: 40px 0; */
        background: #EBF0F5;
      }
        h1 {
          color: #88B04B;
          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        p {
          color: #404F5E;
          font-size:20px;
          margin: 0;
        }
      i {
        color: #9ABC66;
        font-size: 50px;
        line-height: 70px;
        margin-left:-15px;
      }
      .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
        margin-top: 20px;
      }
      #meta{
	margin-bottom: 20px;
	font-size: 10px;
	color: white;
}
.bid{
font-size: 15px;
}
.note{
font-size: 10px;
}
    </style>
    <body>
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
      <div class="card">
      <div style="border-radius:70px; height:70px; width:70px; background: #F8FAF5; margin:0 auto;">
        <i class="checkmark">&#x2713</i>
      </div>
        <h1>Booking Successful</h1> 
        <h4>Total : Rs. <%= request.getAttribute("cost") %></h4><h5><%= request.getAttribute("number") %> x <%= request.getAttribute("sType") %> tickets</p><br><p class="bid">BOOKING ID: CIOD22</p><hr><p>Movie: <%= request.getAttribute("name") %>- (<%= request.getAttribute("duration") %> minutes)</p><h4>Screen: <%= request.getAttribute("screen") %></h4><br><h4>Slot: <%= request.getAttribute("slot") %></h4><p class="note">Kindly show the booking details and collect the tickets from the counter/kiosk.<br>100% cancellation charges will be levied upon cancellation after a successful booking.</p>
      </div>
      <div class="footer">
	<h5 class="brand-footer"><b><span id="hl4">cine</span>phile</b></h5>
	<p id="meta">ABOUT US   |   TERMS OF SERVICE   |   PRIVACY POLICY   |   SITE DATA </p>
	<br>
	<h7 class="footer-data">&#169 2022 Cinephile India Pvt Ltd. All rights reserved.</h7>
</div>
    </body>
</html>