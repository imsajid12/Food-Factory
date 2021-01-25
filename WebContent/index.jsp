<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
	<div class="content">
		<jsp:include page="Header.jsp"></jsp:include>

		<!-- SHOWCASE SLIDER -->
		<section id="showcase" style="margin-top: 0 !important">
		<div class="overlay">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item carousel-image-1 active">
						<div class="container">
							<div class="carousel-caption d-none d-sm-block text-right mb-5">
								<h1 class="display-3">Heading One</h1>
								<p class="lead">Lorem ipsum dolor sit amet consectetur
									adipisicing elit. Iste, aperiam vel ullam deleniti reiciendis
									ratione quod aliquid inventore vero perspiciatis.</p>
							</div>
						</div>
					</div>

					<div class="carousel-item carousel-image-2">
						<div class="container">
							<div class="carousel-caption d-none d-sm-block mb-5">
								<h1 class="display-3">Heading Two</h1>
								<p class="lead">Lorem ipsum dolor sit amet consectetur
									adipisicing elit. Iste, aperiam vel ullam deleniti reiciendis
									ratione quod aliquid inventore vero perspiciatis.</p>
							</div>
						</div>
					</div>

					<div class="carousel-item carousel-image-3">
						<div class="container">
							<div class="carousel-caption d-none d-sm-block text-right mb-5">
								<h1 class="display-3">Heading Three</h1>
								<p class="lead">Lorem ipsum dolor sit amet consectetur
									adipisicing elit. Iste, aperiam vel ullam deleniti reiciendis
									ratione quod aliquid inventore vero perspiciatis.</p>
							</div>
						</div>
					</div>
				</div>

				<a href="#myCarousel" data-slide="prev"
					class="carousel-control-prev"> <span
					class="carousel-control-prev-icon"></span>
				</a> <a href="#myCarousel" data-slide="next"
					class="carousel-control-next"> <span
					class="carousel-control-next-icon"></span>
				</a>
			</div>
		</div>
		</section>

		<!-- Welcome to our website -->
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<h1 class="display-3">About Us</h1>
					<p class="lead text-left">Hello, We are Food Factory, A firm
						that deliver meals at your doorstep in minimal time without
						compromisng quality at affordable cost cooked by world famous
						chefs.</p>
					<p class="lead text-left">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
						labore et dolore magna aliqua. Ut enim ad minim veniam, quis
						nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
						consequat</p>
				</div>
			</div>
		</div>

		<!-- PHOTO GALLERY -->
		<section id="gallery" class="py-3">
		<div class="container">
			<h1 class="text-center">Photo Gallery</h1>
			<p class="text-center">Check our dishes</p>
			<div class="row mb-4">
				<div class="col-md-4">
					<a href="images/roti.jpeg" data-toggle="lightbox"
						data-gallery="img-gallery" data-height="560" data-width="560">
						<img src="images/roti.jpeg" class="img-fluid">
					</a>
				</div>

				<div class="col-md-4">
					<a href="images/pizza.jpeg" data-toggle="lightbox"
						data-gallery="img-gallery" data-height="560" data-width="560">
						<img src="images/pizza.jpeg" class="img-fluid">
					</a>
				</div>

				<div class="col-md-4">
					<a href="images/roll.jpeg" data-toggle="lightbox"
						data-gallery="img-gallery" data-height="560" data-width="560">
						<img src="images/roll.jpeg" class="img-fluid">
					</a>
				</div>
			</div>

			<div class="row mb-4">
				<div class="col-md-4">
					<a href="images/burger.jpeg" data-toggle="lightbox"
						data-gallery="img-gallery" data-height="560" data-width="560">
						<img src="images/burger.jpeg" class="img-fluid">
					</a>
				</div>

				<div class="col-md-4">
					<a href="images/bbq.jpeg" data-toggle="lightbox"
						data-gallery="img-gallery" data-height="560" data-width="560">
						<img src="images/bbq.jpeg" class="img-fluid">
					</a>
				</div>

				<div class="col-md-4">
					<a href="images/sandwich.jpeg" data-toggle="lightbox"
						data-gallery="img-gallery" data-height="560" data-width="560">
						<img src="images/sandwich.jpeg" class="img-fluid">
					</a>
				</div>
			</div>
		</div>
		</section>
	</div>

	<jsp:include page="Footer.jsp"></jsp:include>


	<script src="http://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
		integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js"></script>

	<script>
		//Lightbox Init
		$(document).on('click', '[data-toggle="lightbox"]', function(event) {
			event.preventDefault();
			$(this).ekkoLightbox();
		});
	</script>
</body>
</html>