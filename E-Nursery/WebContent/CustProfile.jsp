<%@page import="java.sql.ResultSet"%>
<%@page import="com.db.conn.ConnectionProvider"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
table, th, td {
  border: 1px solid black;
  border-radius: 10px;
  
}
th, td {
  padding-top: 5px;
  padding-bottom: 15px;
  padding-left: 25px;
  padding-right: 35px;
  border-style: ridge;
  font-size: 18px;
}
tr:nth-child(even) {
  background-color: rgba(150, 212, 212, 0.4);
}

th:nth-child(even),td:nth-child(even) {
  background-color: rgba(150, 212, 212, 0.4);
}

.topnav-right {
  float: right;
}
</style>
</head>
<body>
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
					
					<%-- <div class="topnav">
						<jsp:include page="Header/CustomerHeader.jsp"></jsp:include>
						 --%>
					 <div class="topnav">
						 <ul class="nav">
							<li class=""><a href="CustomerHome.jsp"><b>Home </b></a></li>
							<li class=""><a href="CustViewProducts.jsp"><b>View Products </b></a></li>
							<li class=""><a href="cart_wish_ls_product.jsp"><b>Cart / Wish List </b></a></li>
							<li class=""><a href="Logout">Logout</a></li>
						</ul>
					 <div class="topnav-right">
						   <ul class="nav">
						   	<li class="topnav-right"><a href="CustProfile.jsp"><b>Profile </b></a></li>
						   </ul>
					</div>
					</div> 
				</div>
			</div>
		</div>
		<div class="row">
			<div class="span12">
				<div class="well np">
				<div class="well well-small">
					<h3 align="center">Customer Profile</h3>
					<hr class="soften" />
					<div class="row-fluid" align="center">
						<div id="newProductCar" class="carousel slide">
							<div class="carousel-inner">
								<div class="item active" align="center">
									<!-- <form action="CustomerRegistration" name="ureg" method="post"> -->
									<%
									String email = session.getAttribute("email").toString();
									System.out.print("Email " + email);

									Connection con=ConnectionProvider.getConnection();
									PreparedStatement ps1 = con.prepareStatement("SELECT * FROM `customer_details` where email='"+email+"'");
									ResultSet rs1 = ps1.executeQuery();
									//int count=0;
									if (rs1.next()) {
									
									%>
										<table style="width: 50%;" align="center" >
											<tr>
												<th>Name</th>
												<td class="techSpecTD2"><%=rs1.getString("name")%></td>
											</tr>
											<tr>
												<th>Address</th>
												<td class="techSpecTD2"><%=rs1.getString("address") %></td>
											</tr>
											<tr>
												<th>Email ID</th>
												<td class="techSpecTD2"><%=rs1.getString("email") %></td>
											</tr>
											<tr>
												<th>Mobile No</th>
												<td class="techSpecTD2"><%=rs1.getString("mobile") %></td>
											</tr>
											<tr>
												<th>Status</th>
												<td class="techSpecTD2"><%=rs1.getString("status") %></td>
											</tr>
											<!-- <tr>
												<th></th>
												<td><button type="submit" class="btn btn-success"><b>Registration </b></button></td>
											</tr> -->
											
										</table>
									<%} %>
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