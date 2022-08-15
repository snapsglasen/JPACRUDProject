<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Prefecture Details</title>
</head>
<body>

	<div>
		<h1>Prefecture Details</h1>
		<h5>${pref.name}</h5>
		<ul>
			<li>${pref.capital }</li>
			<li>${pref.averageSnowfall }</li>
			<li>${pref.borderWater }</li>
			<li>${pref.population }</li>
		</ul>
	</div>
	<a href="updated.do?id=${pref.id }" class="btn btn-info" role="button">Update
			a Prefecture</a>
</body>
</html>