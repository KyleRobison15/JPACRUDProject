<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="styles.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Confirmed</title>
</head>
<body>

	<p>Success!</p>
	<p>You updated the following climb:</p>

	<div class="card" style="width: 18rem;">
		<img src="..." class="card-img-top" alt="...">
		<div class="card-body">
			<h5 class="card-title">${climb.routeName }</h5>
			<p class="card-text">Some quick example text to build on the card
				title and make up the bulk of the card's content.</p>
			<a href="getClimbById.do?id=${climb.id }"
				class="btn btn-outline-secondary">View</a>
		</div>
	</div>

</body>
</html>