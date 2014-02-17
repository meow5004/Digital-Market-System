<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="title" scope="request" value="Add Product" />
<jsp:include page="header.jsp"></jsp:include>

<div class="row-fluid">
	<div class="span8 offset2">
		<form>
			<fieldset>
				<legend>Add Product</legend>
				<label for="product_name">
				Name
				</label>
				<input class="span12" type="text" id="product_name" name="product_name" placeholder="Name"> 
				
				<label for="product_price">
				Price
				</label>
				<input class="span12" type="number" id="product_price" name="product_price" placeholder="Price"> 
			
				<% //TODO: AJAX Upload %>
				<label for="product_img">
				Image
				</label>
				<input class="span12" type="file" id="product_img" name="product_img"> 
				
				<label for="product_file">
				File
				</label>
				<input class="span12" type="file" id="product_file" name="product_file"> 
			
				<label for="product_desc">
				Description
				</label>
				<textarea rows="5" class="span12" id="product_desc" name="product_desc" placeholder="Description"></textarea>
				
				
			</fieldset>
			
			<fieldset>
			<button type="submit" class="btn btn-primary">Submit</button>
			</fieldset>
		</form>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>