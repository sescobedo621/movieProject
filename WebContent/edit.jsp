<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Movies</title>
</head>
<body>
<div id="navBar">
		<ul>
			<li class="header"><a href="index.html">redCarpetClub</a></li>
			<li><a href="GetGenre.do?all=AllMovies"> List All Movies</a></li>
			<li><a href="name.html">Search By Name</a></li>
			<li><a href="addMovie.do">Add Movie</a></li>
			<li><a href="editMovie.do">Edit Movie</a></li>
		</ul>
	</div>
	<div id="movieList">
	<table>
		<tr>
			<th>Poster</th>
			<th>Title</th>
			<th>Year</th>
			<th>Director</th>
			<th> </th>
		</tr>
		<c:forEach var="movie" items="${movies}">
			<tr>
				<td><img alt="${movie.title }" src="https://upload.wikimedia.org/wikipedia${movie.picture }"/></td>
				<td><a href="editMovie.do?name=${movie.title}">${movie.title}</a></td>
				<td>${movie.yearMade}</td>
				<td>${movie.director.firstName} ${movie.director.lastName }</td>
				<td><form action="deleteMovie.do" method="POST">
						<input  type="hidden" name="title" value="${movie.title}" /> 
						<input id="submit" type="submit" value="Delete" />
					</form></td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>