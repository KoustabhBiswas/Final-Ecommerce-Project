<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form:form action="/ecommerce1/admin/edit/productsubmit" modelAttribute="product1" method="post">
			<form:hidden path="productId" />
			<form:label path="product_name">Product Name</form:label>
			<form:input path="product_name" />
			
			
			<form:label path="company_name">Company name</form:label>
			<form:input path="company_name" />
			
			
			<form:label path="product_price">Price</form:label>
			<form:input path="product_price" />
			
			<form:label path="product_description">Description</form:label>
			
			<form:input path="product_description" />
			
			<form:label path="product_image">Image name</form:label>
			<form:input path="product_image" />
			<input type="submit" value="Submit">
		</form:form>


	</div>
</body>
</html>