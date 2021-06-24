<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
	<h1> Welcome Pilot ${emp.pname}</h1>
		<br><br>
			<a href="./allpilots">All pilots list</a>
			<br>
			<br>
		
	<table >
	<tr>
	<th>Job id</th>
	<th>Pilot name</th>
	<th>Shift</th>
	<tr>
	<c:forEach items="${list }" var="emp">
	<tr>
		<td><c:out value="${emp.pid }"/></td>
	<td><c:out value="${emp.pname }"/></td>
	<td><c:out value="${emp.pdep }"/></td>
	<td><a href="./delete?id=${emp.pid }" >delete</a>
	<td><a href="./modify?id=${emp.pid}">modify</a>
	</tr>
	</c:forEach>
	
	</table>		
		</div>
		</center>
</body>
</html>