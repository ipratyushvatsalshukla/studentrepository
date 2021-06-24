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
	Employee ID: <form:input path="eid"/><br><br>
	Employee Name:<form:input path="ename"/><br><br>
	<input type="submit" value="login">
	</center>
	



</form:form>
</div>
	
</body>
</html>