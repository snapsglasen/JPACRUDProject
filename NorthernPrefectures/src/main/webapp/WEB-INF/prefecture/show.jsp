<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Prefecture Details</title>
</head>
<body>

<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/WEB-INF/index.jsp">Home</a></li>

				</ul>
			</div>

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