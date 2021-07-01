
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<style>
div{
        background-color: #DCDCDC;
        border: 2px solidblue;
        border-radius: 25px;
        width: 70%;
        box-shadow: 10px 10px 10px;
        margin:0 auto; 
		text-align: center
    }
   th, td {
 background-color: #C0C0C0
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
<div>
	<h1>welcome ${name}</h1>
	<br>
	<br>
	<a href="./allemployees"><input type="submit" Value="Get Employee Details"></a>
	<br>
	<br>

	<table>
		<tr>
			<th>Employee id</th>
			<th>Employee name</th>
			<th>Employee Department</th>
		<tr>
			<c:forEach items="${list }" var="emp">
				<tr>
					<td><c:out value="${emp.emp_id }" /></td>
					<td><c:out value="${emp.emp_name }" /></td>
					<td><c:out value="${emp.department}" /></td>
					<td><a href="./delete?id=${emp.emp_id }"><input type="submit" Value="Delete"></a>
					<td><a href="./modify?id=${emp.emp_id}"><input type="submit" Value="Modify"></a>
				</tr>
			</c:forEach>
	</table>
	</div>
</body>
</html>