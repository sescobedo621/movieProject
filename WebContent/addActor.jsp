<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<title>Insert title here</title>
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
	<h1>${movie.title}</h1>

	<img alt="${movie.title }"
		src="https://upload.wikimedia.org/wikipedia${movie.picture }" />
	<section>
	<div id="movie">
		<table>
			<tr>
				<th>Year:</th>
				<td>${movie.yearMade}</td>
			</tr>
			<tr>
				<th>Director:</th>
				<td>${movie.director.firstName}</td>
				<td>${movie.director.lastName}</td>
			</tr>
			<tr>
				<th>Genre:</th>
				<c:forEach var="genre" items="${movie.genre}">
					<td>${genre}</td>
				</c:forEach>
			</tr>
		</table>
	</div>
	<br>
	<div id="actors">
		<table>
			<tr>
				<th colspan="2">Actors</th>
			</tr>
			<c:forEach var="actor" items="${movie.actors}">
				<tr>
					<td>${actor.firstName }</td>
					<td>${actor.lastName }</td>
					<td><form action="deleteActor.do" method="POST">
							<input type="hidden" name="lastName" value="${actor.lastName}" />
							<input type="hidden" name="firstName" value="${actor.firstName}" />
							<input type="hidden" name="title" value="${movie.title }" /> <input
								id="submit" type="submit" value="Delete Actor" />
						</form></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	</section>
	<form:form action="addActor.do" modelAttribute="actor">
	<p>
		<input type="hidden" name="title" value="${movie.title}" />
		First Name: <form:input path="firstName" type="text" name="firstName" size="25"/>
		<form:errors path="firstName" />
		Last Name: <form:input path="lastName" type="text" name="lastName" size="25" /></p>
		<form:errors path="lastName" />
		<p>Birth Year: <input type="text" name="birthYear" size="10" />
		Death Year: <input type="text" name="deathYear"  size="10"/></p>
		<input id="submit" type="submit" name="Add Actor" />
	</form:form>
</body>
</html>