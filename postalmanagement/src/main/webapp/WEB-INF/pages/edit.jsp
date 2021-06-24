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


<div>
<h1>Postal Details</h1>
</div>
<h2>your id is ${id}</h2>

<form:form  method="get" action="update" modelAttribute="postal">
<form:input type="hidden" path="pid" value="${id}"/>
			<div >
				<label for="Name" >Postal Name:</label>
                <form:input type="text"  path="pname"/>
			</div>
			<div >
				<label for="pwd" >Password:</label>
		
                 <form:input type="password"  path="password"/>
			</div>
			<div >
				<label for="Name">Postal Department:</label>
                <form:input type="text"  path="pdept"/>
			</div>
			<div >
				<input type="submit"  value="Modify">
               
                <input type="reset"  value="Reset">
			</div>
		</form:form>
			

       </div>





</body>
</html>