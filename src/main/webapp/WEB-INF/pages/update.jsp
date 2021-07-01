<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
div{
        background-color: #DCDCDC;
        border: 2px solidblue;
        border-radius: 25px;
        width: 70%;
        box-shadow: 10px 10px 10px;
        margin:0 auto; 
		text-align: center
    }
</style>
</head>
<body>
<div>
   <form:form action="modify?id=${id}" method="POST" modelAttribute="employee">
	<center>
	<h1>${msg}</h1>
	Employee Name:<form:input path="emp_name"/><br><br>
	Department:<form:input path="department"/><br><br>
	<input type="submit" value="Update"/>
	</center>
</form:form>
  
</div>
</body>
</html>