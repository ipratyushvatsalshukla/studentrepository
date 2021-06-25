
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<style>
   table, th, td {
  border: 1px solid black;  
margin-left: auto;  
margin-right: auto;  
border-collapse: collapse;    
width: 500px;  
text-align: center;  
font-size: 20px;  
}
body{ margin:0 auto;
text-align: center }
</style>
</head>
<body>
	<h1>welcome ${name}</h1>
	<br>
	<br>
	<a href="./allstudents">Get All Student details of Library</a>
	<br>
	<br>

	<table style="border:1px solid black">
		<tr>
			<th>Student id</th>
			<th>Student name</th>
			<th>Student Department</th>
		<tr>
			<c:forEach items="${list }" var="stu">
				<tr>
					<td><c:out value="${stu.stu_id }" /></td>
					<td><c:out value="${stu.stu_name }" /></td>
					<td><c:out value="${stu.department}" /></td>
					<td><a href="./delete?id=${stu.stu_id }">delete</a>
					<td><a href="./modify?id=${stu.stu_id}">modify</a>
				</tr>
			</c:forEach>
	</table>
</body>
</html>