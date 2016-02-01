<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<title>Add Movie</title>
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
	<div id="form">
		<form:form action="NewMovie.do" modelAttribute="movie">
			<p>
				Title:
				<form:input path="title" type="text" name="title" size="50" />
				<form:errors path="title" />
				Year Made:
				<form:input path="yearMade" type="text" name="yearMade" size="10" />
				<form:errors path="yearMade" />
			</p>
			<p>Genre:</p>
			<ul>
				<li><input class="checkbox" type="checkbox" name="genre" value="Action" />Action</li>
				<li><input class="checkbox" type="checkbox" name="genre" value="Adventure" />Adventure</li>
				<li><input class="checkbox" type="checkbox" name="genre" value="Comedy" />Comedy</li>
				<li><input class="checkbox" type="checkbox" name="genre" value="Drama" />Drama</li>
				<li><input class="checkbox" type="checkbox" name="genre" value="Romance">Romance</li>
				<li><input class="checkbox" type="checkbox" name="genre" value="Sci-Fi" />Sci-Fi</li>
			</ul>
			<p><input id="submit" type="submit" value="Submit" /></p>
		</form:form>
	</div>
</body>
</html>