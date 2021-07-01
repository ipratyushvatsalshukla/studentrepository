<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
     
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Login</title>
<style>
  

body{
	margin:0 auto;
	text-align: center;
	background-color: #edf0f7; 
}
#boxx{
	margin-left: 500px;
	margin-right: 500px;
	margin-up: 200px;
	padding: 20px;	
	
}
}
</style>
</head>
<body>
<div>
	<form:form method="post" action="./validatelogin" modelAttribute="loginob"><br><br>
	<div id="boxx" class="border border-dark">
		Employee ID: </br><form:input path="emp_id" /><br><br>
		Employee Password:</br><form:input type="password" path="password" /><br>
		<button type="submit" >Login</button>
		<br>
	</div>
	

  

</form:form>
</div>

</body>
</html>