<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Shop | PetCare</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6 ">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href=""><i class="fa fa-phone"></i> +8233138252</a></li>
								<li><a href=""><i class="fa fa-envelope"></i> info@domain.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href=""><i class="fa fa-facebook"></i></a></li>
								<li><a href=""><i class="fa fa-twitter"></i></a></li>
								<li><a href=""><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index.jsp"><img src="images/home/logo.png" height="60" width="150" alt="" /></a>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="error1.jsp"><i class="fa fa-crosshairs"></i> Checkout</a></li>
								<li><a href="loaded_cart.jsp"><i class="fa fa-shopping-cart"></i> Cart</a></li>
								<li><a href="login.jsp"><i class="fa fa-lock"></i> Login</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="index.jsp">Home</a></li>
								<li><a href="Contact.jsp">Contact</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search"/>
						</div>
					</div>
				</div>
				</div>
			</div>
	</header>
	<%
		String authentication = (String) session
				.getAttribute("authentication");
		if (authentication == null) {
	%>
	<!--jsp:useBean id="name" scope="session" class="com.util.Controller"-->
	<!--/jsp:useBean-->
	<div id="login_in">
		<form name="Home_Page" action="Controller" method="Post">
			<div align="right">
				Username <input type="text" maxlength="40" name="login_name">
				&nbsp;&nbsp; Password <input type="password" maxlength="40"
					name="login_password"> <input type="submit"
					name="login_submit" value="Submit" onclick="check();"> <a
					href="registration.jsp"> Register </a>
			</div>
		</form>
		<%
			}
			if (authentication != null) {
				if (authentication.equals("Auth_Success")) {
		%>
		<div id="user_info">
			Welcome
			<%=(session.getAttribute("name"))%>
			<span style="color: green"> <i> <!--%= name %-->!
			</i>
			</span>
		</div>
		<form name="logout" action="Controller" method="Post">
			<div class="logmeout" style="position:absolute; top:62px; left:1190px; float:right; text-align:right">
				<input type="submit" name="signout" value=" Logout ">
			</div>
		</form>
		<%
			} else {
		%>
		<div id="wrong_user">
			<span style="color: red"> Username/Password is wrong! </span>
		</div>
		<form name="Home_Page" action="Controller" method="Post">
			<div id="login_in" align="right">
				Username <input type="text" maxlength="40" name="login_name">
				&nbsp;&nbsp; Password <input type="password" maxlength="40"
					name="login_password"> <input type="submit"
					name="login_submit" value="Submit" onclick="check();"> <a
					href="registration.jsp"> Register </a>
			</div>
		</form>

		<%
			}
			}
		%>

	</div>
	
	<section id="advertisement">
		<div class="container">
			<img src="images/shop/advertisement.jpg" alt="" />
		</div>
	</section>
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Category</h2>
                                   <form name="cart" action="Controller" method="Post">
                        <select name="Item">
                            <option value="books"> Food </option>
                            <option value="electronic"> Accessories </option>
                            <option value="icecream"> Collars,Leashes </option>
                        </select>
                  <br><br>
								<input type="submit" value="product" name="product">
								</form>
					</div>
				</div>
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Features Items</h2>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/61uSQUzXK5L._SL1000_.jpg" alt="" />
										<h2>$5</h2>
										<p>Royal Canin Labrador Junior, 3 kg</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/813d8G5k+nL._SL1500_.jpg" alt="" height="247" width="300"/>
										<h2>$10</h2>
										<p>Whiskas Whish Multipouch, 400 gn</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
								</div>
								
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/41SfYMjbsOL._SY450_.jpg" alt="" height="247" width="300"/>
										<h2>$8</h2>
										<p>Drools Adult Cat Food Ocean Fish, 3 kg (Free 15% Extra Inside)</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									
								</div>
								
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/81Av9-axpWL._SL1500_.jpg" alt="" />
										<h2>$5</h2>
										<p>Choostix Dog Rope Chain Synthetic Yarn, Medium (Color May Vary)</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
										</div>
								
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/317QX83GETL.jpg" alt="" height="247" width="300" />
										<h2>$8</h2>
										<p>All4Pets Plastic Muzzle 1 No</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									
									<img src="images/home/sale.png" class="new" alt="" />
								</div>
								
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/41HDBiSvMrL.jpg" alt="" height="247" width="300" />
										<h2>$6</h2>
										<p>The Minnie Mouse Dog Bow Tie - M</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									
								</div>
								
							</div>
						</div>
						
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/61YfoqeuMdL._SL1000_.jpg" alt=""  />
										<h2>$5</h2>
										<p>Petslike Denim Jacket (PL10002), pet apparel, neck to tail 34 cms,, chest 37 cms
</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									
								</div>
								
							</div>
						</div>
						
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/51b20yvf7+L.jpg" alt="" height="247" width="300"/>
										<h2>$2</h2>
										<p>Twistix Small Dental Chews for Pets with Vanilla Mint Flavor, 156 g</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									
								</div>
								
							</div>
						</div>
						
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/shop/$_35.JPG" alt="" />
										<h2>$7</h2>
										<p>Petsplanet High Quality Fabric Dog House Hut Shape For Medium Size Dogs Red
</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									
								</div>
								
							</div>
						</div>
					</div><!--features_items-->
				</div>
			</div>
		</div>
	</section>
	
	<footer id="footer"><!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
				</div>
			</div>
		</div>
		
		<div class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Service</h2>
							<ul class="nav nav-pills nav-stacked">
								
								<li><a href="Contact.jsp">Contact Us</a></li>
								<li><a href="Shipping.jsp">Shipping & Delivery</a></li>
								<li><a href="Cancellation.jsp">Order Cancellation</a></li>
								<li><a href="replacement.jsp">Replacement</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Quick Links</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="http://www.dogspot.in/13-bollywood-celebrities-and-their-dogs/">Celebrities and their Dogs</a></li>
								<li><a href="http://www.dogspot.in/16-things-your-dog-wishes-for-always-some-points-might-bring-tears-in-your-eyes/">Dog Wishes</a></li>
								<li><a href="http://pets.webmd.com/ask-pet-health-11/vets-pet-care">Vet Care</a></li>
								<li><a href="http://www.humanesociety.org/animals/dogs/tips/?referrer=https://www.google.co.in/">How to care dogs</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>About PetCare</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="aboutus.jsp">Company Information</a></li>
				</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright @CodeWriters. All rights reserved.</p>
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
	

  
    <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>