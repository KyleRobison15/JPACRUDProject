<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="styles.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>

	<p><a href="getClimbs.do">List All Climbs</a></p>
	
	<p>Find a Climb by ID: </p>
	<form action="getClimbById.do" method="GET">
		<input type="text" name="id" size="4"/> 
		<input type="submit" value="Find Climb" />
	</form><br/>

</body>
</html>