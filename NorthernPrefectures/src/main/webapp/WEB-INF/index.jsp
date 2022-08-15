<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Northern Prefectures</title>
</head>
<body>

	<h1>Database of Northern Prefectures</h1>

	<form action="getPrefecture.do" method="GET">
		Prefecture ID: <input type="text" name="pID" /> <input type="submit"
			value="Show Prefecture" />

		<c:choose>
			<c:when test="${not empty prefectures }">
				<table>
					<thead>
						<tr>
							<th>ID</th>
							<th>Name</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="p" items="${prefectures }">
							<tr>
								<td>${p.id }</td>
								<td><a href="getPrefecture.do?pID=${p.id }">${p.name }</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:when>
			<c:otherwise>
				<h3>No prefectures found</h3>
			</c:otherwise>
		</c:choose>
	</form>
	<div>
		<a href="add.do" class="btn btn-info" role="button">Add
			a Prefecture</a>
	</div>
	<div>
	<a href="updatePrefecture.do" class="btn btn-info" role="button">Update
			a Prefecture</a>
	</div>


</body>
</html>