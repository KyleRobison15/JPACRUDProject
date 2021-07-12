<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="styles.jsp"%>
<%@ include file="navbar.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${climb.routeName }</title>
<link rel="stylesheet" href="css/displayclimb.css">
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col"></div>
			<div class="col-10" id="climbDetails">
				<div class="d-flex justify-content-center"><h1 class="display-2">${climb.routeName }</h1></div>
					<div class="d-flex justify-content-center">
					<h3>${climb.areaName } - ${climb.areaName2 } - ${climb.cragName }</h3>
					</div>
					
					<c:choose>
						<c:when test="${climb.ticked == true }">
							<div class="d-flex justify-content-center">
								<h5>Climbed on ${climb.dateClimbed }</h5>
							</div>		
						</c:when>
					</c:choose>
					
				<div class="container">
					<div class="row">
						<div class="d-flex justify-content-center">
							<iframe src="https://maps.google.com/maps?q=${climb.areaLatitude}, ${climb.areaLongitude}&z=9&output=embed" width="500" height="270" frameborder="0" style="border:0"></iframe>
						</div>
					</div>
				</div>
					
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="d-flex justify-content-center">
								<h2>Grade:  <span class="badge bg-secondary">${climb.routeGrade }</span></h2>
							</div>
							<div class="d-flex justify-content-center">
								<h2>Style:  <span class="badge bg-secondary">${climb.routeStyle }</span></h2>
							</div>
							<div class="d-flex justify-content-center">
								<h2>Pitches:  <span class="badge bg-secondary">${climb.pitches }</span></h2>
							</div>
					<c:choose>
						<c:when test="${climb.ticked == true }">
							<div class="d-flex justify-content-center">
								<h2>My Rating:  <span class="badge bg-secondary">${climb.stars } &nbsp; stars</span></h2>
							</div>		
						</c:when>
					</c:choose>

							<div class="accordion accordion-flush" id="accordionExample">
								<div class="accordion-item">
									<h2 class="accordion-header" id="headingOne">
										<button class="accordion-button" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne">
											Route Description</button>
									</h2>
									<div id="collapseOne" class="accordion-collapse collapse"
										aria-labelledby="headingOne"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">
											<h4>${climb.description }</h4>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>

				<div class="container">
					<div class="row">
						<div class="col-4"></div>
						<div class="col">
							<div class="d-flex justify-content-center">
								<form action="updateForm.do" method="GET">
									<input id="id" type="hidden" value=${climb.id } name="id">
									<input type="submit" class="btn btn-outline-dark btn-lg"
										value="Update">
								</form>
							</div>
						</div>
						<div class="col">
							<div class="d-flex justify-content-center">
								<form action="deleteClimb.do" method="GET">
									<input id="id" type="hidden" value=${climb.id } name="id">
									<input type="submit" class="btn btn-outline-dark btn-lg"
										value="Delete">
								</form>
							</div>
						</div>
						<div class="col-4"></div>
					</div>
				</div>

			</div>
			<div class="col"></div>
		</div>
	</div>
</body>
</html>