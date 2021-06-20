<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body class="bg-light">

	<br>
	<h1 class="text-center text-primary">Welcome to Our Dashboard !</h1>
	<br>
	<br>
	<a href="./allcustomers" class="btn btn-primary btn-lg ml-2" role="button">Get All customer details</a>
	<br>
	<br>

	<table class="table table-striped">
		<thead class="thead-light">
			<tr>
				<th scope="col">Customer Id</th>
				<th scope="col">Customer Name</th>
				<th scope="col">Customer Age</th>
				<th scope="col">Customer Gender</th>
				<th scope="col">Customer Contact</th>
				<th scope="col">Customer Address</th>
			</tr>
		</thead>


		<c:forEach items="${list}" var="cust">
			<tr>
				<th scope="row"><c:out value="${cust.id }" /></th>
				<td><c:out value="${cust.name }" /></td>
				<td><c:out value="${cust.age }" /></td>
				<td><c:out value="${cust.gender }" /></td>
				<td><c:out value="${cust.contact }" /></td>
				<td><c:out value="${cust.address }" /></td>
				<td><a href="./delete?id=${cust.id}"class="btn btn-danger" role="button">Delete</a></td>
				<td><a href="./modify/id=${cust.id}" class="btn btn-info" role="button">Modify</a></td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>