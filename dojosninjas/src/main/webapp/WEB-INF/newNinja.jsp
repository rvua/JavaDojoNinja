<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
    crossorigin="anonymous">
</head>
<body>
	<a href="/dashboard">Dashboard</a>
	<a href="/newDojo">Add a Dojo</a>
	<div class="container">
		<h1>Add a Ninja</h1>
		
		<form:form action="/processNinja" method="post" modelAttribute="ninja">
			<p>
				<form:label path="firstName">First Name</form:label>
				<form:errors path="firstName"/>
				<form:input path="firstName"/>
			</p>
			
			<p>
				<form:label path="lastName">Last Name</form:label>
				<form:errors path="lastName"/>
				<form:input path="lastName"/>
			</p>
			<select name="dojo">
				<c:forEach var="i" items="${allDojos}">
					<option value="${i.id}">${i.name}</option>
				</c:forEach>
			</select>
			
			<p>
				<form:label path="age">Age</form:label>
				<form:errors path="age"/>
				<form:input type="number" path="age"/>
			</p>			
			<input type="submit" value="submit">
		</form:form>
	</div>
</body>
</html>