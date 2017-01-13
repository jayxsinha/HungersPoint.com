<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- For Angular -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

<title>Insert title here</title>
<style>
body{
background-image: url(resources/images/bgk19.jpg);
background-size:     cover;                      
    background-repeat:   no-repeat;

}
</style>
</head>
<body>
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
<div style="color:#000000;margin:30px 0px 0px 70px">
    <a style="color:#000000;font-size:2.0em" href="onLoad"><span class="glyphicon glyphicon-home"></span></a>
   </div>
<h1 style="font-size:65px;margin:50px 0px 0px 120px">YOUR ORDER HAS BEEN RECEIVED</h1>
<h2 style="font-size:50px;margin:30px 0px 0px 120px">Thank you for your purchase!</h2>
</body>
</html>