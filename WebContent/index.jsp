<%@ page
	language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="title" scope="request" value="Index" />
<jsp:include page="header.jsp"></jsp:include>

<c:forEach begin="1" end="5">
	<div class="row-fluid">
		<c:forEach begin="1" end="4">
			<div class="span3 text-center">
				<a href="<c:url value="product.jsp" />">
					<div>
						<img src="http://placehold.it/200x200" class="img-polaroid">
						<h5>ชื่อสินค้า</h5>
						<p>600 บาท</p>
					</div>
				</a>
			</div>
		</c:forEach>
	</div>
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
<jsp:include page="footer.jsp"></jsp:include>