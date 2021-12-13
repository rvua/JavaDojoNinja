<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<a href="/newDojo">Create Dojo</a>
	<a href="/newNinja">Add a Ninja</a>
	<a href="/dashboard">Dashboard</a>
	
	<div class="container">
		<h1>Welcome</h1>
		
		<table class="table table-dark table-striped table-hover">
			<thead>
				<tr>
					<th class="align-middle">Dojo</th>
				</tr>
			</thead> 
			<tbody>
				<c:forEach var="i" items="${dojos}">
					<tr>
						<td>
							<a href="/oneLocation/${i.id}">
								<c:out value="${i.name}"></c:out>
							</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>