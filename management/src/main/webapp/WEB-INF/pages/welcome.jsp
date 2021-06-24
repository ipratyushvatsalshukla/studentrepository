<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
	<h1> Welcome Employees ${name}</h1>
		<br><br>
			<a href="./allemployees">All employees list</a>
			<br>
			<br>
		
	<table >
	<tr>
	<th>Employee id</th>
	<th>Employee name</th>
	<th>Employee Department</th>
	<tr>
	<c:forEach items="${list }" var="emp">
	<tr>
		<td><c:out value="${emp.eid }"/></td>
	<td><c:out value="${emp.ename }"/></td>
	<td><c:out value="${emp.edep }"/></td>
	<td><a href="./delete?id=${emp.eid }" >delete</a>
	<td><a href="./modify?id=${emp.eid}">modify</a>
	</tr>
	</c:forEach>
	
	</table>		
		</div>
		</center>
</body>
</html>