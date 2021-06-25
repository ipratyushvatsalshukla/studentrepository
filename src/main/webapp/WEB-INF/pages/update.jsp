<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<title>Insert title here</title>
<style>
	body{
		background-color: #edf5f7; 
	}
	#boxx{
	margin-left: 500px;
	margin-right: 500px;
	margin-up: 200px;
	padding: 20px;	
	}
</style>
</head>
<body>
<div>
   <form:form action="modify?id=${id}" method="POST" modelAttribute="employee">
	<center>
	<h1>${msg}</h1>
	<div id="boxx" class="border border-dark">
		Employee Name: </br><form:input path="emp_name"/><br>
		Department:   </br> <form:input path="department"/><br>
		Password:     </br> <form:input type="password" path="password"/><br>
		<input type="submit" class="btn btn-success" value="Update"/>
		</div>
	</center>
</form:form>
   </div>

</body>
</html>