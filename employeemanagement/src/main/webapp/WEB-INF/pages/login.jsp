<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
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
body{ margin:0 auto;
text-align: center }
</style>
</head>
<body>
<div>
	<h1>Login Here</h1>
	<form:form method="post" action="./validatelogin" modelAttribute="loginob"><br><br>
	Employee ID: <form:input path="emp_id"/><br><br>
	Employee Name:<form:input path="emp_name"/><br><br>
	

<input type="submit" value="login">


</form:form>
</div>

</body>
</html>