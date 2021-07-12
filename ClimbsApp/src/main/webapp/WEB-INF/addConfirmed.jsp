<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="styles.jsp"%>
<%@ include file="navbar.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Climb Added!</title>
<link rel="stylesheet" href="css/home.css">
</head>
<body>

	<h1 class="display-2">Success!</h1>
	<h1 class="display-5">You added the following climb: </h1>


					<div class="d-flex justify-content-center">
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
													<img id="checkmark" alt=""
														src="/media/photos/checkmark.jpg">
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

</body>
</html>