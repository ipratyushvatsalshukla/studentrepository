<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
     
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<title>Login</title>
<style>
  

body{ margin:0 auto;
text-align: center;
background-color:powderblue; 
}
boxx{
	margin: 500px;
}
}
</style>
</head>
<body>
<div>
<br><br>
<h2>This is Login Page</h2>
<br><br>
	<form:form method="post" action="./validatelogin" modelAttribute="loginob"><br><br>
	<div id="boxx">
		Enter ID: <form:input path="emp_id"/><br><br>
		Enter Password:<form:input type="password" path="password"/><br><br>
	</div>
	
	

<input type="submit" value="Register">
	

  <button type="submit" >Login</button>

</form:form>
</div>

</body>
</html>