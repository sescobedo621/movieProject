<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Movies</title>
</head>

<body>
	<table>
		<tr>
			<th>AFI Rank</th>
			<th>Title</th>
			<th>Year</th>
		</tr>
		<c:forEach var="movie" items="${genres}">
			<tr>
				<td>${movie.afiNum}</td>
				<td><a href="editMovie.do?name=${movie.title}">${movie.title}</a></td>
				<td>${movie.yearMade}</td>
				<td><a href="deleteMovie.do?name=${movie.title}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>