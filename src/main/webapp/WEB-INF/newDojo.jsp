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
	 <h1>Create Dojo</h1>
 	<form:form action="/dojos/new" method="POST" modelAttribute="newDojo">
	 	<p>
	 		<form:label path="dojoName">Name: </form:label>
	 		<form:input path="dojoName"/>
	 		<form:errors path="dojoName"/>
	 	</p>
	 	<button type="submit">Create</button>
	 </form:form>
</body>
</html>