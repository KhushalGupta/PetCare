
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.util.*" %>
<%@ page errorPage="error.jsp"%>
<% ArrayList itemname = new ArrayList();%>
<% ArrayList quantityno = new ArrayList();%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Cart | PetCare</title>
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
								<li><a href="loaded_cart.jsp" class="active"><i class="fa fa-shopping-cart"></i> Cart</a></li>
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
								<li class="dropdown"><a href="#">Shop<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                         <li>Food</li>
										<li>Accessories</li> 
										<li>Collars,Leashes</li>
                                    </ul>
                                </li> 
                                <li><a href="Contact.jsp">Contact</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
        <div id="big_wrapper">
            <center>

                <% itemname = (ArrayList) session.getAttribute("product_in_cart");
                    quantityno = (ArrayList) session.getAttribute("quantity_in_cart");%>
                <jsp:useBean id="product_in_cart" class="java.util.ArrayList" scope="session" ></jsp:useBean>
                <% //out.println("Product in cart = " + product_in_cart ); used a JSTL
                        if (itemname != null) {%>
                <br />        
                <h1> Items in your cart </h1> <br /> 
            </center>
            <div id="payment">
                <form action="Controller" method="Post">
                    <input type="submit" name="payment" value=" Payment " style="position:relative; top:10px; left:-50px; float:right" />
                </form>
            </div>
               <section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li class="active">Shopping Cart</li>
				</ol>
			</div>
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Item</td>
							<td class="quantity">Quantity</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
					<% for (int i = 1; i <= itemname.size(); i++) {%>
						<tr>
							<td class="cart_product">
						  <%= itemname.get(i - 1)%> 
							</td>
							<td class="cart_quantity">
						  <%= quantityno.get(i - 1)%>
							</td>
						</tr>
						 <%}%>
					</tbody>
				</table>
			</div>
		</div>
		<a href="shop2.jsp"><h4 style="text-align:center; top:50px">Want To Add More ?</h4></a>
	</section> <!--/#cart_items-->
                <%}%>   
                <%  if (itemname == null) {%>
                <h1> There are no items in your cart now.. Please add items to your cart first!! </h1>
                <%}%>
        </div>
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
    </body>

</html>
