<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="styles.jsp"%>
<%@ include file="navbar.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Climb</title>
<link rel="stylesheet" href="css/addupdate.css">
</head>
<body>

<div class="container .px-4">
<div class="row gx-5">
<div class="col">
<div class="form">
	<form action="addClimb.do" method="post">
<!-- ///////////////////////////////////////////// ROUTE NAME ////////////////////////////////////////////////////////////// -->

	
		<div class="row mb-3">
			<label for="routeName" class="col-sm-2 col-form-label">Route Name</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="routeName" name="routeName" required>
			</div>
		</div>
		
<!-- ///////////////////////////////////////////// ROUTE GRADE ////////////////////////////////////////////////////////////// -->
		
		<div class="row mb-3">
			<label for="routeGrade" class="col-sm-2 col-form-label" >Route Grade</label>
			<div class="col-sm-10">
				<select class="form-select" name="routeGrade" id="routeGrade" aria-label="Default select example">
					<option selected>Select a Grade</option>
					
					<option value="v0">v0</option>
					<option value="v1">v1</option>
					<option value="v2">v2</option>
					<option value="v3">v4</option>
					<option value="v5">v5</option>
					<option value="v6">v7</option>
					<option value="v8">v8</option>
					<option value="v9">v9</option>
					<option value="v10">v10</option>
					<option value="v11">v11</option>
					<option value="v12">v12</option>
					<option value="v13">v13</option>
					<option value="v14">v14</option>
					<option value="v15">v15</option>

					<option value="5.2">5.2</option>
					<option value="5.3">5.3</option>
					<option value="5.4">5.4</option>
					<option value="5.5">5.5</option>
					<option value="5.6">5.6</option>
					
					<option value="5.7-">5.7-</option>
					<option value="5.7">5.7</option>
					<option value="5.7+">5.7+</option>
					
					<option value="5.8-">5.8-</option>
					<option value="5.8">5.8</option>
					<option value="5.8+">5.8+</option>
					
					<option value="5.9-">5.9-</option>
					<option value="5.9">5.9</option>
					<option value="5.9+">5.9+</option>
					
					<option value="5.10">5.10</option>
					<option value="5.10a">5.10a</option>
					<option value="5.10b">5.10b</option>
					<option value="5.10c">5.10c</option>
					<option value="5.10d">5.10d</option>
					
					<option value="5.11">5.11</option>
					<option value="5.11a">5.11a</option>
					<option value="5.11b">5.11b</option>
					<option value="5.11c">5.11c</option>
					<option value="5.11d">5.11d</option>
					
					<option value="5.12">5.12</option>
					<option value="5.12a">5.12a</option>
					<option value="5.12b">5.12b</option>
					<option value="5.12c">5.12c</option>
					<option value="5.12d">5.12d</option>
					
					<option value="5.13">5.13</option>
					<option value="5.13a">5.13a</option>
					<option value="5.13b">5.13b</option>
					<option value="5.13c">5.13c</option>
					<option value="5.13d">5.13d</option>

					<option value="5.14">5.14</option>
					<option value="5.14a">5.14a</option>
					<option value="5.14b">5.14b</option>
					<option value="5.14c">5.14c</option>
					<option value="5.14d">5.14d</option>

				</select>
			</div>
		</div>
		
<!-- ///////////////////////////////////////////// ROUTE STYLE ////////////////////////////////////////////////////////////// -->
		
		<fieldset class="row mb-3">
			<legend class="col-form-label col-sm-2 pt-0">Type</legend>
			<div class="col-sm-10">
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="routeStyle" id="routeStyle" value="Sport" checked> 
					<label class="form-check-label" for="routeStyle"> Sport </label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="routeStyle" id="routeStyle" value="Trad"> 
					<label class="form-check-label" for="routeStyle"> Trad </label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="routeStyle" id="routeStyle" value="Boulder"> 
					<label class="form-check-label" for="routeStyle"> Boulder </label>
				</div>
			</div>
		</fieldset>

<!-- ///////////////////////////////////////////// PITCHES ////////////////////////////////////////////////////////////// -->
		
		<div class="row mb-3">
			<label for="pitches" class="col-sm-2 col-form-label">Pitches</label>
			<div class="col-sm-10">
				<input type="number" min="0" max="50" class="form-control" id="pitches" name="pitches" value="0" required>
			</div>
		</div>
		
<!-- ///////////////////////////////////////////// DESCRIPTION ////////////////////////////////////////////////////////////// -->
		
		<div class="row mb-3">
  				<label for="description" class="col-sm-2 col-form-label">Description</label>
  			<div class="col-sm-10">
  			
  				<textarea class="form-control" name="description" id="description" rows="4"></textarea>
  				
  			</div>
		</div>
		
