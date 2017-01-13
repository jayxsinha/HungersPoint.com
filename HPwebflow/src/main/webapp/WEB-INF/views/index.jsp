<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!-- Latest compiled JavaScript -->
<!-- For Angular -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<html>
<style>
.full {
    width: 100%;
}
.gap {
	height: 30px;
	width: 100%;
	clear: both;
	display: block;
}
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
}
.supportLi h4 {
	font-size: 20px;
	font-weight: lighter;
	line-height: normal;
	margin-bottom: 0 !important;
	padding-bottom: 0;
}
.newsletter-box input#appendedInputButton {
	display: inline-block;
	float: left;
	height: 30px;
	clear: both;
	width: 100%;
}
.newsletter-box .btn {
	border: medium none;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-o-border-radius: 3px;
	-ms-border-radius: 3px;
	border-radius: 3px;
	display: inline-block;
	height: 40px;
	padding: 0;
	width: 100%;
	color: #fff;
}
.newsletter-box {
	overflow: hidden;
}
.bg-gray {
	background-image: -moz-linear-gradient(center bottom, #BBBBBB 0%, #F0F0F0 100%);
	box-shadow: 0 1px 0 #B4B3B3;
}
.social li {
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
.footer-bottom {
	border-top: 1px solid #DDDDDD;
	padding-top: 10px;
	padding-bottom: 10px;
}
.footer-bottom p.pull-left {
	padding-top: 6px;
}
.payments {
	font-size: 1.5em;
}
.person
  {
    border: 10px solid transparent;
    margin-bottom: 25px;
    width:40%;
    height: 20%;
    opacity: 0.75;
  }
  .person:hover{
    border-color: #f1f1f1;
  }
    .container1 {
    padding: 80px 120px;
  }
.b1 {
	background-image: url("resources/kitchen.jpg");
	background-color: black;
}
.b2 {
  background-image: none;
  background-color: black;
}
 div.container
 {
 width:80%;}
header, footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}
nav {
    float: left;
    max-width: 160px;
    margin: 0;
    padding: 1em;
}

nav ul a {
    text-decoration: none;
}

article {
    margin-left: 170px;
    border-left: 1px solid gray;
    padding: 1em;
    overflow: hidden;
}
.bg-1 {
      background-color: black;
      color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}

  /*Removes rounded borders from the list*/
.list-group-item:first-child{
  border-top-left-radius:0;
  border-top-right-radius: 0;
}
.list-group-item:last-child
{
  border-bottom-left-radius:0;
  border-bottom-right-radius: 0;
}

/* Removes border from the thumbnails*/
.thumbnail{
  padding: 0 0 15px 0;
  border: none;
  border-radius: 0;
}

/*Modify thumbnails Paragraph*/
.thumbnail p{
  margin-top: 15px;
  color: #555;
}

/* Black buttons with extra padding and without rounded borders */
.btn {
    padding: 10px 20px;
    background-color: #333;
    color: #f1f1f1;
    border-radius: 0;
    transition: .2s;
}

/* On hover, the color of .btn will transition to white with black text */
.btn:hover, .btn:focus {
    border: 1px solid #333;
    background-color: #fff;
    color: #000;
}
.modal-header, h4, .close {
  font-family: verdana;
    background-color: #333;
    color: #fff !important;
    text-align: center;
    font-size: 30px;
}

.modal-header, .modal-body {
    padding: 40px 50px;
}
</style>
<head>
<title>Feeling "Hungry" ?</title>
</head>

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

	<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
      <li data-target="#myCarousel" data-slide-to="6"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
    <div class="item active">
        <img src="resources/SouthIndianCuisine.jpg" alt="Indian Dishes">
        <div class="carousel-caption">
        <h3>North and South Indian</h3>
        <p>Try our Authentic Indian Dishes!</p>
        </div>
      </div>
      <div class="item">
        <img src="resources/Burger.jpg" alt="Burger">
        <div class="carousel-caption">
        <h3>Dive into the taste of America!</h3>
        <p>Try our All New American Cheese Burger</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/ChineseNoodles.jpg" alt="Noodles">
        <div class="carousel-caption">
		<h3>Hakka Noodles</h3>
		<p>You have always been a Noodle Fan, try our other Chinese Delicacies!</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/Pizza.jpg" alt="Pizza">
        <div class="carousel-caption">
        <h3>Try out our Italian menu!</h3>
        <p>A pizza a day makes all problems go away!</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/Thai.jpg" alt="Thai">
        <div class="carousel-caption">
        <h3>Thai Pad Dishes</h3>
        <p>Ever been to Thailand?</p>
        </div>
      </div>
      <div class="item">
        <img src="resources/GrilledBeef.jpg" alt="MainCourse">
        <div class="carousel-caption">
        <h3>Grilled Beaf!</h3>
        <p>Try out our exclusive Main Course Dishes (Only Avaialable at the resteraunt)</p>
        </div>
      </div>
      <div class="item">
        <img src="resources/MexicanTacos.jpg" alt="Tacos">
        <div class="carousel-caption">
		<h3>Mexican Tacos</h3>
		<p>Try our Mexican Tacos</p>
        </div>
      </div>

    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<!-- Rows for Circled Images -->
<!--Rows-->
<div class="container text-center">
  <div class="row">
    <div class="col-sm-4">
      <p><strong>Indian</strong></p>
      <a href="#demo" data-toggle="collapse">
      <img src="resources/SouthIndianCuisine1.jpg" class="img-circle person" alt="band_member">
    </a>
    <div id="demo" class="collapse">
    <p>Starters</p>
      <p>North Indian</p>
        <p>South Indian</p>
    </div>
    </div>
    <div class="col-sm-4">
      <p><strong>Chinese</strong></p>
      <a href="#demo2" data-toggle="collapse">
      <img src="resources/ChineseNoodles.jpg"  class="img-circle person" alt = "band_member">
    </a>
    <div class="collapse" id="demo2">
        <p>Starters</p>
          <p>Noodles</p>
            <p>Main Course</p>
    </div>
    </div>
    <div class="col-sm-4">
      <p><strong>Italian</strong></p>
      <a href="#demo3" data-toggle="collapse">
      <img src="resources/Pizza.jpg"  class="img-circle person" alt="band_member">
    </a>
    <div id="demo3" class="collapse">
      <p>Pizzas</p>
        <p>Starters</p>
    <p>Main Course</p>
  </div>
    </div>
    </div>
</div>
</div>

</body>
<body class="b2">
<!-- Now the two grids for Video and Today's Special! -->
<div class="container text-center">
<div class="col-lg-6">
<div class="article">
<h3>Welcome to HungersPoint.com</h3>
<p><Strong>Hola</Strong></p>
<p><Strong>Hello</Strong></p>
</div>
</div>

<div class="col-lg-6">
<iframe width="420" height="315"
src="https://www.youtube.com/embed/XGSy3_Czz8k">
</iframe>
</div>
</div>
<div class="container text-center">
<!--Tours Code-->
    <div class="bg-1">
      <div class="container">
        <h3 class="text-center">Launching Soon</h3>
        <p class="text-center">Come to our grand opening near your home.<br> Remember to book your tickets!</p>

        <ul class="list-group">
          <li class="list-group-item">Paris, September <span class="label label-danger"> Sold Out!</span></li>
          <li class="list-group-item">New York, October <span class="label label-danger"> Sold Out!</span></li>
          <li class="list-group-item">San Francisco, November 3 <span class="badge">3</span></li>
        </ul>


<!--Row Text Center Thumbnails-->
<div class="row text-center">
  <div class="col-sm-4">
    <div class="thumbnail">
      <img src="resources/paris.jpg" alt="Paris">
      <p><strong>Paris</strong></p>
      <p>Sat.  26 November 2016</p>
      <button class="btn" data-toggle="modal" data-target="#myModal">Buy Tickets</button>
    </div>
  </div>
  <div class="col-sm-4">
    <div class="thumbnail">
      <img src="resources/newyork.jpg" alt="New York">
      <p><strong>New York</strong></p>
      <p>Fri.  2 December 2016</p>
      <button class="btn" data-toggle="modal" data-target="#myModal">Buy Tickets</button>
    </div>
  </div>
  <div class="col-sm-4">
    <div class="thumbnail">
      <img src="resources/sanfran.jpg" alt="San Francisco">
      <p><strong>San Francisco</strong></p>
      <p>Sat.  10 December 2016</p>
      <button class="btn" data-toggle="modal" data-target="#myModal">Buy Tickets</button>
    </div>
  </div>
</div>
<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">×</button>
        <h4><span class="glyphicon glyphicon-lock"></span> Tickets</h4>
      </div>
      <div class="modal-body">
        <form role="form">
          <div class="form-group">
            <label for="psw"><span class="glyphicon glyphicon-shopping-cart"></span> Tickets, $23 per person</label>
            <input type="number" class="form-control" id="psw" placeholder="How many?">
          </div>
          <div class="form-group">
            <label for="usrname"><span class="glyphicon glyphicon-user"></span> Send To</label>
            <input type="text" class="form-control" id="usrname" placeholder="Enter email">
          </div>
            <button type="submit" class="btn btn-block">Pay
              <span class="glyphicon glyphicon-ok"></span>
            </button>
        </form>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
          <span class="glyphicon glyphicon-remove"></span> Cancel
        </button>
        <p>Need <a href="#">help?</a></p>
      </div>
    </div>
  </div>
</div>
</div>
</div>
</div>
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
