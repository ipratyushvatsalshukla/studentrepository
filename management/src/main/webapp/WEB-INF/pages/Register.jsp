<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
<form:form method="get" action="save" modelAttribute="employee"><br><br>
	
	Employee Name:<form:input path="ename"/><br><br>
	Department: <form:input path="edep"/><br><br>

<input type="submit" value="Register">


</form:form>
	
<h1>	${msg}</h1>

<a href="./loginpage" >click here to login</a>
</center>
</body>
</html>