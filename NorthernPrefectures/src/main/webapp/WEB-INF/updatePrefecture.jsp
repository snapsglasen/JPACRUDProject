<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">
		<div class="text-center">
			
			<h1>UPDATE Prefecture</h1>
		</div>
		<form action="updatePref.do" method="POST">
			<input type="hidden" name="id"
				value="<c:out value= "${updatePref.id }"/>" />

			<div class="form-group">
				<label for="name">Name</label> <input type="text"
					class="form-control" name="name" id="desc" required
					aria-describedby="description" placeholder="Enter prefecture name"
					value="<c:out value="${updatePref.name }"/>">
			</div>
			<div class="form-group">
				<label for="capital">Capital</label> <input type="text"
					class="form-control" name="capital" id="desc" required
					aria-describedby="description" placeholder="Enter capital name"
					value="<c:out value="${updatePref.capital }"/>">
			</div>
			<div class="form-group">
				<label for="averageSnowfall">Average Yearly Snowfall</label> <input
					type="number" class="form-control" name="averageSnowfall" id="desc"
					required aria-describedby="description"
					placeholder="Enter yearly snowfall average in inches"
					value="<c:out value="${updatePref.capital }"/>">
			</div>
			<div class="form-group">
				<label for="borderWater">Bordering Water Body</label> <input
					type="text" class="form-control" name="borderWater" id="desc"
					required aria-describedby="description"
					placeholder="Enter bodering body of water"
					value="<c:out value="${updatePref.borderWater }"/>">
			</div>
			<div class="form-group">
				<label for="population">Prefecture's Population</label> <input
					type="number" class="form-control" name="population" id="desc"
					required aria-describedby="description"
					placeholder="Enter prefecture's population"
					value="<c:out value="${updatePref.population }"/>">
			</div>

			<div class="text-center mt-3">
				<button type="submit" id="btn" class="btn btn-primary">Update
					Prefecture</button>
			</div>
		</form>
	</div>
</body>
</html>