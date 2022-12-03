<%@ page import="com.mysql.*"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<title>Cinephile</title>
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
		<a class="navbar-brand" href="user.jsp" style="font-size: 40px;"><b>Cinephile</b></a>
	</div>
	<ul class="nav navbar-nav navbar-right">
		<li><a href="#"><span class="glyphicon glyphicon-user"></span>
				Login</a></li>
		<!--       <li><a data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-user"></span><b> Login</b></a></li> -->
	</ul>
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
      <img src="Images/WhatsApp Image 2021-01-19 at 10.54.29 AM.jpeg" style="width:800px; height:500px;">
      <div class="carousel-caption">
        <b>Movie 1</b>
      </div>
    </div>
    <div class="item">
      <img src="" alt="..." style="width:800px;height:500px;">
      <div class="carousel-caption">
       <b>Movie 2</b>
      </div>
    </div>
    <div class="item">
      <img src="" alt="..." style="width:800px;height:500px;">
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
			src="Images/WhatsApp Image 2021-01-19 at 10.54.29 AM.jpeg">
		<div class="intro">
			<h1>Movie 1</h1>
			<p>This is movie 1</p>
		</div>

	</div>
	
	<div class="card">
		<img alt="Movie 1"
			src="Images/WhatsApp Image 2021-01-19 at 10.54.29 AM.jpeg">
		<div class="intro">
			<h1>Movie 2</h1>
			<p>This is movie 2</p>
		</div>

	</div>
	
	<div class="card">
		<img alt="Movie 1"
			src="Images/WhatsApp Image 2021-01-19 at 10.54.29 AM.jpeg">
		<div class="intro">
			<h1>Movie 3</h1>
			<p>This is movie 3</p>
		</div>

	</div>
</div>

</html>