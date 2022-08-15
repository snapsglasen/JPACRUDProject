<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save Result</title>
</head>
<body>
<ul>
    <li> <a href="index.do">Home</a>  </li>
</ul>
	
	<div class="container-fluid text-center">
		<c:choose>
			<c:when test="${empty prefectureAdded }">
				<img src="sad.jpeg" />
				<p>No prefecture added</p>
			</c:when>
			<c:otherwise>
				<p style="font-size: 40px">Prefecture added successfully</p>
			</c:otherwise>
		</c:choose>
	</div>

</body>
</html>