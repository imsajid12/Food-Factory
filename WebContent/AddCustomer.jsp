<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Factory | Add Customer</title>
</head>
<body>
	<div class="content">
		<jsp:include page="Header.jsp"></jsp:include>
		<div class="container">
			<div class="row">
				<div class="col-md-6 m-auto">
					<form action="CustomerServlet" method="POST">
						<h3 class="text-center">Signup Form</h3>
						<input type="hidden" name="action" value="addCustomer">
						<%
							String status = (String) request.getAttribute("status");
							if (status != null)
								out.print("<p class='lead text-danger text-center'>" + status + "</p>");
						%>
						<div class="form-group">
							<label for="idCustomerName">Name</label> <input type="text"
								name="customername" id="idCustomerName" class="form-control">
						</div>

						<div class="form-group">
							<label for="idCustomerEmail">Email Id</label> <input type="email"
								name="customeremail" id="idCustomerEmail" class="form-control">
							<p id="err" class="text-danger"></p>
						</div>

						<div class="form-group">
							<label for="idCustomerPassword">Password</label> <input
								type="password" name="customerpassword" id="idCustomerPassword"
								class="form-control">
						</div>

						<div class="form-group">
							<label for="idCustomerContactNo">Contact No.</label> <input
								type="number" name="customercontactno" id="idCustomerContactNo"
								class="form-control">
						</div>

						<div class="form-group">
							<label for="idCustomerAddress">Address</label>
							<textarea rows="4" col="50" name="customeraddress"
								id="idCustomerAddress" class="form-control"></textarea>
						</div>

						<input type="submit" value="Add Customer"
							class="btn btn-lg green-bg mt-3"> <input type="reset"
							value="Cancel" class="btn btn-lg btn-danger mt-3">
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
				errorClass : "my-error-class",
				rules : {
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
				},
				messages : {
					customername : {
						required : "Name cannot be left blank"
					},
					customeremail : {
						required : "Email cannot be left blank"
					},
					customerpassword : {
						required : "Password cannot be left blank"
					},
					customercontactno : {
						required : "Contact cannot be left blank"
					},
					customeraddress : {
						required : "Address cannot be left blank"
					}

				}
			})
		});
	</script>
	<script>
		$(document).ready(function() {
			$("#customeremail").change(function() {
				alert(1);
				var myuser = $("#customeremail").val();
				$.ajax({
					type : "POST",
					data : {
						customeremail : myuser
					},
					url : "CheckUsername",
					success : function(result) {
						$("#err").html(result);
					}
				});
			});
		});
	</script>
</body>
</html>