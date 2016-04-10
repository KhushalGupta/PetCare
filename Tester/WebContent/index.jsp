<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String name=(String) request.getAttribute("name");
String names=(String) session.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
       <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | PetCare</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link rel="stylesheet" href="shop.css" type="text/css" >
	<link href="css/responsive.css" rel="stylesheet">
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    <link rel="stylesheet" type="text/css" href="css/default.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="js/modernizr.custom.js"></script>
    
    <link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="themes/1/js-image-slider.js" type="text/javascript"></script>
    <link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <script type="text/javascript">
            function form_validation(){
            var name=document.Login_Form.login_name.value;
            var password=document.Login_Form.login_password.value;
            var flag = true;             
            if(name==""){
                document.getElementById("invalid_login").style.color="red";
                document.getElementById('invalid_login').innerHTML="UserName is mandatory!";
                flag = false;
            }             
            if(password==""){
                document.getElementById("invalid_login").style.color="red";
                document.getElementById('invalid_login').innerHTML="Password is mandatory!";
                flag = false;
            }    
            return flag;
            }
        </script><header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> +918233138252</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i> info@domain.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
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
								<li><a href="error.jsp"><i class="fa fa-crosshairs"></i> Checkout</a></li>
								<li><a href="error.jsp"><i class="fa fa-shopping-cart"></i> Cart</a></li>
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
								<li><a href="index.jsp" class="active">Home</a></li>
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
				</div></div>
			</div>
		</div><!--/header-bottom-->
		<header class="clearfix">
				<nav>
					<a href="http://tympanus.net/Blueprints/ElasticContentSlider/" class="icon-arrow-left" data-info="previous Blueprint"></a>
					<a href="http://tympanus.net/codrops/?p=13665" class="icon-drop" data-info="back to the Codrops article"></a>
				</nav>
			</header>
		
    <div id="sliderFrame">
        <div id="slider">
            <a href="http://www.menucool.com/javascript-image-slider" target="_blank">
                <img src="images/shop.jpg" alt="" />
            </a>
            
            <img src="images/tarvin_pet_care_services_feature.jpg" alt="" />
            <img src="images/PetHealthBanner.jpg" alt="" />
            <img src="images/produits-petcare.jpg" alt="" />
            <img src="images/pet_products.jpg" />
        </div>
        
    </div>
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
						<br><br><br>
							<h2>Service</h2>
							<ul class="nav nav-pills nav-stacked">
								
								<li><a href="Contact.jsp">Contact Us</a></li>
								<li><a href="Shipping.jsp">Shipping,Delivery</a></li>
								<li><a href="Cancellation.jsp">Order Cancellation</a></li>
								<li><a href="replacement.jsp">Replacement</a></li>
								
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
						<br><br><br>
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
						<br><br><br>
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
		<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script src="js/jquery.cbpFWSlider.min.js"></script>
		<script>
			$( function() {
				/*
				- how to call the plugin:
				$( selector ).cbpFWSlider( [options] );
				- options:
				{
					// default transition speed (ms)
					speed : 500,
					// default transition easing
					easing : 'ease'
				}
				- destroy:
				$( selector ).cbpFWSlider( 'destroy' );
				*/

				$( '#cbp-fwslider' ).cbpFWSlider();

			} );
		</script>
    </body>
</html>

   </body>
</html>
