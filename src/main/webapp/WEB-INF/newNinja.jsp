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
	 <h1>Create Ninja</h1>
 	<form:form action="/ninjas/new" method="POST" modelAttribute="newNinja">
 		<p>
	 	<form:label path="dojo">Dojo: </form:label>
	 	<form:select path="dojo">
	 		<c:forEach var="oneDojo" items="${dojoList }">
	 			<form:option value="${oneDojo.id }">${oneDojo.dojoName }</form:option>
	 		</c:forEach>
	 	</form:select>
	 	<form:errors path="dojo"/>
	 	</p>
	 	<p>
	 		<form:label path="firstName">First Name: </form:label>
	 		<form:input path="firstName"/>
	 		<form:errors path="firstName"/>
	 	</p>
	 	<p>
	 		<form:label path="lastName">Last Name: </form:label>
	 		<form:input path="lastName"/>
	 		<form:errors path="lastName"/>
	 	</p>
	 	<p>
	 		<form:label path="age">Age: </form:label>
	 		<form:input path="age"/>
	 		<form:errors path="age"/>
	 	</p>
	 	<button type="submit">Create</button>
	 </form:form>
</body>
</html>