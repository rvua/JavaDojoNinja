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
	<a href="/newNinja">Add a Ninja</a>
	<a href="/dashboard">Dashboard</a>
	
	<div class="container">
		<h1>Add a Dojo</h1>
		
		<form:form action="/processDojo" method="post" modelAttribute="dojo">
			<p>
				<form:label path="name">Dojo Name</form:label>
				<form:errors path="name"/>
				<form:input path="name"/>
			</p>	
			<input type="submit" value="submit">
		</form:form>
	</div>
</body>
</html>