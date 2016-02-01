<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Movie</title>
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
	<form action="updateMovie.do" method="POST">
	<input type="hidden" name="afiNum" value="${movie.afiNum}">
	<p>Title: <input  type="text" name="title" value="${movie.title}">
	  <input type= "text" name="yearMade" value="${movie.yearMade}" size="10"></p>
	<p>Director: <input type="text" name="director.firstName" value="${movie.director.firstName}"/>
	<input type="text" name="director.lastName" value="${movie.director.lastName}"/></p>
	<input id="submit" type="submit" value="Update"/>
	</form> 
</body>
</html>