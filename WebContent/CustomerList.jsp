<%@page import="java.util.ArrayList"%>
<%@page import="com.food.pojo.Customer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Factory | Profile</title>
</head>
<body>
	<div class="content">
		<jsp:include page="Header.jsp"></jsp:include>
		<%
			//Fetching the lits of customers from Session Obj
			List<Customer> customerList = new ArrayList<>();
			customerList = (List<Customer>) session.getAttribute("clist");

			//Fetching email of the logged in user
			String user = (String) session.getAttribute("user");
		%>
		<div class="container">
			<div class="row">
				<table class="table">
					<%
						String status = (String) request.getAttribute("status");
						if (status != null)
							out.print("<p class='lead text-danger text-center'>" + status + "</p>");
					%>
					<thead class="thead-dark">
						<tr>
							<th>Customer Id</th>
							<th>Customer Name</th>
							<th>Customer Email</th>
							<th>Customer Password</th>
							<th>Customer Contact</th>
							<th>Customer Address</th>
							<th colspan="2">Action</th>
						</tr>
					</thead>

					<%
						for (Customer customer : customerList) {

							//Fetching data of the logged in user from the list of customer 
							if (user.equals(customer.getCustomerEmail())) {
					%>

					<tbody>
						<tr>
							<th scope="row"><%=customer.getCustomerId()%></th>
							<td><%=customer.getCustomerName()%></td>
							<td><%=customer.getCustomerEmail()%></td>
							<td><%=customer.getCustomerPassword()%></td>
							<td><%=customer.getCustomerContact()%></td>
							<td><%=customer.getCustomerAddress()%></td>
							<td><a
								href="CustomerServlet?action=delete&id=<%=customer.getCustomerId()%>"
								class="btn btn-danger">Delete</a></td>
							<td><a
								href="CustomerServlet?action=update&id=<%=customer.getCustomerId()%>"
								class="btn green-bg">Update</a></td>
						</tr>
					</tbody>
					<%
						}
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