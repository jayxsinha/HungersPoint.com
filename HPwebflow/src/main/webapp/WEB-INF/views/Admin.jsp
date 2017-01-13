<html>
  <head>
    <title>Log In</title>
  </head>
  <!-- For Angular -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <!-- Latest compiled JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
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

.b2 {
  background-image: none;

}

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
h3
{
  font-size: 65px;
  font-family: verdana;
}
</style>

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
        <a class="navbar-brand" href="http://localhost:8080/AlphaWebProject/index.html">Hunger's Point</a>
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
         <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="Explore.html"><span class="glyphicon glyphicon-search"></span> Explore
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Explore.html">Indian</a></li>
            <li><a href="Explore.html">Chinese</a></li>
            <li><a href="Explore.html">Thai</a></li>
            <li><a href="Explore.html">Italian</a></li>
            <li><a href="Explore.html">Mexican</a></li>
            <li><a href="ExploreWines.html">Explore Exquisite Wine Collections</a></li>

          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class= "glyphicon glyphicon-glass"></span>  Bookings ?
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="BookTable.html">Book Table at a Restaurant</a></li>
            <li><a href="CheckBooking.html">Check Booking Status</a></li>
            <li><a href="CancelBooking.html">Cancel Booking</a></li>
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
        <li><a href="SignUp.html"><span class="glyphicon glyphicon-user"></span> Register</a></li>
        <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
      </div>
      </div>
  	</nav1>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<!--Fields for LogIn-->
<div class="container text-center">
  <h3>Log In</h3>
<div class="col-sm-2">
<div class="article">
<p><Strong>E-Mail:</Strong></p><br>
<p><Strong>Password:</Strong></p><br>
<p><Strong>DOB:</Strong></p>
</div>
</div>

<div class="col-sm-10">
  <form action="login" method="POST">
    <input type="text" name="username" placeholder="Enter your registered E-mail" size="100" /><br><br>
    <input type="password" name="password" placeholder="Enter your password"/ size="100"><br><br>
      <span data-type="selectors" data-name="birthday_wrapper" id="birth_day">
      <span>
      <select aria-label="Day" name="birth_day" id="day" title="Day">
        <option value="0" selected="1">Day</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
        <option value="13">13</option>
        <option value="14">14</option>
        <option value="15">15</option>
        <option value="15">15</option>
        <option value="16">16</option>
        <option value="17">17</option>
        <option value="18">18</option>
        <option value="19">19</option>
        <option value="20">20</option>
        <option value="21">21</option>
        <option value="22">22</option>
        <option value="23">23</option>
        <option value="24">24</option>
        <option value="25">25</option>
        <option value="26">26</option>
        <option value="27">27</option>
        <option value="28">28</option>
        <option value="29">29</option>
        <option value="30">30</option>
        <option value="31">31</option>
      </select>

      <select aria-label="Month" name="birth_month" id="month" title="Month">
        <option value="0" selected="1">Month</option>
        <option value="1">Jan</option>
        <option value="2">Feb</option>
        <option value="3">Mar</option>
        <option value="4">Apr</option>
        <option value="5">May</option>
        <option value="6">Jun</option>
        <option value="7">Jul</option>
        <option value="8">Aug</option>
        <option value="9">Sep</option>
        <option value="10">Oct</option>
        <option value="11">Nov</option>
        <option value="12">Dec</option>
      </select>

      <select aria-label="Year" name="birth_year" id="year" title="Year">
        <option value="0" selected="1">Year</option>
        <option value="1998">1998</option>
        <option value="1997">1997</option>
        <option value="1996">1996</option>
        <option value="1995">1995</option>
        <option value="1994">1994</option>
        <option value="1993">1993</option>
        <option value="1992">1992</option>
        <option value="1991">1991</option>
        <option value="1990">1990</option>
        <option value="1989">1989</option>
        <option value="1988">1988</option>
        <option value="1987">1987</option>
        <option value="1986">1986</option>
        <option value="1985">1985</option>
        <option value="1984">1984</option>
        <option value="1983">1983</option>
        <option value="1982">1982</option>
        <option value="1981">1981</option>
        <option value="1980">1980</option>
        <option value="1979">1979</option>
        <option value="1978">1978</option>
        <option value="1977">1977</option>
        <option value="1976">1976</option>
        <option value="1975">1975</option>
        <option value="1974">1974</option>
        <option value="1973">1973</option>
        <option value="1972">1972</option>
        <option value="1971">1971</option>
        <option value="1970">1970</option>
        <option value="1969">1969</option>
        <option value="1968">1968</option>
      </select>

      </span>
      </span>
      </div>
    <br><br><br><input type="submit" value="Login"/>
  </form>
</div>
</body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<body class="b2">
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
