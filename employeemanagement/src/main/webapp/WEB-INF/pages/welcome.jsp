<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >


</head>
<body>
<div class="container">

    <h1 style="color:Tomato;"><center>Employee Management System</center></h1>
  
    <c:if test="${not empty name}">
      <h1 style="color:DodgerBlue;"><center>Welcome ${name}</center></h1>
</c:if>
		
		<br><br>
			<a href="./allemployees" style="background-color:#808080;padding:15px;border-radius:4%;color:white;text-decoration:none;">Get all employee details</a>
			<br>
			<br>
		
			<table class="table table-bordered">
  <thead>
    <tr style="color:DodgerBlue;">
      
      <th scope="col">Employee Id</th>
      <th scope="col">Employee Name</th>
      <th scope="col">Department</th>
      <th scope="col">Delete</th>
      <th scope="col">Modify</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${list}" var="stud">
	<tr>
	<td><c:out value="${stud.sid }"/></td>
	<td><c:out value="${stud.sname }"/></td>
	<td><c:out value="${stud.course }"/></td>
	<td><a href="./delete?id=${stud.sid }" >delete</a>
	<td><a href="./modify?id=${stud.sid}">modify</a>
	</tr>
	</c:forEach>
   
  </tbody>
</table>
			
			
			
		</div>
			
			</div>
		
		
</body>
</html>