<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Movie Result</title>
</head>
<body>
	<c:choose>
		<c:when test="${!empty(movie)}">
			<h1>${movie.title}</h1>
			<table>
				<tr>
					<th>Year</th>
					<td>${movie.yearMade}</td>
				</tr>
				<tr>
					<th>Director</th>
					<td>${movie.director.firstName}</td>
					<td>${movie.director.lastName}</td>
				</tr>
				<tr>
					<th>Genre</th>
					<c:forEach var="genre" items="${movie.genre}">
						<td>${genre}</td>
					</c:forEach>
				</tr>
				<tr>
				<th>Actors</th>
				<c:forEach var="actor" items="${movie.actors}">
				<td>${actor.firstName }</td>
				<td>${actor.lastName },</td>
				</c:forEach>
				</tr>
			</table>
		</c:when>
		<c:otherwise>
			<h1>Movie Not Found. Try Again</h1>
			<a href="index.html">Click Here</a>
		</c:otherwise>
	</c:choose>
</body>
</html>