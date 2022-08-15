<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Prefecture Details</title>
</head>
<body>
<ul>
    <li> <a href="index.do">Home</a>  </li>
</ul>


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
		Prefecture</a>
	<a href="deletePrefecture.do?id=${pref.id }" class="btn btn-info"
		role="button">Delete Prefecture</a>
</body>
</html>