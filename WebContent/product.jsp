<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="title" scope="request" value="Product" />
<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid">
	<div class="row-fluid">
		<h1>Product Name</h1>
		<strong>Tags: </strong>
		<c:forEach begin="1" end="5" var="i">
			<a href="#"><span class="label label-info">Tag ${i}</span></a>
		</c:forEach>
	</div>
	<p></p>
</div>

<div class="row-fluid">
	<div class="span3 text-center">
		<div>
			<img src="http://placehold.it/200x200" class="img-polaroid">
		</div>
		<p><strong>ราคา 600 บาท</strong></p>
		<c:choose>
			<c:when test="${sessionScope.testBtnAddToCart != null && sessionScope.testBtnAddToCart % 2 != 0}">
				<form action="<c:url value="addToCart.do" />" method="POST">
					<button name="product_id" value="1" class="btn btn-danger">
						<i class="fa fa-shopping-cart"></i> Add to cart
					</button>
				</form>
				
				<c:set var="testBtnAddToCart" scope="session" value="${sessionScope.testBtnAddToCart+1}"></c:set>
			</c:when>
			<c:otherwise>
				<a href="#" class="btn btn-success"><i class="fa fa-download"></i> Download</a>
				<c:choose>
					<c:when test="${sessionScope.testBtnAddToCart != null}">
						<c:set var="testBtnAddToCart" scope="session" value="${sessionScope.testBtnAddToCart+1}"></c:set>
					</c:when>
					<c:otherwise>
						<c:set var="testBtnAddToCart" scope="session" value="0"></c:set>
					</c:otherwise>
				</c:choose>
				
			</c:otherwise>
		</c:choose>	
	</div>
	
	<div class="span9">Lorem ipsum dolor sit amet, consectetur
		adipiscing elit. Vivamus cursus hendrerit neque, vitae feugiat erat
		venenatis lobortis. Proin condimentum elementum ante at porta. Proin
		pellentesque magna massa, non aliquam leo luctus eget. Aliquam quis
		sapien enim. Morbi vel dignissim nulla. Suspendisse odio purus, semper
		sed mi ut, dignissim sagittis eros. Donec sagittis elit turpis, vel
		ultrices ligula bibendum vitae. Pellentesque habitant morbi tristique
		senectus et netus et malesuada fames ac turpis egestas. Ut fringilla
		blandit purus. Duis vitae rutrum velit, eu dignissim massa. Sed eget
		lorem vel ligula vestibulum mattis ut sit amet erat. Aliquam faucibus
		feugiat laoreet. Praesent mi nisi, ultrices in euismod posuere,
		ultrices eu erat. Praesent at pulvinar nisi. Vivamus interdum vehicula
		adipiscing. Praesent consequat lorem ac dolor accumsan pulvinar. Cras
		quis metus elit. Lorem ipsum dolor sit amet, consectetur adipiscing
		elit. Vivamus cursus hendrerit neque, vitae feugiat erat venenatis
		lobortis. Proin condimentum elementum ante at porta. Proin
		pellentesque magna massa, non aliquam leo luctus eget. Aliquam quis
		sapien enim. Morbi vel dignissim nulla. Suspendisse odio purus, semper
		sed mi ut, dignissim sagittis eros. Donec sagittis elit turpis, vel
		ultrices ligula bibendum vitae. Pellentesque habitant morbi tristique
		senectus et netus et malesuada fames ac turpis egestas. Ut fringilla
		blandit purus. Duis vitae rutrum velit, eu dignissim massa. Sed eget
		lorem vel ligula vestibulum mattis ut sit amet erat. Aliquam faucibus
		feugiat laoreet. Praesent mi nisi, ultrices in euismod posuere,
		ultrices eu erat. Praesent at pulvinar nisi. Vivamus interdum vehicula
		adipiscing. Praesent consequat lorem ac dolor accumsan pulvinar. Cras
		quis metus elit.</div>
</div>
<div class="row-fluid">
	<h2 class="span12 review-head">Review for Product Name</h2>
	<span class="label label-success">Average: </span>
	<div class="rating-star">
		<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
			class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <i
			class="fa fa-star-o"></i>
	</div>
	<p> </p>
</div>

<c:forEach begin="1" end="3">
	<div class="row-fluid">
		<div class="span6">
			<div class="row-fluid">
				<strong>Name</strong>
				<div class="rating-star">
					<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
						class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <i
						class="fa fa-star-o"></i>
				</div>
			</div>
			<div class="row-fluid">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Mauris facilisis est ut fringilla dictum. In gravida
				tristique tortor, in lacinia.</div>
		</div>
		<div class="span6">
			<div class="row-fluid">
				<strong>Name</strong>
				<div class="rating-star">
					<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
						class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <i
						class="fa fa-star-o"></i>
				</div>
			</div>
			<div class="row-fluid">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit. Mauris facilisis est ut fringilla dictum. In gravida
				tristique tortor, in lacinia.</div>
		</div>
	</div>
	<p> </p>
</c:forEach>
<div class="text-center">
	<div class="pagination">
		<ul>
			<li><a href="#">Prev</a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">Next</a></li>
		</ul>
	</div>
</div>


<!-- if login && downloaded && ! reviewd-->
<div class="row-fluid">
	<form class="form-horizontal">
		<div class="control-group">
			<label class="control-label" for="inputEmail">Rating</label>
			<div class="controls">
				<select class="span12">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
				</select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Comments</label>
			<div class="controls">
				<textarea rows="3" class="span12"></textarea>
			</div>
		</div>
		<div class="control-group">
			<div class="controls">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</div>
	</form>
</div>
<!--  end if -->
<jsp:include page="footer.jsp"></jsp:include>