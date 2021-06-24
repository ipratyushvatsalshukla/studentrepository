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
<center>
<h1>Registration page</h1>
<form:form method="get" action="save" modelAttribute="pilot"><br><br>
	
	Pilot Name:<form:input path="pname"/><br><br>
	Shift: <form:input path="pdep"/><br><br>

<input type="submit" value="Register">


</form:form>
	
<h1>	${msg}</h1>

<a href="./loginpage" >click here to login</a>
</center>
</body>
</html>