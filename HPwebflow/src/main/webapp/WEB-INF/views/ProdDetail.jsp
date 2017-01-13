<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Detail Page</title>
<style>
.footer {
	height: auto;
	padding-bottom: 30px;
	position: relative;
	width: 100%;
	border-bottom: 1px solid #CCCCCC;
	border-top: 1px solid #DDDDDD;
}
.footer p {
	margin: 0;
}
.footer img {
	max-width: 100%;
}
.footer h3 {
	border-bottom: 1px solid #BAC1C8;
	color: #54697E;
	font-size: 18px;
	font-weight: 600;
	line-height: 27px;
	padding: 40px 0 10px;
	text-transform: uppercase;
}
.footer ul {
	font-size: 13px;
	list-style-type: none;
	margin-left: 0;
	padding-left: 0;
	margin-top: 15px;
	color: #7F8C8D;
}
.footer ul li a {
	padding: 0 0 5px 0;
	display: block;
}
.footer a {
	color: #78828D
}.footer-bottom p.pull-left {
	padding-top: 6px;
}
.payments {
	font-size: 1.5em;
}.social li {
	background: none repeat scroll 0 0 #B5B5B5;
	border: 2px solid #B5B5B5;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	-o-border-radius: 50%;
	-ms-border-radius: 50%;
	border-radius: 50%;
	float: left;
	height: 36px;
	line-height: 36px;
	margin: 0 8px 0 0;
	padding: 0;
	text-align: center;
	width: 36px;
	transition: all 0.5s ease 0s;
	-moz-transition: all 0.5s ease 0s;
	-webkit-transition: all 0.5s ease 0s;
	-ms-transition: all 0.5s ease 0s;
	-o-transition: all 0.5s ease 0s;
}
.social li:hover {
	transform: scale(1.15) rotate(360deg);
	-webkit-transform: scale(1.1) rotate(360deg);
	-moz-transform: scale(1.1) rotate(360deg);
	-ms-transform: scale(1.1) rotate(360deg);
	-o-transform: scale(1.1) rotate(360deg);
}
.social li a {
	color: #EDEFF1;
}
.social li:hover {
	border: 2px solid #2c3e50;
	background: #2c3e50;
}
.social li a i {
	font-size: 16px;
	margin: 0 0 0 5px;
	color: #EDEFF1 !important;
}
</style>
</head>
<body>

<body class="b1">
<div class="container text-center">
<nav1 class="navbar navbar-inverse navbar-fixed-top" style="bgd-color:orange;">
  <div class="container-fluid">
  <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/">Hunger's Point</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav">
       <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="Explore.html"><span class="glyphicon glyphicon-search"></span> Explore
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Explore">Indian</a></li>
          <li><a href="Explore">Chinese</a></li>
          <li><a href="Explore">Thai</a></li>
          <li><a href="Explore">Italian</a></li>
          <li><a href="Explore">Mexican</a></li>
          <li><a href="ExploreWines">Explore Exquisite Wine Collections</a></li>

        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class= "glyphicon glyphicon-glass"></span>  Bookings ?
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="BookTable">Book Table at a Restaurant</a></li>
          <li><a href="CheckBooking">Check Booking Status</a></li>
          <li><a href="CancelBooking">Cancel Booking</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class= "glyphicon glyphicon-question-sign"></span> How it Works?
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">How Ordering Works ?</a></li>
          <li><a href="#">How Payment Works ?</a></li>
          <li><a href="#">How Conscious Mode Works?</a></li>
          <li><a href="#">How Refund System Works ?</a></li>
          <li><a href="#">Others</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class = "glyphicon glyphicon-bullhorn"></span> Buggy Food ?
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Report Bug in Food</a></li>
          <li><a href="#">Report Damaged Container</a></li>
          <li><a href="#">Food Arrived Later</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class= "glyphicon glyphicon-pencil"></span> Mode
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Hurry</a></li>
          <li><a href="#">Deciding</a></li>
          <li><a href="#">Conscious</a></li>
        </ul>
      </li>
      <li><a href="track.html"><span class="glyphicon glyphicon-map-marker"></span> Track Order</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">   
    
      <li class="divider-vertical"></li>
       <c:if test="${pageContext.request.userPrincipal.name != null}">
      <c:if test="${pageContext.request.userPrincipal.name != 'abc@gmail.com'}">
      <li><a  href="<c:url value="/myCart" />"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a>${cartSize}</li>
      </c:if>
      <c:if test="${pageContext.request.userPrincipal.name  == 'abc@gmail.com'}">
       <li><a style="color:#F5F5DC" href="<c:url value="/adminWelcome" />">Admin</a></li>
       </c:if>
       <li><a style="color:#F5F5DC">Hello, ${pageContext.request.userPrincipal.name}</a></li>
       <li><a  style="color:#F5F5DC;margin:0px 0px 0px 0px" href="<c:url value="/logout" />"> <span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
       </c:if>
       <c:if test="${pageContext.request.userPrincipal.name  == null}">
       <li><a  style="color:#F5F5DC;margin:0px 0px 0px 0px" href="<c:url value="/login" />"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
       <li><a  style="color:#F5F5DC;margin:0px 0px 0px 0px" href="<c:url value="register" />"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
       </c:if>
 </ul>
    </div>
    </div>
	</nav1>
  	<br>
  	<br>
  	<br>
