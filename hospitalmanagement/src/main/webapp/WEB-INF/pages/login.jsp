<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
</head>
<body>


<div >
<h1>Hospital Details</h1>
</div>


<form:form   method="post" action="./validatelogin" modelAttribute="loginob">
			<div>
				<label for="Name">Patient Id:</label>
                <form:input type="text"  path="pid"/>
			</div>
			<div >
				<label for="pwd" >Password:</label>
		
                 <form:input type="password" path="password"/>
			</div>
			<div>
				<input type="submit"  value="Login">
                <div ></div>
                <input type="reset"  value="Reset">
			</div>
		</form:form>
			

</div>

</body>
</html>