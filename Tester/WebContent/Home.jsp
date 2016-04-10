<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="shop.css">
        <title>JSP Page</title>
</head>
<body>
<% String authentication = (String) session.getAttribute("authentication");
            if (authentication == null) {
        %>
        <!--jsp:useBean id="name" scope="session" class="com.util.Controller"--><!--/jsp:useBean-->        
        <div id="login_in">
            <form name="Home_Page" action="Controller" method="Post">
                <div align="right">                       
                    Username    <input  type="text" maxlength="40" name="login_name"> &nbsp;&nbsp;
                    Password    <input type="password" maxlength="40" name="login_password">             
                    <input type="submit" name="login_submit" value="Submit" onclick="check();">             
                    <a href="registration.jsp"> Register </a>
                </div>                    
            </form>
            <% }
                if (authentication != null) {
                    if (authentication.equals("Auth_Success")) {
            %>
            <div id="user_info"> Swagatam  <%= (session.getAttribute("name"))%> <span style="color:green">   <i> <!--%= name %-->! </i>  </span> </div>
            <form name="logout" action="Controller" method="Post">
                <div class="logmeout"> <input type="submit" name="signout" value=" Logout "> </div>
            </form>         
            <%} else {%>
            <div id="wrong_user"> <span style="color:red"> Username/Password is wrong! </span> </div>
            <form name="Home_Page" action="Controller" method="Post">
                <div id="login_in" align="right">                       
                    Username    <input  type="text" maxlength="40" name="login_name"> &nbsp;&nbsp;
                    Password    <input type="password" maxlength="40" name="login_password">             
                    <input type="submit" name="login_submit" value="Submit" onclick="check();">             
                    <a href="registration.jsp"> Register </a>
                </div>                    
            </form>

            <%}
                }%>

        </div>  
        <div id="big_wrapper">            
            <header id="top_header">  E-Shopper </header>
            <nav id="links"> 
                <ul>
                    <li> <a href="Home.jsp"> Home </a> </li>
                    <li> <a href="Shop.jsp">Shop </a> </li>
                    <li> <a href="Contact.jsp">Contact Me </a> </li>
                </ul>
            </nav>
            <section id="main_content">
                <article id="main_article">
                    <form name="cart" action="Controller" method="Post">
                        <select name="Item">
                            <option value="books"> Food </option>
                            <option value="electronic">Accessories </option>
                            <option value="icecream"> Collars,Leashes </option>
                        </select>
                        <input type="submit" value="product" name="product">
                    </form>
</article>
                <article id="main_article">
                <img src="Images/image_4.png" width="100" height="100" alt="Loading..">
                    Use your coupon code here. This would reduce your cost. :)
                    Thank you for shopping at E-Shopper. Hope to see you again.!
                </article>            
            </section>

            <aside id="updates"> The latest products and services that we offer are updated here. 
                We offer a whole range of kitchen items now. </aside>
            <footer id="the_footer"> Copyright @CodeWriters. All rights Reserved  </footer>
        </div>
    </body>
</html>

