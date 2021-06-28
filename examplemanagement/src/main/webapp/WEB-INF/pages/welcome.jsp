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
		<h1> welcome teacher ${name}</h1>
		<br><br>
			<a href="./allteachers">get All teachers details</a>
			<br>
			<br>
		
	<table >
	<tr>
	<th>teacher id</th>
	<th>teacher name</th>
	<th>teacher subject</th>
	<tr>
	<c:forEach items="${list }" var="tea">
	<tr>
		<td><c:out value="${tea.id }"/></td>
	<td><c:out value="${tea.name }"/></td>
	<td><c:out value="${tea.subject }"/></td>
	<td><a href="./delete?id=${tea.id }" >delete</a>
	<td><a href="./modify?tea=${tea }">modify</a>
	</tr>
	</c:forEach>
	
	</table>	
			
			
			
		</div>
			
			
		
		
</body>
</html>