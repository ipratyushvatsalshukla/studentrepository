<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Modify Details</h2>
		<form:form method="post" action="updateemployee"
			modelAttribute="newemp">
			<br>
			<br>
				<form:label path="eid">Employee Id:</form:label>
				<form:input path="eid" readOnly="true"/>
			
				<form:label path="ename">Employee Name: </form:label>
				<form:input path="ename" />
				
				<form:label path="edep">Employee Dep:</form:label>
				<form:input path="edep" />
					
					<input type="submit" value="Update" >
					</form:form>


</body>
</html>