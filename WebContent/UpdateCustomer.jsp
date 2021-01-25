<%@page import="com.food.pojo.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Factory | Edit Profile</title>
</head>
<body>
	<div class="content">
		<jsp:include page="Header.jsp"></jsp:include>
		<%
			Customer customer = (Customer) session.getAttribute("customer");
		%>

		<div class="container">
			<div class="row">
				<div class="col-md-6 m-auto">
					<form action="CustomerServlet" method="POST">
						<h3 class="text-center">Edit Profile</h3>
						<input type="hidden" name="action" value="updateCustomer">

						<div class="form-group">
							<label for="idCustomerId">Customer Id</label> <input
								type="number" id="idCustomerId" name="customerid"
								value="<%=customer.getCustomerId()%>" class="form-control"
								readonly>
						</div>

						<div class="form-group">
							<label for="idCustomerName">Name</label> <input type="text"
								id="idCustomerName" name="customername"
								value="<%=customer.getCustomerName()%>" class="form-control">
						</div>

						<div class="form-group">
							<label for="idCustomerEmailId">Email Id</label> <input
								type="email" id="idCustomerEmailId" name="customeremail"
								value="<%=customer.getCustomerEmail()%>" class="form-control">
						</div>

						<div class="form-group">
							<label for="idCustomerPassword">Password</label> <input
								type="password" id="idCustomerPassword" name="customerpassword"
								value="<%=customer.getCustomerPassword()%>" class="form-control">
						</div>

						<div class="form-group">
							<label for="idCustomerContactNo">Contact No.</label> <input
								type="number" id="idCustomerContactNo" name="customercontactno"
								value="<%=customer.getCustomerContact()%>" class="form-control">
						</div>

						<div class="form-group">
							<label for="idCustomerAddress">Address</label>
							<textarea rows="4" col="50" id="idCustomerAddress"
								name="customeraddress" class="form-control"><%=customer.getCustomerAddress()%></textarea>
						</div>

						<input type="submit" value="Update Customer"
							class="btn btn-lg green-bg"> <input type="reset"
							value="Cancel" class="btn btn-lg btn-danger">

					</form>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- <script
  src="https://code.jquery.com/jquery-3.5.0.min.js"
  integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ="
  crossorigin="anonymous"></script>
   -->
	<script src="jquery-3.5.0.min.js"></script>
	<script src="jquery.validate.min.js"></script>
	<script>
		$(document).ready(function() {
			$("form").validate({
				errorClass: "my-error-class",
				rules : {
					customerid : {
						required : true
					},
					customername : {
						required : true
					},
					customeremail : {
						required : true
					},
					customerpassword : {
						required : true
					},
					customercontactno : {
						required : true
					},
					customeraddress : {
						required : true
					}
				}
			})
		});
	</script>
</body>
</html>