<!-- ///////////////////////////////////////////// STATE ABBREVIATION ////////////////////////////////////////////////////////////// -->

		<div class="row mb-3">
			<label for="stateAbbreviation" class="col-sm-2 col-form-label">State</label>
			<div class="col-sm-10">
			
				<select class="form-select" name="stateAbbreviation" id="stateAbbreviation" aria-label=".form-select-lg example">
					<option selected>Select a State</option>
					<option value="AL">Alabama</option><option value="AK">Alaska</option><option value="AZ">Arizona</option>
					<option value="AR">Arkansas</option><option value="CA">California</option><option value="CO">Colorado</option>
					<option value="CT">Connecticut</option><option value="DE">Delaware</option>
					<option value="DC">District Of Columbia</option><option value="FL">Florida</option><option value="GA">Georgia</option>
					<option value="HI">Hawaii</option><option value="ID">Idaho</option><option value="IL">Illinois</option><option value="IN">Indiana</option>
					<option value="IA">Iowa</option><option value="KS">Kansas</option><option value="KY">Kentucky</option><option value="LA">Louisiana</option>
					<option value="ME">Maine</option><option value="MD">Maryland</option><option value="MA">Massachusetts</option>
					<option value="MI">Michigan</option><option value="MN">Minnesota</option><option value="MS">Mississippi</option><option value="MO">Missouri</option>
					<option value="MT">Montana</option><option value="NE">Nebraska</option><option value="NV">Nevada</option><option value="NH">New Hampshire</option>
					<option value="NJ">New Jersey</option><option value="NM">New Mexico</option><option value="NY">New York</option><option value="NC">North Carolina</option>
					<option value="ND">North Dakota</option><option value="OH">Ohio</option><option value="OK">Oklahoma</option><option value="OR">Oregon</option>
					<option value="PA">Pennsylvania</option><option value="RI">Rhode Island</option><option value="SC">South Carolina</option><option value="SD">South Dakota</option>
					<option value="TN">Tennessee</option><option value="TX">Texas</option><option value="UT">Utah</option><option value="VT">Vermont</option>
					<option value="VA">Virginia</option><option value="WA">Washington</option><option value="WV">West Virginia</option>
					<option value="WI">Wisconsin</option><option value="WY">Wyoming</option>			

				</select>
				
			</div>
		</div>
		
<!-- ///////////////////////////////////////////// AREA NAME ////////////////////////////////////////////////////////////// -->

		<div class="row mb-3">
			<label for="areaName" class="col-sm-2 col-form-label">Area Name</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="areaName" name="areaName">
			</div>
		</div>

<!-- ///////////////////////////////////////////// AREA NAME 2 ////////////////////////////////////////////////////////////// -->

		<div class="row mb-3">
			<label for="areaName2" class="col-sm-2 col-form-label">Area Name 2</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="areaName2" name="areaName2">
			</div>
		</div>
		
<!-- ///////////////////////////////////////////// CRAG NAME ////////////////////////////////////////////////////////////// -->

		<div class="row mb-3">
			<label for="cragName" class="col-sm-2 col-form-label">Crag Name</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="cragName" name="cragName">
			</div>
		</div>
	
<!-- ///////////////////////////////////////////// AREA LATITUDE ////////////////////////////////////////////////////////////// -->

		<div class="row mb-3">
			<label for="areaLatitude" class="col-sm-2 col-form-label">Latitude</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="areaLatitude" name="areaLatitude" value="0.00" required>
			</div>
		</div>
	
<!-- ///////////////////////////////////////////// AREA LONGITUDE ////////////////////////////////////////////////////////////// -->

		<div class="row mb-3">
			<label for="areaLongitude" class="col-sm-2 col-form-label">Longitude</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="areaLongitude" name="areaLongitude" value="0.00" required>
			</div>
		</div>
	
<!-- ///////////////////////////////////////////// TICKED ////////////////////////////////////////////////////////////// -->

		<fieldset class="row mb-3">
			<legend class="col-form-label col-sm-2 pt-0">Tick</legend>
			<div class="col-sm-10">
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="ticked" id="ticked" value="false" checked> 
					<label class="form-check-label" for="ticked"> To Do </label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="ticked" id="ticked" value="true"> 
					<label class="form-check-label" for="ticked"> Completed </label>
				</div>
			</div>
		</fieldset>
		
<!-- ///////////////////////////////////////////// STARS ////////////////////////////////////////////////////////////// -->	

		<div class="row mb-3">
			<label for="stars" class="col-sm-2 col-form-label">Stars</label>
			<div class="col-sm-10">
				<input type="number" min="0" max="5" class="form-control" id="stars" name="stars" value="0" required>
			</div>
		</div>

<!-- ///////////////////////////////////////////// DATE CLIMBED ////////////////////////////////////////////////////////////// -->

 		<div class="row mb-3">
			<label for="dateClimbed" class="col-sm-2 col-form-label">Date Climbed</label>
			<div class="col-sm-10">
				<input type="date" class="form-control" id="dateClimbed" name="dateClimbed">
			</div>
		</div> 

<!-- ///////////////////////////////////////////// SUBMIT ////////////////////////////////////////////////////////////// -->

		<div class="row mb-3">	
				<button type="submit" class="btn btn-outline-dark">Add Climb</button>
		</div>

	</form>
</div>
</div>
</div>
</div>
</body>
</html>