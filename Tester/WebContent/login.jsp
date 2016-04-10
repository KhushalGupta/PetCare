<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
String name=(String) request.getAttribute("name");
String names=(String) session.getAttribute("name");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login | PetCare</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
	<link rel="stylesheet" href="shop.css" type="text/css" >
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
        </script>
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
								<li><a href="checkout.html"><i class="fa fa-crosshairs"></i> Checkout</a></li>
								<li><a href="cart.html"><i class="fa fa-shopping-cart"></i> Cart</a></li>
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
	 <% String authentication = (String) session.getAttribute("authentication");            
            if (authentication == null) {
        %> 
	<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Login to your account</h2>
						<form name="Login_Form" action="Controller" method="Post">
                                      
                    Username    <input  type="text" maxlength="40" name="login_name"> &nbsp;&nbsp;
                    Password    <input type="password" maxlength="40" name="login_password">
                    <input type="submit" name="login_submit" value="Submit" onclick="return form_validation()">              
							<span>
								<input type="checkbox" class="checkbox"> 
								Keep me signed in
							</span>
						</form>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">OR</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>New User Signup!</h2>
						<form action="Controller" method="Post">
               
                    <center>
                        
                Username <input type="text" name="registration_username" > <br>
                Password <input type="password" name="registration_password"> <br> <br>                
                        
                        <input type="submit" name="registration_submit" value="Register">
                        <input type="reset" value="Reset">    <br> <br>
                        <a href="index.jsp"> back </a>
                        </center>
                        </form>
						
					</div><!--/sign up form-->
				</div>
				<% }
				if (authentication != null) { if(authentication.equals("Auth_Success"))
                { // out.println("authentication = " + authentication);
            %>
            <div id="user_info"> Welcome  <span style="color:green">   <i> </i>  </span> </div>
            <form name="logout" action="Controller" method="Post">
                <div class="logmeout"> <input type="submit" name="signout" value=" Logout "> </div>
            </form>            
            <%} else { %>
            <div id="wrong_user"> <span style="color:red"> Username/Password is wrong! </span> </div>
              <div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Login to your account</h2>
						<form name="Login_Form" action="Controller" method="Post">
                                      
                    Username    <input  type="text" maxlength="40" name="login_name"> &nbsp;&nbsp;
                    Password    <input type="password" maxlength="40" name="login_password">
                    <input type="submit" name="login_submit" value="Submit" onclick="return form_validation()">              
							<span>
								<input type="checkbox" class="checkbox"> 
								Keep me signed in
							</span>
						</form>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">OR</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>New User Signup!</h2>
						<form action="Controller" method="Post">
               
                    <center>
                        
                Username <input type="text" name="registration_username" > <br>
                Password <input type="password" name="registration_password"> <br> <br>                
                        
                        <input type="submit" name="registration_submit" value="Register">
                        <input type="reset" value="Reset">    <br> <br>
                        <a href="index.jsp"> back </a>
                        </center>
                        </form>
						
					</div><!--/sign up form-->
				</div>
                        <%}}%>
			</div>
		</div>
	</section><!--/form-->
	<footer id="footer"><!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					
						
		
		<div class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
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