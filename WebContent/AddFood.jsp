<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Food Factory | Add Food</title>
</head>
<body>
	<div class="content">
		<jsp:include page="Header.jsp"></jsp:include>
		<div class="container">
			<div class="row">
				<div class="col-md-6 m-auto">
					<form action="FoodServlet" method="POST"
						enctype="multipart/form-data">
						<h3 class="text-center">Add Food</h3>
						<input type="hidden" name="action" value="addFood">
						<div class="form-group">
							<label for="idFoodName">Food Name</label> <input type="text"
								name="foodname" id="idFoodName" class="form-control">
						</div>

						<div class="form-group">
							<label for="idFoodCategory">Food Category</label> <input
								type="text" name="foodcat" id="idFoodCategory"
								class="form-control">
						</div>

						<div class="form-group">
							<label for="idFoodImage">Food Image</label> <input type="file"
								name="foodimage" id="idFoodImage" class="form-control-file">
						</div>

						<div class="form-group">
							<label for="idFoodPrice">Food Price</label> <input type="text"
								name="foodprice" id="idFoodPrice" class="form-control">
						</div>

						<input type="submit" value="Add Food"
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
				errorClass: "my-error-class",
				rules : {
					foodname : {
						required : true
					},
					foodcat : {
						required : true
					},
					foodimage : {
						required : true
					},
					foodprice : {
						required : true
					},
				},
				messages : {
    				foodname :
					{
						required: "Food name can't be left blank"
					},
					foodcat :
					{
						required: "Food category can't be left blank"
					},
					foodimage :
					{
						required: "Please select image"
					},
					foodprice :
					{
						required: "Food price can't be left blank"
					},
    			}
			})
		});
	</script>
</body>
</html>