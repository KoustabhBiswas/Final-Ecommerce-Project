<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
</head>
<body>
	<div class="container-fluid">
		<!-- NavBar begins -->
		<%@ include file="shared/navbar.jsp"%>
		<!-- Navbar ends -->
		<!-- Form begins -->
		<div class="row">
			<div class="col-md-6">
				<form:form method="POST" action="supplierdetails"
					modelAttribute="supplier" class="form-group">
					<form:label path="supplier_name">Supplier Name:</form:label>
					<form:input path="supplier_name" type="text" class="form-control" />
					<br>
					<form:label path="supplier_address">Supplier Address</form:label>
					<form:input path="supplier_address" type="text"
						class="form-control" />
					<br>
					<input type="submit" value="SUBMIT" />


				</form:form>

			</div>
		</div>
		<!-- Form ends -->
		<!-- Footer begins -->
		<%@include file="shared/footer.jsp" %>
		<!-- Footer ends -->
	</div>
</body>
</html>