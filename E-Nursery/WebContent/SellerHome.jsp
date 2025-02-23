<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<title><jsp:include page="projectTitle.jsp"></jsp:include></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="style.css" rel="stylesheet" />
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<link rel="shortcut icon" href="assets/ico/favicon.ico">
<style>
.topnav-right {
  float: right;
}
</style>
</head>
<body>
<%
	if(request.getParameter("login")!=null)
	{
	out.println("<script>alert('Login Sucessful...Welcome to Seller Section ...!')</script>");	
	}
	
	if(request.getParameter("Done")!=null)
	{
	out.println("<script>alert('Payment Completed Successful ...!')</script>");	
	}
	
	if(request.getParameter("Insert")!=null)
	{
	out.println("<script>alert('Feedback Added Successful ...!')</script>");	
	}
	if(request.getParameter("OrderDone")!=null)
	{
	out.println("<script>alert('Order Confirm Successful ...!')</script>");	
	}
%>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="topNav">
			<div class="container">
				<div class="alignR">
					<div class="pull-left socialNw">
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div id="gototop"></div>
		<header id="header">
		<div class="row">
			<div class="span4">
				<h1>
					<a class="logo" href="index.jsp"><span><jsp:include
								page="projectTitle.jsp"></jsp:include></span> <img
						src="assets/img/plantlogo.png"
						alt="bootstrap sexy shop"> </a>
				</h1>
			</div>
			<div class="span4 alignR"></div>
		</div>
		</header>

		<div class="navbar">
			<div class="navbar-inner">
				<div class="container">
					<a data-target=".nav-collapse" data-toggle="collapse"
						class="btn btn-navbar"> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
					</a>
					<%-- <div class="nav-collapse">
						<jsp:include page="Header/SellerHeader.jsp"></jsp:include>
					</div> --%>
					<div class="topnav">
						 <ul class="nav">
							<li class=""><a href="SellerHome.jsp"><b>Home </b></a></li>
							<li class=""><a href="UploadProduct.jsp"><b>Upload Product </b></a></li>
							<li class=""><a href="viewProducts.jsp"><b>View Product </b></a></li>
							<li class=""><a href="Logout">Logout</a></li>
						</ul>
					 <div class="topnav-right">
						   <ul class="nav">
						   	<h4>Welcome <%=session.getAttribute("name").toString()%></h4>
						   </ul>
					</div>
					</div> 
				</div>
			</div>
		</div>
		<div class="row">
			<div class="span12">
				<div class="well np">
					<div id="myCarousel" class="carousel slide homCar">
						<div class="carousel-inner">

							<div class="item">
								<img style="width: 100%" src="Images/Banner02.jpg"
									alt="bootstrap ecommerce templates">
							</div>
							<div class="item">
								<img style="width: 100%" src="Images/Banner03.jpg"
									alt="bootstrap ecommerce templates">
							</div>
							<div class="item active">
								<img style="width: 100%" src="Images/Banner01.jpg"
									alt="bootstrap ecommerce templates">
							</div>
						</div>
						<a class="left carousel-control" href="#myCarousel"
							data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
							href="#myCarousel" data-slide="next">&rsaquo;</a>
					</div>
				</div>
				<div class="well well-small">
					<hr class="soften" />
					<div class="row-fluid" align="center">
						<div id="newProductCar" class="carousel slide">
							<div class="carousel-inner">
								<div class="item active" align="center">
									<h1>Welcome
									<hr/>
									<%=session.getAttribute("name").toString()%></h1>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<div class="copyright">
			<div class="container">
				<p class="pull-right"></p>
				<span>Copyright &copy; Bootstrap E-Nursery
					Shopping System.
				</span>
			</div>
		</div>
		<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
		<script src="assets/js/jquery.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/jquery.easing-1.3.min.js"></script>
		<script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
		<script src="assets/js/shop.js"></script>
</body>
</html>