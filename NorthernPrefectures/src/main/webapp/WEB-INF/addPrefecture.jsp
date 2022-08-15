<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Prefecture</title>
</head>
<body>

	<div class="container-fluid">
		<div class="text-center">
			<h1>ADD A PREFECTURE INTO DATABASE</h1>
		</div>
		<form action="add.do" method="POST">
			<div class="form-group">
				<label for="name">Name</label> <input type="text"
					class="form-control" name="name" id="name" required
					aria-describedby="description"
					placeholder="Enter name of prefecture...">
			</div>
			<div class="form-group">
				<label for="capital">Last Name of Capital</label> <input type="text"
					class="form-control" name="capital" id="capital" required
					aria-describedby="description"
					placeholder="Enter name of capital...">
			</div>
			<div class="form-group">
				<label for="averageSnowfall">Yearly Average Snowfall</label> <input
					type="text" class="form-control" name="averageSnowfall"
					id="averageSnowfall" required aria-describedby="description"
					placeholder="Enter yearly average snowfall...">
			</div>
			<div class="form-group">
				<label for="borderWater">Bordering Water Body</label> <input
					type="text" class="form-control" name="borderWater"
					id="borderWater" required aria-describedby="description"
					placeholder="Enter bordering body of water...">
			</div>
			<div class="form-group">
				<label for="population">Prefectural Population</label> <input
					type="text" class="form-control" name="population" id="population"
					required aria-describedby="description"
					placeholder="Enter prefecture's population...">
			</div>



			<div class="text-center mt-3">
				<button type="submit" class="btn btn-primary">Add
					Prefecture</button>
			</div>
		</form>

	</div>

	<c:choose>
		<c:when test="${empty name}">

		</c:when>
		<c:otherwise>
			<c:choose>
				<c:when test="${empty prefectureAdded }">
					<p>No actor added</p>
				</c:when>
				<c:otherwise>
					<p>Save successfully</p>
				</c:otherwise>
			</c:choose>
		</c:otherwise>
	</c:choose>


</body>
</html>