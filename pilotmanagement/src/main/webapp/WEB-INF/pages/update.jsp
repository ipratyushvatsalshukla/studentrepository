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
		<form:form method="post" action="updatepilot"
			modelAttribute="newemp">
			<br>
			<br>
				<form:label path="pid">JOB Id:</form:label>
				<form:input path="pid" readOnly="true"/>
			
				<form:label path="pname">Pilot Name: </form:label>
				<form:input path="pname" />
				
				<form:label path="pdep">Shift:</form:label>
				<form:input path="pdep" />
					
					<input type="submit" value="Update" >
					</form:form>

</body>
</html>