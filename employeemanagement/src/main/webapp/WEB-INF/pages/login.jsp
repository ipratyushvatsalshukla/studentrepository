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

<div class="container">

<h1 style="color:Tomato;"><center>Employee Management System</center></h1>



<form:form class="form-group"  method="post" action="./validatelogin" modelAttribute="loginob">
			<div class="form-group row">
				<label for="Name" class="btn btn-primary col-sm-12 col-lg-6 col-form-label">Enter the Employee Id:</label>
                <form:input type="text" class="form-control col-sm-12 col-lg-6" path="sid"/>
			</div>
			<div class="form-group row">
				<label for="pwd" class="btn btn-primary col-sm-12 col-lg-6">Enter Password:</label>
		
                 <form:input type="password" class="form-control col-sm-12 col-lg-6" path="password"/>
			</div>
			<div class="form-group col-sm-6 row">
				<input type="submit" class="btn btn-success col-sm-12 col-lg-5" value="Login">
                <div class="col-lg-2"></div>
                <input type="reset" class="btn btn-warning col-sm-12 col-lg-5" value="Reset">
			</div>
		</form:form>
			

</div>


</body>
</html>