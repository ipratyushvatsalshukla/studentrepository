<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<style>
	body{
		background-color: #edf0f7; 
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
		<input type="submit" value="Update"/>
		</div>
	</center>
</form:form>
   </div>

</body>
</html>