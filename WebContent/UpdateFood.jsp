<%@page import="com.food.pojo.Food"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Factory | Update Food</title>
</head>
<body>
	<div class="content">
		<jsp:include page="Header.jsp"></jsp:include>
		<%
			Food food = (Food) session.getAttribute("food");
		%>

		<div class="container">
			<div class="row">
				<div class="col-md-6 m-auto">
					<form action="FoodServlet" method="POST"
						enctype="multipart/form-data">
						<h3 class="text-center">Edit Food Details</h3>
						<input type="hidden" name="action" value="updateFood">

						<div class="form-group">
							<label for="idFoodId">Food Id</label> <input type="text"
								id="idFoodId" name="foodid" value="<%=food.getFoodId()%>"
								class="form-control" readonly>
						</div>

						<div class="form-group">
							<label for="idFoodName">Food Name</label> <input type="text"
								id="idFoodName" name="foodname" value="<%=food.getFoodName()%>"
								class="form-control">
						</div>

						<div class="form-group">
							<label for="idFoodCategory">Food Category</label> <input
								type="text" id="idFoodCategory" name="foodcat"
								value="<%=food.getFoodCategory()%>" class="form-control">
						</div>

						<img src="ImageServlet?foodId=<%=food.getFoodId()%>"
							class="img-fluid img-thumbnail">

						<div class="form-group">
							<label for="idFoodImage">Food Image</label> <input type="file"
								id="idFoodImage" name="foodimage"
								value="<%=food.getFoodImage()%>" class="form-control-file">
						</div>

						<div class="form-group">
							<label for="idFoodPrice">Food Price</label> <input type="text"
								id="idFoodPrice" name="foodprice"
								value="<%=food.getFoodPrice()%>" class="form-control">
						</div>

						<input type="submit" value="Update Food"
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
					foodid : {
						required : true
					},
					foodname : {
						required : true
					},
					foodcat : {
						required : true
					},
					foodprice : {
						required : true
					},
				}
			})
		});
	</script>
</body>
</html>