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

    <div class="jumbotron text-center">
    <h1>Welcome To Hospital</h1>
    </div>
    <c:if test="${not empty name}">
      <h1>Hello.... ${name}</h1>
</c:if>
		
		<br><br>
			<a href="./allpatients">Get All Patient details</a>
			<br>
			<br>
		
			<table >
  <thead>
    <tr>
      
      <th scope="col">Patient Id</th>
      <th scope="col">Patient Name</th>
      <th scope="col">Patient Disease</th>
      <th scope="col">Delete</th>
      <th scope="col">Modify</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${list}" var="patient">
	<tr>
	<td><c:out value="${patient.pid }"/></td>
	<td><c:out value="${patient.pname }"/></td>
	<td><c:out value="${patient.pdisease }"/></td>
	<td><a href="./delete?id=${patient.pid }" >delete</a>
	<td><a href="./modify?id=${patient.pid}">modify</a>
	</tr>
	</c:forEach>
   
  </tbody>
</table>
			
			
			
		</div>
			
			
		
		
</body>
</html>