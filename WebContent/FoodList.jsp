<%@page import="com.food.pojo.Food"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Factory | Food Items</title>
</head>
<body>
	<div class="content">
		<jsp:include page="Header.jsp"></jsp:include>
		<%
			String admin = (String) session.getAttribute("admin");
			String user = (String) session.getAttribute("user");
		%>
		<%
			List<Food> foodList = new ArrayList<>();
			foodList = (List<Food>) session.getAttribute("flist");
		%>

		<%
			String status = (String) request.getAttribute("status");
			if (status != null) {
				out.print("<p class='lead text-danger text-center'>" + status + "</p>");
			}
		%>
		<div class="container">
			<div class="row">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th>Food Id</th>
							<th>Food Name</th>
							<th>Food Category</th>
							<th>Food Price</th>
							<th>Food Image</th>

							<%
								if (admin != null && user == null) {
							%>
							<th colspan="2">Action</th>
							<%
								}
							%>

							<%
								if (admin == null && user != null) {
							%>
							<th>Action</th>
							<%
								}
							%>
						</tr>
					</thead>
					<%
						for (Food food : foodList) {
					%>
					<tbody>

						<tr>
							<th scope="row"><%=food.getFoodId()%></th>
							<td><%=food.getFoodName()%></td>
							<td><%=food.getFoodCategory()%></td>
							<td><%=food.getFoodPrice()%></td>
							<!-- <tdfood.getFoodImage()e() %></td>  -->

							<td><img src="ImageServlet?foodId=<%=food.getFoodId()%>"
								width="150px" height="150px" style="border-radius: 5%"></td>

							<%
								if (admin != null && user == null) {
							%>
							<td><a
								href="FoodServlet?action=delete&id=<%=food.getFoodId()%>"
								class="btn btn-danger">Delete</a></td>
							<td><a
								href="FoodServlet?action=update&id=<%=food.getFoodId()%>"
								class="btn green-bg">Update</a></td>
							<%
								}
							%>

							<%
								if (admin == null && user != null) {
							%>
							<td><a
								href="CartServlet?action=addtocart&id=<%=food.getFoodId()%>"
								class="btn green-bg">Add to cart</a></td>
							<%
								}
							%>

						</tr>
					</tbody>

					<%
						//end of for each loop
						}
					%>
				</table>
			</div>
		</div>
	</div>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>