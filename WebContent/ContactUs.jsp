<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Factory | Contact Us</title>
</head>
<body>
	<div class="content">
		<jsp:include page="Header.jsp"></jsp:include>

		<div class="conatiner">
			<div class="row">
				<div class="col-md-6 m-auto">
					<form class="bg-light p-5">
						<h3 class="text-center">Contact Us</h3>
						<div class="form-group">
							<label for="name">Name</label> <input type="text" id="name"
								class="form-control">
						</div>

						<div class="form-group">
							<label for="email">Email</label> <input type="email" id="email"
								class="form-control">
						</div>

						<div class="form-group">
							<label for="message">Message</label>
							<textarea row="4" id="message" class="form-control"></textarea>
						</div>

						<input type="submit" vlaue="Send Message"
							class="btn btn-lg green-bg mt-3">
					</form>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>