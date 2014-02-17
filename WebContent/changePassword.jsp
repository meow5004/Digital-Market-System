<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="title" scope="request" value="Change Password" />
<jsp:include page="header.jsp"></jsp:include>

<div class="row-fluid">
	<form class="form-horizontal">
		<div class="control-group">
			<label class="control-label" for="oldPassword">Old Password</label>
			<div class="controls">
				<input type="text" id="oldPassword" name="oldPassword"
					placeholder="Old Password">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="newPassword">New Password</label>
			<div class="controls">
				<input type="password" id="newPassword" name="newPassword"
					placeholder="New Password">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="cNewPassword">Confirm New
				Password</label>
			<div class="controls">
				<input type="password" id="cNewPassword" name="cNewPassword"
					placeholder="Confirm New Password">
			</div>
		</div>
		<div class="control-group">
			<div class="controls">
				<button type="submit" class="btn btn-primary">Change Password</button>
			</div>
		</div>
	</form>
</div>
<jsp:include page="footer.jsp"></jsp:include>