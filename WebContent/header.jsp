<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${title}</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-tag.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-tag.js"></script>
</head>
<body>

	<div class="navbar">
		<div class="navbar-inner">
			<a class="brand" href="#">Digital Market</a>
			<ul class="nav">
				<li class="active"><a href="<c:url value="index.jsp" />">Home</a></li>
				<li><a href="<c:url value="tags.jsp" />">Tags</a></li>
			</ul>
			<ul class="nav pull-right">
				<li class="dropdown">
					<a href="<c:url value="register.jsp" />" class="dropdown-toggle" data-toggle="dropdown"> 
						Register 
						<b class="caret"></b>
					</a>
					<div class="dropdown-menu">
						<form class="navbar-form text-center" method="POST" action="<c:url value="register.do" />">
							<h4>Register</h4>
						  	<input type="email" name="email" class="span2" placeholder="Email" required>
						  	<input type="password" name="password" class="span2" placeholder="Password" required>
						  	<input type="password" name="c_password" class="span2" placeholder="Confirm Password" required>
						  	<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</li>
				<li class="dropdown">
					<a href="<c:url value="login.jsp" />" class="dropdown-toggle" data-toggle="dropdown"> 
						Login 
						<b class="caret"></b>
					</a>
					<div class="dropdown-menu">
						<form class="navbar-form text-center" method="POST" action="<c:url value="login.do" />">
							<h4>Login</h4>
						  	<input type="email" name="email" class="span2" placeholder="Email" required>
						  	<input type="password" name="password" class="span2" placeholder="Password" required>
						  	<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
						mix5003 (0 ฿)
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value="changePassword.jsp" />">Change Password</a></li>
						<li><a href="<c:url value="history.jsp" />">History</a></li>
						<li class="divider"></li>
						<li><a href="<c:url value="logout.do" />">Logout</a></li>
					</ul>
				</li>
			</ul>
			
		</div>
	</div>
	<div class="container-fluid">
	