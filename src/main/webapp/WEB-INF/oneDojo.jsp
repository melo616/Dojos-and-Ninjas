<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dojos and Ninjas</title>
</head>
<body>
	<h1><c:out value="${oneDojo.dojoName }"/> Location Ninjas</h1>
	<table>
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Age</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="oneNinja" items="${oneDojo.ninjaList}">
			<tr>
				<td><c:out value="${oneNinja.firstName }"/></td>
				<td><c:out value="${oneNinja.lastName }"/></td>
				<td><c:out value="${oneNinja.age }"/></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>