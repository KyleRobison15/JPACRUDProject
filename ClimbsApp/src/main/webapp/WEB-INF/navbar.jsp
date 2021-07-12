<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- <link rel = "stylesheet" href = "climbingsitestyles.css"> -->

</head>
<body>

	<!-- ///////////////////////////////////////////////////////// NAVBAR AND SEARCH ///////////////////////////////////////////////////////// -->

	<nav class="navbar navbar-expand-md navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.do"> <img
				src="https://cdn11.bigcommerce.com/s-hgn1l9sh63/images/stencil/1000w/products/1672/50847/b18f13c764e4065f708f97f06d9f202e9d69c269__31494.1615575327.386.513.png?c=1"
				alt="" width="70" height="56">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
			
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active" aria-current="page" href="home.do">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="getClimbs.do">All Climbs</a></li>
					<li class="nav-item"><a class="nav-link" href="getCompletedClimbs.do">Completed Climbs</a></li>
					<li class="nav-item"><a class="nav-link" href="getToDoClimbs.do"> Future Climbs</a></li>
					<li class="nav-item"><a class="btn btn-outline-secondary" href="addForm.do"> Add Climb</a></li>
				</ul>
				
				<div class="row align-items-end">
					<div class="col">
						<div class="container">
							<form class="d-flex" action="getClimbs.do" method="GET">
								<input class="form-control me-2" type="search"
									placeholder="Keyword Search" name="keyword" aria-label="Search">
								<button class="btn btn-outline-success" type="submit">Search</button>
							</form>
						</div>
					</div>
					<div class="col">
						<div class="container">
							<form class="d-flex" action="getClimbs.do" method="GET">
								<input class="form-control me-2" type="search"
									placeholder="ID Search" name="id" aria-label="Search">
								<button class="btn btn-outline-success" type="submit">Search</button>
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>
	</nav>

	<!-- This file is solely for applying bootstrap and CSS styling to my other .jsp files -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>
