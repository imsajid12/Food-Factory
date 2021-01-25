<%@page import="com.food.pojo.Orders"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Factory | Orders List</title>
</head>
<body>
	<div class="content">
		<jsp:include page="Header.jsp"></jsp:include>

		<%
			List<Orders> orderList = (List<Orders>) session.getAttribute("orderList");
			if (!orderList.isEmpty()) {
				System.out.print(orderList.size());
		%>

		<div class="container">
			<div class="row">
				<div class="col-md-8 m-auto">
					<form action="OrderServlet" method="POST">
						<input type="hidden" name="action" value="placeorder">
						<table class="table">
							<thead class="thead-dark">
								<tr>
									<th>Order Id</th>
									<th>Customer Email</th>
									<th>Total Price</th>
									<th>Order Status</th>
									<th>Order Date</th>
									<th>Action</th>
								</tr>
							</thead>

							<%
								for (Orders order : orderList) {
							%>
							<tbody>
								<tr>
									<th scope="row"><%=order.getOrderId()%></th>
									<td><%=order.getCustomerEmail()%></td>
									<td><%=order.getTotalPrice()%></td>
									<td><%=order.getOrderStatus()%></td>
									<td><%=order.getOrderDate()%></td>
									<td><a class="btn btn-danger"
										href="OrderServlet?action=delete&id=<%=order.getOrderId()%>"
										class="btn btn-danger">Delete</a></td>
								</tr>
							</tbody>
							<%
								}
							%>
						</table>
						<!-- <input type="submit" value="Cancel Order"> -->
						<%
							} else if (orderList.isEmpty()) {
						%>
						<p class="lead text-center text-danger">No items added yet....</p>
						<%
							}
						%>
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>