<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="styles.jsp"%>
<%@ include file="navbar.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${climb.routeName }</title>
</head>
<body>

	<h1 class="display-2">${climb.routeName }</h1>
	
	<form action="updateForm.do" method="GET">
		<input id="id" type="hidden" value=${climb.id } name="id">
 		<input type= "submit" class="btn btn-outline-secondary btn-lg" value="Update">
	</form>
	
	<form action="deleteClimb.do" method="GET">
		<input id="id" type="hidden" value=${climb.id } name="id">
 		<input type= "submit" class="btn btn-outline-secondary btn-lg" value="Delete">
	</form>

</body>
</html>