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



<h1>PostalRegistration Form</h1>
</div>


<form:form  method="get" action="save" modelAttribute="postal">
			<div >
				<label for="Name" >Postal Name:</label>
                <form:input type="text" path="pname"/>
			</div>
			<div >
				<label for="pwd" >Password:</label>
		
                 <form:input type="password"  path="password"/>
			</div>
			<div >
				<label for="Name" >Department:</label>
                <form:input type="text"  path="pdept"/>
			</div>
			<div >
				<input type="submit"  value="Register">
                
                <input type="reset"  value="Reset">
			</div>
		</form:form>
			

</div>




</body>
</html>