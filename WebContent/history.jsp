<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="title" scope="request" value="Show History" />
<jsp:include page="header.jsp"></jsp:include>

<div class="row-fluid">
	<form class="form-inline text-center">
		Show: 
		<label class="checkbox"> 
			<input type="checkbox" name="show[]" value="buy"> 
			What I am buy
		</label> 
		<label class="checkbox"> 
			<input type="checkbox" name="show[]" value="sell">
			What I am sell
		</label> 
		<button type="submit" name="filter" class="btn btn-primary">Filter</button>
	</form>
</div>

<div class="row-fluid">
	<div class="span12">
		<table class="table table-condensed table-hover">
			<thead>
				<tr>
					<th class="span1">Order No.</th>
					<th class="span1">Status</th>
					<th class="span2">Order Time</th>
					<th class="span6">Product List</th>
					<th class="span2">Order Total</th>
				</tr>
			</thead>
			<tbody>
				<tr class="success">
					<td class="span2">0000001</td>
					<td class="span2">Selled</td>
					<td class="span2">Order Time</td>
					<td class="span6">
						<ul>
							<li>product 1</li>
							<li>product 2</li>
							<li>product 3</li>
						</ul>
					</td>
					<td class="span2">3500 ฿</td>
				</tr>
				<tr class="info">
					<td class="span2">0000001</td>
					<td class="span2">Buyed</td>
					<td class="span2">Order Time</td>
					<td class="span6">
						<ul>
							<li>product 1</li>
							<li>product 2</li>
							<li>product 3</li>
						</ul>
					</td>
					<td class="span2">3500 ฿</td>
				</tr>
				<tr class="warning">
					<td class="span2">0000001</td>
					<td class="span2">Pending for payment</td>
					<td class="span2">Order Time</td>
					<td class="span6">
						<ul>
							<li>product 1</li>
							<li>product 2</li>
							<li>product 3</li>
						</ul>
					</td>
					<td class="span2">3500 ฿</td>
				</tr>
				<tr class="success">
					<td class="span2">0000001</td>
					<td class="span2">Selled</td>
					<td class="span2">Order Time</td>
					<td class="span6">
						<ul>
							<li>product 1</li>
							<li>product 2</li>
							<li>product 3</li>
						</ul>
					</td>
					<td class="span2">3500 ฿</td>
				</tr>
				<tr class="info">
					<td class="span2">0000001</td>
					<td class="span2">Buyed</td>
					<td class="span2">Order Time</td>
					<td class="span6">
						<ul>
							<li>product 1</li>
							<li>product 2</li>
							<li>product 3</li>
						</ul>
					</td>
					<td class="span2">3500 ฿</td>
				</tr>
				<tr class="warning">
					<td class="span2">0000001</td>
					<td class="span2">Pending for payment</td>
					<td class="span2">Order Time</td>
					<td class="span6">
						<ul>
							<li>product 1</li>
							<li>product 2</li>
							<li>product 3</li>
						</ul>
					</td>
					<td class="span2">3500 ฿</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>

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