<img alt="image" src="<c:url value = "/resources/${product.pname}.jpg"/>">
<br>
Name: ${product.pname}
<br>
<br>
ID: ${product.pid}
<br>
<br>
Rating: ${product.rating}

<a href="<c:url value="/cart/add/${product.pid}" />"  type="button" class="btn btn-default btn-sm btn-block">
Add to Cart
</a>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<footer>
    <div class="footer" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> About Us </h3>
                    <ul>
                        <li> <a href="#"> Founder </a> </li>
                        <li> <a href="#"> CEO </a> </li>
                        <li> <a href="#"> Website </a> </li>
                        <li> <a href="#"> Legalisation </a> </li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Focus Cities </h3>
                    <ul>
                        <li> <a href="#"> Bengaluru </a> </li>
                        <li> <a href="#"> Mumbai </a> </li>
                        <li> <a href="#"> Delhi </a> </li>
                        <li> <a href="#"> Kolkata </a> </li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3>International </h3>
                    <ul>
                        <li> <a href="#"> Dubai </a> </li>
                        <li> <a href="#"> Sydney </a> </li>
                        <li> <a href="#"> New York </a> </li>
                        <li> <a href="#"> London </a> </li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Contact </h3>
                    <ul>
                        <li> <a href="#"> Visit </a> </li>
                        <li> <a href="#"> E-mail </a> </li>
                        <li> <a href="#"> Toll-Free Helpline </a> </li>
                        <li> <a href="#"> Postal </a> </li>
                    </ul>
                </div>
                <div class="col-lg-3  col-md-3 col-sm-6 col-xs-12 ">
                    <h3> Subscribe </h3>
                    <ul>
                        <li>
                            <div class="input-append newsletter-box text-center">
                                <input type="text" class="full text-center" placeholder="Email ">
                                <button class="btn  bg-gray" type="button"> Sign Up <i class="fa fa-long-arrow-right"> </i> </button>
                            </div>
                        </li>
                    </ul>
                    <ul class="social">
                        <li> <a href="#"> <i class=" fa fa-facebook">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-twitter">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-google-plus">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-pinterest">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-youtube">   </i> </a> </li>
                    </ul>
                </div>
            </div>
            <!--/.row-->
        </div>
        <!--/.container-->
    </div>
    <!--/.footer-->

    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left"> Copyright © HungersPoint 2016. All right reserved. </p>
            <div class="pull-right">
                <ul class="nav nav-pills payments">
                	<li><i class="fa fa-cc-visa"></i></li>
                    <li><i class="fa fa-cc-mastercard"></i></li>
                    <li><i class="fa fa-cc-amex"></i></li>
                    <li><i class="fa fa-cc-paypal"></i></li>
                </ul>
            </div>
        </div>
    </div>
    <!--/.footer-bottom-->
</footer>
</body>
</html>