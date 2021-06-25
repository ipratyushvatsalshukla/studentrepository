<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
  <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>	
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<title>Register</title>
<style>  
body{
	background-color: #edf5f7; 
	margin:0 auto;
	text-align: center 
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
<h1>Registration page</h1>
<h1>	${msg}</h1>
<div>
<form:form method="get" action="save" modelAttribute="employee"><br><br>
	<div id="boxx" class="border border-dark">
		Employee Name:<br><form:input path="emp_name" class="form-control"/><br>
		Department: <br><form:input path="department" class="form-control"/><br>
		Password: <br><form:input type="password" path="password" class="form-control"/><br>
		
	
		<input type="submit" class="btn btn-secondary" value="Register" style="color:white; margin: 5px;">
		
		<button type="button" class="btn btn-primary"><a href="./loginpage" style="color:white;" >login</a></button>
	</div>
</form:form>
</div>
</body>
</html>