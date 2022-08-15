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
	<ul>
		<li><a href="index.do">Home</a></li>
	</ul>

	<div>
		<h1>Prefecture Details</h1>
		<h5>${updatedPref.name}</h5>
		<ul>
			<li>${updatedPref.capital }</li>
			<li>${updatedPref.averageSnowfall }</li>
			<li>${updatedPref.borderWater }</li>
			<li>${updatedPref.population }</li>
		</ul>
	</div>

</body>
</html>