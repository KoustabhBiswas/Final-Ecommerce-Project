<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style type="text/css">
		.button{
			background: rgba(0,0,0,0.5);
			 border-radius:10px;  
			 border: 3px solid #7DC526;
			  margin-top:20%;
			  color:white;
		}
		.button:hover{
			color:white;
			background-color:#AECE6F;
		}
		
		.cart_total{
			border:0px solid; 
			float:right; 
			background-color:#89C8E1; 
			height:100px; 
			margin-top: 6%;
			margin-right:-0.9%; 
			width:250px; 
			height:150px;
			border-radius:10px;
		}
	
	</style>
</head>
<body>
	<div class="container-fluid">
		<%@ include file="shared/navbar.jsp"%>
		<div class="row">
			 
				<div class="col-md-12" >
					<div class="col-md-7" style="margin-left:18%; ">
						<h2	style="color: #366CAB; text-shadow: 2px 2px 4px grey; margin-left: 25%">Welcome
							To Your Cart : ${username}</h2>
						<%-- <h2	style="color: #366CAB; text-shadow: 2px 2px 4px grey; margin-left: 35%;">${username}</h2> --%>
					</div>
				</div>
			 
		</div>
		<div class="row">
			<div class="col-md-11">
				<div class="col-md-9" style=" float:left; margin-left:1%; ">
					<table class="table" >
						<thead>
							<th></th>
							<th></th>
							<th>Price</th>
							<th>Quantity</th>
							<th></th>
						</thead>
						<tbody>
							<c1:forEach items="${listCart}" var="i">
							<tr style="border-bottom: 2px solid #CCD6DD">
							<td style=" width:160px; height:240px;" ><img src='<c1:url value="/resources/images/product/${i.product.product_image}" />' width=220px height=200px /></td>
                            <td ><h2 style="color:blue;"><a href="#">${i.product.company_name} ${i.product.product_name}</a>	</h2></td>
                            <td><h4>${i.product.product_price}</h4></td>
                            <td><h4>${i.orderQty}</h4></td>
                            <td><a href="#" class="btn">Remove</a></td>
                            </tr>
                            </c1:forEach>
                             
							
						</tbody>
						
						
					</table>
					<div style="margin-left:65%"><h2>SubTotal( ${totalItems}):  ${totalPrice}</h2></div>
				</div>
				<div class="col-md-2 cart_total" style="">
					<h4 style="color:#FBFDDE; margin-top:10%;">CartTotal(${totalItems}): ${totalPrice}</h4>
					<a href="${pageContext.request.contextPath}/user/checkout" style="margin-left:13%;"><div class="btn button">Proceed to CheckOut</div></a>
					
				</div>
			</div>
		
		</div>
		

	</div>
</body>
</html>