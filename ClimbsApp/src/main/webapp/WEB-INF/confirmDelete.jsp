<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="styles.jsp"%>
<%@ include file="navbar.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Are you sure?</title>
<link rel="stylesheet" href="css/confirmation.css">
</head>
<body>

	<h1 class="display-4">Are you sure you want to remove this climb?</h1>

	<div class="d-flex justify-content-center" id="deletecard">
		<div class="card" style="width: 18rem;">

			<img
				src="https://jimmychin.com/wp-content/uploads/2016/10/Alex-Honnold_Bugaboos-1200x800.jpg"
				class="card-img-top" alt="...">

			<div class="card-body">
				<div class="row">
					<div class="col-9">
						<h5 class="card-title">${climb.routeName }</h5>
					</div>
					<div class="col">
						<span class="badge bg-dark">ID: ${climb.id }</span>
					</div>
				</div>
				<p class="card-text">${climb.routeGrade }</p>
				<p class="card-text">${climb.routeStyle }</p>
				<div class=row>
					<div class=col-9>
						<a href="getClimbById.do?id=${climb.id }"
							class="btn btn-outline-secondary">View</a>
					</div>
					<c:choose>
						<c:when test="${climb.ticked == true }">
							<div class=col>
								<img id="checkmark" alt="" src="/media/photos/checkmark.jpg">
							</div>
						</c:when>
						<c:otherwise>
							<div class="col"></div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-4"></div>
			<div class="col">
				<div class="d-flex justify-content-center">
					<form action="home.do" method="GET">
						<input type="submit" class="btn btn-dark btn-lg" value="Cancel">
					</form>
				</div>

			</div>

			<div class="col">
				<div class="d-flex justify-content-center">
					<form action="confirmDelete.do" method="POST">
						<input id="id" type="hidden" value=${climb.id } name="id">
						<input type="submit" class="btn btn-dark btn-lg" value="Delete">
					</form>
				</div>
			</div>
			<div class="col-4"></div>
		</div>
	</div>
</body>
</html>