
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
<title>ShopMobiles</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!--  <link rel="stylesheet" href="css/bootstrap.min.css">-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- <script src="jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>-->
<style>
a {
	text-decoration: none;
}

body {
	background-color: wheat;
}

.sp {
	background-color: white;
	padding-bottom: 6px;
	padding-top: 6px;
	padding-left: 10px;
	padding-right: 10px;
	border-bottom-left-radius: 1155px;
	border-bottom-right-radius: 1155px;
	border-top-left-radius: 1155px;
	border-top-right-radius: 1155px;
}

.sp1 {
	background-color: white;
	padding-bottom: 7px;
	padding-top: 7px;
	padding-left: 8px;
	padding-right: 8px;
	border-bottom-left-radius: 1155px;
	border-bottom-right-radius: 1155px;
	border-top-left-radius: 1155px;
	border-top-right-radius: 1155px;
	margin-left: 3%;
}

.sp2 {
	background-color: white;
	padding-bottom: 6px;
	padding-top: 6px;
	padding-left: 5px;
	padding-right: 5px;
	border-bottom-left-radius: 1155px;
	border-bottom-right-radius: 1155px;
	border-top-left-radius: 1155px;
	border-top-right-radius: 1155px;
	margin-left: 3%;
}
</style>


</head>
<body>
	<div class="container-fluid">

		<%@include file="shared/navbar.jsp"%>
		<!-- Carasouel begins -->
		<div class="row" style="margin-top: -1.5%;">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
					<div class="item active">
						<img src="<c:url value="/resources/images/h1.jpg"/>" alt="nokia"
							class="img-responsive" style="height: 300px; width: 100%" />
					</div>
					<div class="item">
						<img src="<c:url value="/resources/images/h2.jpg" />" alt="Htc"
							class="img-responsive" style="height: 300px; width: 100%" />
					</div>
					<div class="item">
						<img src="<c:url value="/resources/images/h3.jpg" />"
							alt="samsung" class="img-responsive"
							style="height: 300px; width: 100%;" />
					</div>
				</div>

				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" style="height: 90px;"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>

		</div>
		<!-- carasouel ends -->
		<!-- main content begins -->
		<div class="row" style="margin-top: 2%;">

			<div class="panel panel-default col-md-12"
				style="border: 0px solid; height: auto">
				<div class="panel panel-default col-md-2"
					style="border: 0px solid blue; height: auto; width: 300px;">
					<div class="panel-body"
						style="height: 255px; width: 280px; border: 0px solid red">
						<a href="#"><img
							src="<c:url value="/resources/images/J7.jpg"/>" alt="Samsung J7"
							width="250" height="236" style="border: 0px solid" /> </a>
					</div>
					<div class="panel-footer"
						style="border: 0px solid; height: auto; width: 250px; margin-left: 5.5%; background-color: white;">
						<P style="margin-left: 29%; color: red;">Samsung J7</P>
					</div>
				</div>

				<div class="panel panel-default col-md-2"
					style="border: 0px solid blue; height: auto; width: 300px;">
					<div class="panel-body"
						style="height: 255px; width: 280px; border: 0px solid red">
						<a href="#"><img
							src="<c:url value="/resources/images/ASUS_zenfone_3_Max__L_1.jpg"/>"
							alt="Asus Zenfone Max" width="250" height="236"
							style="border: 0px solid" /> </a>
					</div>
					<div class="panel-footer"
						style="border: 0px solid; height: auto; width: 250px; margin-left: 5.5%; background-color: white;">
						<P style="margin-left: 29%; color: red;">Asus Zenfone Max</P>
					</div>
				</div>

				<div class="panel panel-default col-md-2"
					style="border: 0px solid blue; height: auto; width: 300px;">
					<div class="panel-body"
						style="height: 255px; width: 280px; border: 0px solid red">
						<a href="#"><img
							src="<c:url value="/resources/images/nokia.jpeg"/>" alt="Nokia 6"
							width="250" height="236" style="border: 0px solid" /> </a>
					</div>
					<div class="panel-footer"
						style="border: 0px solid; height: auto; width: 250px; margin-left: 5.5%; background-color: white;">
						<P style="margin-left: 29%; color: red;">Nokia 6</P>
					</div>
				</div>

				<div class="panel panel-default col-md-2"
					style="border: 0px solid blue; height: auto; width: 300px;">
					<div class="panel-body"
						style="height: 255px; width: 280px; border: 0px solid red">
						<a href="#"><img
							src="<c:url value="/resources/images/Xiaomi-Redmi-Note4-grey-med.jpg"/>"
							alt="RedMi Note 4" width="250" height="236"
							style="border: 0px solid" /> </a>
					</div>
					<div class="panel-footer"
						style="border: 0px solid; height: auto; width: 250px; margin-left: 5.5%; background-color: white;">
						<P style="margin-left: 29%; color: red;">RedMi Note 4</P>
					</div>
				</div>


			</div>
		</div>
		<!-- main content ends -->
		<%@include file="shared/footer.jsp"%>

	</div>

</body>

</html>
