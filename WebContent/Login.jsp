<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Factory | Login</title>
</head>
<body>
	<div class="content">
		<jsp:include page="Header.jsp"></jsp:include>
		<div class="container">
			<div class="row">
				<div class="col-md-6 m-auto">
					<form action="LoginServlet" method="POST">
						<h3 class="text-center">Login</h3>
						<input type="hidden" name="action" value="login">
						<%
							String status = (String) request.getAttribute("status");
							if (status != null)
								out.print("<p class='lead text-danger text-center'>" + status + "</p>");
						%>

						<div class="form-group">
							<label for="idUserType">Select</label> <select
								class="form-control" id="idUserType" name="type">
								<option selected disabled>---Select---</option>
								<option value="admin">Admin</option>
								<option value="user">User</option>
							</select>
						</div>
						<div class="form-group">
							<label for="idUsername">Email Id</label> <input type="text"
								name="username" id="idUsername" class="form-control">
						</div>
						<div class="form-group">
							<label for="pass">Password</label> <input type="password"
								name="password" id="pass" class="form-control">
						</div>
						<div class="form-check">
							<input type="checkbox" id="idShowPassword"
								class="form-check-input" onclick="showPassword()"> <label
								class="form-check-label" for="idPassword">Show Password</label>
						</div>

						<input type="submit" value="Login"
							class="btn btn-lg green-bg mt-3">
						<!-- <input type="reset" value="Cancel" class="btn btn-lg btn-danger mt-3"> -->

					</form>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="Footer.jsp"></jsp:include>

	<script src="jquery-3.5.0.min.js"></script>
	<script src="jquery.validate.min.js"></script>

	<script>
		$(document).ready(function() {
			$("form").validate({
				errorClass: "my-error-class",
				rules : {
					username : {
						required : true
					},
					password : {
						required : true
					},
				},
				messages : {
    				username : {
    					required: "Please enter your email address"
    				},
    				password :
    					{
    						required: "Please enter your password"
    					},
    			}
			})
		});
	</script>
	<script>
		function showPassword() {
			var password = document.getElementById("pass");
			if (password.type === "password") {
				password.type = "text";
			} else {
				password.type = "password";
			}
		}
	</script>
</body>
</html>