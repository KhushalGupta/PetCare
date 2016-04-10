<%@page import="com.util.CartDetails"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.util.ProductDetails"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.util.Query"%>
<%
	response.setHeader("Cache-Control", "no-store"); //when you hit back, it displays "Confirm page Submission"
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
<!--%! String ifnull(String s){          You could use this, if the String ever goes null
    return (s==null)?\"\":s;
}
%-->

<%@ page errorPage="error.jsp"%>
<%!ProductDetails pro = new ProductDetails(); //instantiating ProductDetails class and calling the getter mthods.
	CartDetails mycart = new CartDetails();
	ProductDetails sessionbean = new ProductDetails(); //need to remove 
	String name = null;
	//name = (String) request.getAttribute("name");  // very much needed line. use setters and getters instead of this.
	ArrayList<String> productname = new ArrayList<String>();
	ArrayList<String> productdescription = new ArrayList<String>();
	ArrayList<String> brandname = new ArrayList<String>();
	ArrayList<String> productprice = new ArrayList<String>();
	 ArrayList<String> productimage = new ArrayList<String>();
	Query queryObject = new Query();

	//ProductDetails productdetailsObject = queryObject.getProductDetails();   need to comment it if you need to get the object from..

	//getAttribute and setAttribute always works%>
<%
	productname = (ArrayList) session.getAttribute("productname");
	productdescription = (ArrayList) session.getAttribute("productdescription");
	brandname = (ArrayList) session.getAttribute("brandname");
	productprice = (ArrayList) session.getAttribute("productprice");
	productimage = (ArrayList) session.getAttribute("productimage");
	System.out.println("Product DESCRIPTION SET IN USER CART.JSP");
	sessionbean.setProduct_description(productdescription);
	//    out.println("productdetailsObject values name = " + productdetailsObject.getProduct_name());  
	//    out.println("productdetailsObject values name = " + productdetailsObject.getProduct_description());
	//    out.println("productdetailsObject values name = " + productdetailsObject.getProduct_price());
	//    out.println("productdetailsObject values name = " + productdetailsObject.getProduct_brand());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">
</head>
<body>
	<header id="header"><!--header-->
	<div class="header_top">
		<!--header_top-->
		<div class="container">
			<div class="row">
				<div class="col-sm-6 ">
					<div class="contactinfo">
						<ul class="nav nav-pills">
							<li><a href=""><i class="fa fa-phone"></i> +918233138252
									</a></li>
							<li><a href=""><i class="fa fa-envelope"></i>
									info@domain.com</a></li>
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
	</div>
	<!--/header_top-->
	<div class="header-middle">
		<!--header-middle-->
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
							<li><a href="loaded_cart.jsp"><i class="fa fa-shopping-cart"></i>
									Cart</a></li>
							<li><a href="login.jsp"><i class="fa fa-lock"></i>
									Login</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header-middle-->
	<div class="header-bottom">
		<!--header-bottom-->
		<div class="container">
			<div class="row">
				<div class="col-sm-9">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
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
						<input type="text" placeholder="Search" />
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
                    <% if (session.getAttribute("total_cart_items") != null) {%>
                    <span id="total_cart_items"><h4 style="text-align:center">Total items in cart = <%= session.getAttribute("total_cart_items")%></h4></span>
                    <% }%>

                    <% if (productname != null) {%> <form name="cart_details" method="Post" action="Controller">                         
                        <span id="add_to_cart" style="position:absolute; margin:1px; float:right; top:30px; left:700px"> <input type="submit" value="Add to Cart" name="cartdetails"> </span>
                        <span id="Finish_n_checkout"style="position:absolute; margin:1px; float:right; top:30px; left:800px"> <input type="submit" value="finish n checkout" name="checkout_cart"> </span>    
                            <%        for (int i = 1; i <= productname.size(); i++) {
                            %> 

                              <div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">           
                             <%= i%> . 
                                      <%=productimage.get(i - 1) %>
                                        <h4><%= productname.get(i - 1)%></h4> 
                                 <h5>by <%= brandname.get(i - 1)%></h5>   
                                 <h6><%= productdescription.get(i - 1)%></h6>  
                                 <h5>Price: $<%= productprice.get(i - 1)%></h5> <br>                                 
                             Qty <input type="text" name="quantity" value="" size="1"> 
                            </div>
                            </div>
                            </div>
                            </div>
                           
                       

	<%
		}
	%>
	<%
		session.setAttribute("product_name", productname);
		}
	%>
</form>
</div>
</div>
</div>
</div>
</section>
</body>
</html>