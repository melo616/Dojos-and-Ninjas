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
	<h1>Dojos and Ninjas</h1>
	<p><a href="/dojos/new">Add a Dojo</a></p>
	<p><a href="/ninjas/new">Add a Ninja</a></p>
	<h3>Dojos</h3>
	<c:forEach var="oneDojo" items="${dojoList}">
		<p><a href="/dojos/${oneDojo.id}"><c:out value="${oneDojo.dojoName}"/></a></p>
	</c:forEach>
</body>
</html>