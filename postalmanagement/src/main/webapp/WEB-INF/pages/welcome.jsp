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

    <div>
    <h1>Welcome To Postal Department</h1>
    </div>
    <c:if test="${not empty name}">
      <h1>Hey!!! ${name}</h1>
</c:if>
		
		<br><br>
			<a href="./allpatients">Get All Patient details</a>
			<br>
			<br>
		
			<table >
  <thead>
    <tr>
      
      <th scope="col">Postal Id</th>
      <th scope="col">Postal Name</th>
      <th scope="col">Postal Department</th>
      <th scope="col">Delete</th>
      <th scope="col">Modify</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${list}" var="postal">
	<tr>
	<td><c:out value="${postal.pid }"/></td>
	<td><c:out value="${postal.pname }"/></td>
	<td><c:out value="${postal.pdept }"/></td>
	<td><a href="./delete?id=${postal.pid }" >delete</a>
	<td><a href="./modify?id=${postal.pid}">modify</a>
	</tr>
	</c:forEach>
   
  </tbody>
</table>
			
			
			
		</div>
			
			
		
		
</body>
</html>