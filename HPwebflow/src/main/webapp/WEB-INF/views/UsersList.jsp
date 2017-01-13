<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UsersList.jsp</title>

<!-- For JSTL and Spring form -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!-- For Angular -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
<!-- For BootStrap -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> 
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.js"/>"></script>

<!-- For Angular -->
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>

</head>
<body>
${msg}

<!-- Angular Table -->
<div ng-app="repeatSample" class="section">
<div class="container">

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
			<label>Search Users</label> 
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
	<th ng-click="sort('cid')">User Id 
	<span class="glyphicon sort-icon" ng-show="sortKey=='id'"
			ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
	</th>
						
	<th ng-click="sort('cname')">User First Name 
	<span class="glyphicon sort-icon" ng-show="sortKey=='fname'"
			ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
	</th>
						
	<th ng-click="sort('caddress')">User Address 
	<span class="glyphicon sort-icon" ng-show="sortKey=='address'"
			ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
	</th>
						
	<th ng-click="sort('cphone')">User Phone No 
	<span class="glyphicon sort-icon" ng-show="sortKey=='phone'"
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
						
	<tr ng-repeat="user in list|orderBy:sortKey:reverse|filter:search">
		<td>{{user.id}}</td>
		<td>{{user.fname}}</td>
		<td>{{user.address}}</td>
		<td>{{user.phone}}</td>
 		<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='user/edit/{{user.id}}' />"><button type="button" class="btn btn-warning">Edit</button></a></td> 
		<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='user/remove/{{user.id}}' />"><button type="button" class="btn btn-danger">Delete</button></a></td>
	</tr>
	</tbody>
	</table>

</div>
</div>
</div>
</body>
</html>