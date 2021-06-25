<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>

</head>
<body>
		<h1> welcome ${name}</h1>
		<br><br>
			<a href="./allstudents">Show all student details</a>
			<br>
			<br>
		
	<table >
	<tr>
	<th><b>Student id &nbsp;</b></th>
	<th><b>Student name &nbsp;<b></b></th>
	<th><b>Branch<b></b></th>
	</tr>
	<c:forEach items="${list}" var="stud">
	<tr>
		<td>${stud.stdId}</td>
		<td><c:out value="${stud.name}" /></td>
		<td><c:out value="${stud.branch}" /></td>
		<td><a href="./delete?id=${stud.stdId}" >delete</a>
		<td><a href="./modify?id=${stud.stdId}">modify</a>
	</tr>
	</c:forEach>
	
	</table>	
					
</body>
</html>