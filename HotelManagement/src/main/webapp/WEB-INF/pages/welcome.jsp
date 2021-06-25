
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<title>Welcome</title>
<style>
   table, th, td {
  border: 1px solid black;  
margin-left: auto;  
margin-right: auto;  
border-collapse: collapse;    
width: 500px;  
text-align: center;  
font-size: 20px;  
}
body{ margin:0 auto;
background-color:#eacda3;
text-align: center }
</style>
</head>
<body>
<br><br>
	<h1>Hello ${name}</h1>
	<br>
	<br>
	<h3><a href="./allemployees">Get the details</a></h3>
	<br>
	<br>

	<table class="table table-striped">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Department</th>
		<tr>
			<c:forEach items="${list }" var="emp">
				<tr>
					<td><c:out value="${emp.emp_id }" /></td>
					<td><c:out value="${emp.emp_name }" /></td>
					<td><c:out value="${emp.department}" /></td>
					<td><a href="./delete?id=${emp.emp_id }">delete</a>
					<td><a href="./modify?id=${emp.emp_id}">modify</a>
				</tr>
			</c:forEach>
	</table>
</body>
</html>