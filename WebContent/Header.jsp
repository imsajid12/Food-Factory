<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- Basic -->
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<!-- Mobile Metas -->
		<meta name="viewport"
			content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0">

			<!-- Site Metas -->
			<title>Food Factory</title> <!-- Bootstrap CSS -->
			<link rel="stylesheet"
				href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
				integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
				crossorigin="anonymous">

				<link rel="stylesheet"
					href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" />
					
			<!-- Google Fonts -->
			<link href="https://fonts.googleapis.com/css?family=Cardo:400,700|Oswald" rel="stylesheet">

				<link rel="stylesheet" href="css/mystyle.css">
				
				<link rel="icon" type="image/png" href="images/favicon-32x32.png" />

					<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<%
		String admin = (String) session.getAttribute("admin");
		String user = (String) session.getAttribute("user");
	%>
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark mb-4">
	<div class="container">
		<a class="navbar-brand" href="index.jsp"><img
			src="images/logo.png" class="image-fluid" /></a>
		<button class="navbar-toggler" data-toggle="collapse"
			data-target="#navbarCollapse" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="navbar-nav ml-auto">
				<%
					if (admin == null && user != null) {
				%>

				<li class="nav-item"><a class="nav-link"
					href="index.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="FoodServlet">Food
						Menu</a></li>
				<li class="nav-item"><a class="nav-link" href="CustomerServlet">Edit
						Profile</a></li>
				<li class="nav-item"><a class="nav-link"
					href="ChangePassword.jsp">Change Password</a></li>
				<li class="nav-item"><a class="nav-link" href="LoginServlet">Log
						Out</a></li>
				<li class="nav-item"><a class="nav-link" href="CartServlet">Cart</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="OrderServlet">Order</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="ContactUs.jsp">Contact
						Us</a></li>

				<%
					}
				%>
				<%
					if (admin != null && user == null) {
				%>

				<li class="nav-item"><a class="nav-link"
					href="index.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="FoodServlet">Food
						Menu</a></li>
				<li class="nav-item"><a class="nav-link" href="AddFood.jsp">Add
						Food</a></li>
				<li class="nav-item"><a class="nav-link"
					href="ChangePassword.jsp">Change Password</a></li>
				<li class="nav-item"><a class="nav-link" href="LoginServlet">Log
						Out</a></li>
				<li class="nav-item"><a class="nav-link" href="ContactUs.jsp">Contact
						Us</a></li>

				<%
					}
				%>
				<%
					if (admin == null && user == null) {
				%>

				<li class="nav-item"><a class="nav-link"
					href="index.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="FoodServlet">Food
						Menu</a></li>
				<li class="nav-item"><a class="nav-link" href="AddCustomer.jsp">Register</a></li>
				<li class="nav-item"><a class="nav-link" href="Login.jsp">Log
						In</a></li>

				<li class="nav-item"><a class="nav-link" href="ContactUs.jsp">Contact
						Us</a></li>

				<%
					}
				%>
				<%
					if (admin != null && user != null) {
				%>

				<li class="nav-item"><a class="nav-link"
					href="LoginServlet">Log Out</a></li>

				<%
					}
				%>
			</ul>
		</div>
		<!-- end of menu -->
	</div>
	</nav>
</body>
</html>