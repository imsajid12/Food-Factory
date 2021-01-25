<%@page import="java.util.ArrayList"%>
<%@page import="com.food.pojo.Cart"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Factory | Cart</title>
</head>
<body>
	<div class="content">
		<jsp:include page="Header.jsp"></jsp:include>

		<%
			List<Cart> cartList = (List<Cart>) session.getAttribute("cartlist");
			if (!cartList.isEmpty()) {
		%>

		<div class="container">
			<div class="row">
				<form action="OrderServlet" method="POST">
					<input type="hidden" name="action" value="placeorder">
					<%
						String status = (String)request.getAttribute("status");
						if (status != null)
						out.print("<p class='lead text-danger text-center'>" + status + "</p>");
					%>
					<table class="table">
						<thead class="thead-dark">
							<tr>
								<th>Cart Id</th>
								<th>Food Id</th>
								<th>Food Name</th>
								<th>Quantity</th>
								<th>Food Category</th>
								<th>Customer Email</th>
								<th>Food Price</th>
								<th>Action</th>
							</tr>
						</thead>

						<%
							for (Cart cart : cartList) {
						%>
						<tbody>
							<tr>
								<th scope="row"><%=cart.getCartId()%></th>
								<td><%=cart.getFoodId()%></td>
								<td><%=cart.getFoodName()%></td>
								<td><input type="number" name="foodQuantity"
									class="foodquantity" value="<%=cart.getQuantity()%>"></td>
								<td><%=cart.getFoodCategory()%></td>
								<td><%=cart.getCustomerEmail()%></td>
								<td><input type="text" name="foodPrice" class="foodprice"
									value="<%=cart.getFoodPrice()%>" readonly></td>
								<td><a
									href="CartServlet?action=delete&id=<%=cart.getCartId()%>"
									class="btn btn-danger">Delete</a></td>
							</tr>
							<%
								}
							%>
						</tbody>
					</table>
					<h3>Total Amount<small> (In RS)</small>: <span id="tBill"></span></h3>
					
					<input type="submit" value="Place Order"
						class="btn btn-lg green-bg">
					<%
						} else if (cartList.isEmpty()) {
					%>
					<p class="lead text-center text-danger">No items added yet....</p>
					<%
						}
					%>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="Footer.jsp"></jsp:include>

	<script src="jquery-3.5.0.min.js"></script>
	<script src="jquery.validate.min.js"></script>
	<script>
		function totalBill() {
			var foodQuantity = $(".foodquantity");
			var foodPrice = $(".foodprice");

			var tbill = 0;

			for (var i = 0; i < foodQuantity.length; i++) {
				tbill = tbill + (foodQuantity[i].value * foodPrice[i].value);
			}
			$("#tBill").text(tbill);
		}

		$(function() {
			$(".foodquantity").click(function() {
				var fq = $(".foodquantity");

				for (var i = 0; i < fq.length; i++) {
					if (fq[i].value <= 0) {
						$(".foodquantity").val(1);
					} else {
						totalBill();
					}
				}
			})
			totalBill();
		});
	</script>
	<!-- <script>
$("#foodquantity").change(function(){
	//alert("Hi");
	let foodQuantity = document.getElementById("foodquantity").value;
	const foodPrice = document.getElementById("foodprice").value;
	
	let pricePerPiece = foodPrice;
	
	console.log("foodQuantity : " + foodQuantity);
	console.log("foodPrice : " + foodPrice);
	
	console.log("pricePerPiece : " + pricePerPiece);
	
	if(foodQuantity > 0 || foodQuantity !== "") {
		document.getElementById("foodprice").value = foodQuantity*foodPrice;
	}
	else {
		alert("Hi");
	}
	
});
</script> -->

</body>
</html>