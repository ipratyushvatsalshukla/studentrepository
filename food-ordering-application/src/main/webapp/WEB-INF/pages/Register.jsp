<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body class="bg-light">
	<div class="container">
	<br><h2 class="text-center text-primary">Registration Here</h2>
	<form:form method="get" action="save" modelAttribute="customer" class="mr-5">
		<br>
		<br>
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

		<fieldset class="form-group">
			<div class="row">
				<legend class="col-form-label col-sm-2 offset-sm-3 pt-0">Gender</legend>
				<div class="col-sm-5">
					<div class="form-check">
						<form:radiobutton path="gender" value="Male" label="Male"
							class="fomr-check-input" />
					</div>
					<div class="form-check">
						<form:radiobutton path="gender" value="Female" label="Female"
							class="fomr-check-input" />
					</div>
				</div>
			</div>
		</fieldset>

		<div class="form-group row">
			<form:label path="password" class="col-sm-2 offset-sm-3">Password</form:label>
			<div class="col-sm-5">
				<form:password path="password" class="form-control" />
			</div>
		</div>

		<div class="row">
			<div class="col-sm-2 offset-sm-5">
				<input type="submit" value="Register" class="btn btn-primary" />
			</div>
			<div class="col-sm-2">
				<a href="./login"><input type="button" value="Login"
					class="btn btn-success"></a>
			</div>
		</div>
	</form:form>

	<br><h4 class="text-danger text-center">${msg}</h4>

	</div>

</body>
</html>