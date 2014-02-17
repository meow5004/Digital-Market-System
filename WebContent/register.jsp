<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="title" scope="request" value="Register" />
<jsp:include page="header.jsp"></jsp:include>

<form class="form-horizontal" method="POST" action="<c:url value="register.do" />">
	<div class="control-group">
		<label class="control-label" for="inputEmail">Email</label>
		<div class="controls">
			<input type="email" name="email" placeholder="Email" required>
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="inputPassword">Password</label>
		<div class="controls">
			<input type="password" name="password" placeholder="Password" required>
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="inputPassword">Confirm Password</label>
		<div class="controls">
			<input type="password" name="c_password" placeholder="Confirm Password" required>
		</div>
	</div>
	<div class="control-group">
		<div class="controls">
			<button type="submit" class="btn btn-primary">Register</button>
		</div>
	</div>
</form>

<jsp:include page="footer.jsp"></jsp:include>