<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
  <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>	
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
</head>
<body>

<div class="container">
<div class="jumbotron text-center">
<h1>Employee Management System</h1>
</div>
<h2>your id is ${id}</h2>

<form:form class="form-group" method="get" action="update" modelAttribute="employee">
<form:input type="hidden" path="sid" value="${id}"/>
			<div class="form-group row">
				<label for="Name" class="col-sm-12 col-lg-2 col-form-label">Employee Name:</label>
                <form:input type="text" class="form-control col-sm-12 col-lg-10" path="sname"/>
			</div>
			<div class="form-group row">
				<label for="pwd" class="col-sm-12 col-lg-2">Password:</label>
		
                 <form:input type="password" class="form-control col-sm-12 col-lg-10" path="password"/>
			</div>
			<div class="form-group row">
				<label for="Name" class="col-sm-12 col-lg-2 col-form-label">Department:</label>
                <form:input type="text" class="form-control col-sm-12 col-lg-10" path="course"/>
			</div>
			<div class="form-group col-sm-12 row">
				<input type="submit" class="btn btn-success col-sm-12 col-lg-5" value="Modify">
                <div class="col-lg-2"></div>
                <input type="reset" class="btn btn-warning col-sm-12 col-lg-5" value="Reset">
			</div>
		</form:form>
			

</div>





</body>
</html>