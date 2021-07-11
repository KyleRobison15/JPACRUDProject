<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="styles.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Are you sure?</title>
</head>
<body>

	<p><a href="home.do">Home</a></p>
	
	<h1 class="display-4">Are you sure you want to remove this climb?</h1>
	<h1 class="display-3">${climb.routeName }</h1>
	
	<form action="home.do" method="GET">
 		<input type= "submit" class="btn btn-outline-secondary btn-lg" value="Cancel">
	</form>
	
	<form action="confirmDelete.do" method="POST">
		<input id="id" type="hidden" value=${climb.id } name="id">
 		<input type= "submit" class="btn btn-outline-secondary btn-lg" value="Delete">
	</form>

</body>
</html>