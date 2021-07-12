<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="styles.jsp"%>
<%@ include file="navbar.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Climbs</title>
<link rel="stylesheet" href="css/showClimbs.css">
</head>
<body>

	<c:choose>
		<c:when test="${! empty climbs }">

			<div class="container">
				<div class="row row-cols-3 row-cols-lg-4 g-2 g-lg-3">

					<c:forEach items="${climbs }" var="climb">
						<div class="col">

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
														src="media/photos/checkmark.jpg">
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
					</c:forEach>

				</div>
			</div>

		</c:when>

		<c:otherwise>
			<p>No climbs found</p>
		</c:otherwise>

	</c:choose>

</body>
</html>