<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
  <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>	
<head>
<meta charset="ISO-8859-1">

<title>Register</title>
<style>  
body{
	background-color: #edf0f7; 
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
		Employee Name:<br><form:input path="emp_name" /><br>
		Department: <br><form:input path="department" /><br>
		Password: <br><form:input type="password" path="password"/><br>
		
	
		<input type="submit" value="Register" style="color:white; margin: 5px;">
		
		<button type="button"><a href="./loginpage" style="color:white;" >login</a></button>
	</div>
</form:form>
</div>
</body>
</html>