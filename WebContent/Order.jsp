<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Factory | Order Acknowledgement</title>
</head>
<body>
	<div class="content">
		<jsp:include page="Header.jsp"></jsp:include>

		<div class="container">
			<div class="row">
				<div class="col-md-7 m-auto">
					<c:if test="${placeorder != null}">
						<p class="lead text-center text-success">
							Your order has been placed successfully<br> Order details
							are as follows
						</p>

						<table class="table">
							<tr>
								<th scope="row">Order Id</th>
								<td>${placeorder.orderId}</td>
							</tr>
							<tr>
								<th scope="row">Total Bill</th>
								<td>${placeorder.totalPrice}</td>
							</tr>
							<tr>
								<th scope="row">Status</th>
								<td>${placeorder.orderStatus}</td>
							</tr>
							<tr>
								<th scope="row">Date</th>
								<td>${placeorder.orderDate}</td>
							</tr>
						</table>
					</c:if>

					<marquee>Thanks for visiting!!!</marquee>

					<c:if test="${placeorder == null}">
						<p class="lead text-center text-danger">Order is not placed</p>
					</c:if>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>