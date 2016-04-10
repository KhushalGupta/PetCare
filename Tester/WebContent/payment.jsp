

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Checkout | E-Shopper</title>
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
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href=""><i class="fa fa-phone"></i> +918233138252</a></li>
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
								<li><a href="payment.jsp" class="active"><i class="fa fa-crosshairs"></i> Checkout</a></li>
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
								<li><a href="index.html">Home</a></li>
								<li><a href="Contact.jsp">Contact</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
		<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li class="active">Check out</li>
				</ol>
			</div><!--/breadcrums-->
				</div>
		<div class="shopper-informations">
				<div class="row">
					<div class="col-sm-4">
						<div class="shopper-info" style="float:right">
							<h2>Shopper Information</h2><br>
            <% String Confirmation = (String) session.getAttribute("Order_Confirmation");
                if (Confirmation == null) {
            %>

            <form action="Controller" method="Post">                   
                <!--div class="logmeout"> <input type="submit" name="signout" value=" Logout "> </div-->
               <h4> Card Type</h4> <select name="card_type">
                    <option> American Express </option>   
                    <option> Citi Bank </option>   
                    <option> SBI </option>   
                    <option> Bank of America </option>   
                </select> <br /> <br />                                         
                <h4>Card Number</h4> <input type="text" value="" maxlength="16" name="card_number" /> <br /> <br />
                <h4>Name on Card</h4> <input type="text" value="" maxlength="20" name="card_name" /> <br /> <br />
                <h4>Expiration Date</h4> <select name="expiration_month">
                    <option> 1 </option> <option> 2 </option> <option> 3 </option> <option> 4 </option>   
                    <option> 5 </option> <option> 6 </option> <option> 7 </option> <option> 8 </option>   
                    <option> 9 </option> <option> 10 </option> <option> 11 </option> <option> 12 </option>   
                </select>                      
                <select name="expiration_year">
                    <option> 2013 </option>   
                    <option> 2014 </option>   
                    <option> 2015 </option>   
                    <option> 2016 </option>   
                </select> <br />  <br /> <br />
                </div>
                </div>
               <div class="col-sm-5 clearfix">
						<div class="bill-to" style="float:right">
                <h2> Billing Information </h2> <br /> <br /> 
                <h5>Full Name</h5> <input type="text" value="" name="fullname" /> <br /> <br />
                <h5>Address</h5> <input type="text" value="" name="address" /> <br /> <br />
                <h5>Country</h5> <input type="text" value="" name="country" /> <br /> <br />
                <h5>Zip</h5> <input type="text" value="" name="zipcode" /> <br /> <br />
                <input type="submit" name="place_order" />              


                <% }  // ending billing n payment info %>
                </div>
                </div>
                </div>
                </div>
                <%
                    if (Confirmation != null) {
                %>

                <!--div class="logmeout"> <input type="submit" name="signout" value=" Logout "> </div-->
                 <center>
                <h4>Order Has been submitted!! &nbsp;&nbsp;&nbsp;&nbsp;Look out for your product!!!  <br /> <br /> <br /> 
                    Thank you for ordering at E - Shopper</h4>  <br /> <br />
                <div id="link">    <h2> <a href="index.jsp"> Shop Again! </a> </h2> </div>
                </center>
                <% }%>
            </form>         
        </section>
        <form name="logout" action="Controller" method="Post">
			<div class="logmeout" style="position:absolute; top:62px; left:1190px; float:right; text-align:right">
				<input type="submit" name="signout" value=" Logout ">
			</div>
		</form>
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
								<li><a href="">Online Help</a></li>
								<li><a href="">Contact Us</a></li>
								<li><a href="">Order Status</a></li>
								<li><a href="">Change Location</a></li>
								<li><a href="">FAQâs</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Quock Shop</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Food</a></li>
								<li><a href="">Accessories</a></li>
								<li><a href="">Collars,Leashes</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>About Shopper</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Company Information</a></li>
								<li><a href="">Careers</a></li>
								<li><a href="">Store Location</a></li>
								<li><a href="">Affillate Program</a></li>
								<li><a href="">Copyright</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright Â© 2015 Khushal. All rights reserved.</p>
				</div>
			</div>
		</div>
	</footer><!--/Footer-->
    </body>
</html>
