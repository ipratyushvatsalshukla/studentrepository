<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Modify</title>
</head>
<body class="bg-light">
	<div class="container">
		<br>
		<h2 class="text-center text-primary">Modify Details</h2>
		<form:form method="post" action="updatecustomer"
			modelAttribute="newcus" class="mr-5">
			<br>
			<br>


			<div class="form-group row">
				<form:label path="id" class="col-sm-2 offset-sm-3">Id</form:label>
				<div class="col-sm-5">
					<form:input path="id" class="form-control" readOnly="true"/>
				</div>
			</div>
			
			<div class="form-group row">
				<form:label path="accType" class="col-sm-2 offset-sm-3">Account Type</form:label>
				<div class="col-sm-5">
					<form:input path="accType" class="form-control" readOnly="true"/>
				</div>
			</div>
			

			<div class="form-group row">
				<form:label path="name" class="col-sm-2 offset-sm-3">Name</form:label>
				<div class="col-sm-5">
					<form:input path="name" class="form-control" />
				</div>
			</div>

			<div class="form-group row">
				<form:label path="age" class="col-sm-2 offset-sm-3">Age</form:label>
				<div class="col-sm-5">
					<form:input path="age" class="form-control" />
				</div>
			</div>

			<div class="form-group row">
				<form:label path="contact" class="col-sm-2 offset-sm-3">Contact No.</form:label>
				<div class="col-sm-5">
					<form:input path="contact" class="form-control" />
				</div>
			</div>

			<div class="form-group row">
				<form:label path="address" class="col-sm-2 offset-sm-3">Address</form:label>
				<div class="col-sm-5">
					<form:textarea path="address" rows="3" cols="30"
						class="form-control" />
				</div>
			</div>

			<div class="form-group row">
				<form:label path="gender" class="col-sm-2 offset-sm-3">Gender</form:label>
				<div class="col-sm-5">
					<form:input path="gender" rows="3" cols="30" class="form-control" />
				</div>
			</div>

			<div class="row">
				<div class="col-sm-2 offset-sm-7">
					<input type="submit" value="Update" class="btn btn-info" />
				</div>
			</div>
		</form:form>

	</div>

</body>
</html>