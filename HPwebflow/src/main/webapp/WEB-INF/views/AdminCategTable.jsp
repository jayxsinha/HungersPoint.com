<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- For Angular -->
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<!-- Angular Table -->
<div ng-app="repeatSample" class="section">
<div class="container">
<br><br><a href="/HPbackend/logout">Logout</a>
<script>
var f = ${list};
angular.module('repeatSample',[]).controller('repeatController',function($scope)
		{
	$scope.list = f;
	$scope.sort = function(keyname){
		$scope.sortKey = keyname;
		$scope.reverse = !$scope.reverse;
	}
		});
</script>
<div class="bs-component" ng-controller="repeatController">
	<form class="form-inline">
		<div class="form-group">
			<label>Search Category</label> 
				<div class="input-group">
					<input type="text" ng-model="search" class="form-control" placeholder="Search">
						<span class="input-group-btn">
        				<button class="btn btn-secondary" type="button">Go!</button>
      					</span>
      			</div>
		</div>
	</form>			
	<br>
	<hr>

<table class="table table-striped table-hover">
	<thead>
	<tr>
	<th ng-click="sort('cid')">Categ Id 
	<span class="glyphicon sort-icon" ng-show="sortKey=='cid'"
			ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
	</th>
						
	<th ng-click="sort('cname')">Categ Name 
	<span class="glyphicon sort-icon" ng-show="sortKey=='cname'"
			ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
	</th>
						
	<th ng-click="sort('caddress')">Categ Desc 
	<span class="glyphicon sort-icon" ng-show="sortKey=='cdes'"
			ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
	</th>
						
	<th ng-click="sort('cphone')">Categ Products 
	<span class="glyphicon sort-icon" ng-show="sortKey=='nproducts'"
			ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
	</th>
	
	<th ng-click="sort('cphone')">Categ Popularity 
	<span class="glyphicon sort-icon" ng-show="sortKey=='popularity'"
			ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
	</th>
					
 	<th>EDIT 
 	<span class="glyphicon sort-icon"></span> 
	</th> 
						
	<th>DELETE 
	<span class="glyphicon sort-icon"></span>
	</th>
	</tr>
	</thead>
	<tbody>
						
	<tr ng-repeat="categ in list|orderBy:sortKey:reverse|filter:search">
		<td>{{categ.cid}}</td>
		<td>{{categ.cname}}</td>
		<td>{{categ.cdes}}</td>
		<td>{{categ.nproducts}}</td>
		<td>{{categ.popularity}}</td>
 		<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='adminCateg/edit/{{categ.cid}}'/>"><button type="button" class="btn btn-warning">Edit</button></a></td> 
		<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='adminCateg/remove/{{categ.cid}}'/>"><button type="button" class="btn btn-danger">Delete</button></a></td>
	</tr>														
	</tbody>
	</table>

</div>
</div>
</div>


</body>
</html>