<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
	<form:form method="post" action="./validatelogin" modelAttribute="loginob"><br><br>
	<center>
	<h1>Login here</h1>
	Job ID: <form:input path="pid"/><br><br>
	Pilot Name:<form:input path="pname"/><br><br>
	<input type="submit" value="login">
	</center>
	



</form:form>
</div>
</body>
</html>