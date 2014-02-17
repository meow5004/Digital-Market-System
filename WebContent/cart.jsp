<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="title" scope="request" value="Cart" />
<jsp:include page="header.jsp"></jsp:include>

<div class="row-fluid">
	<div class="span12">
		<table class="table table-condensed table-hover">
		<thead>
			<tr>
				<th style="width:50px;">&nbsp;</th>
				<th class="span2">Product ID</th>
				<th>Product Name</th>
				<th class="span2">Product Price</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach begin="1" end="5" var="i">
			<tr>
				<td>
					<form action="editCart.do" method="POST">
						<button class="btn btn-danger" name="remove" value="${i}"><i class="fa fa-times-circle"></i></button>
					</form>
				</td>
				<td>00000${i}</td>
				<td>Product ${i}</td>
				<td>500</td>
			</tr>
			</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="3" class="text-center"><strong>Total Price</strong></td>
				<td><strong>2,500 ฿</strong></td>
			</tr>
		</tfoot>
		</table>
	</div>
</div>
<div class="pull-right">
	<form action="processCart.do" method="POST">
		<button name="clear_cart" class="btn btn-warning">Clear Cart</button>
		<button name="confirm_order" class="btn btn-danger">Confirm Order</button>
	</form>
</div>
<jsp:include page="footer.jsp"></jsp:include>