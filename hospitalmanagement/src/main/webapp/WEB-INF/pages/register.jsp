<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
  <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>	
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
</head>
<body>



<h1>Hospital Registration Form</h1>
</div>


<form:form  method="get" action="save" modelAttribute="hospital">
			<div >
				<label for="Name" >Patient Name:</label>
                <form:input type="text" path="pname"/>
			</div>
			<div >
				<label for="pwd" >Password:</label>
		
                 <form:input type="password"  path="password"/>
			</div>
			<div >
				<label for="Name" >Disease:</label>
                <form:input type="text"  path="pdisease"/>
			</div>
			<div >
				<input type="submit"  value="Register">
                <div class="col-lg-2"></div>
                <input type="reset"  value="Reset">
			</div>
		</form:form>
			

</div>




</body>
</html>