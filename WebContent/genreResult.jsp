<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="_styles.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Movies List</title>
</head>

<body>
<jsp:include page="_navbar.jsp"></jsp:include>
<div class="container-fluid"id="movieList">
	<table class="table">
	<thead>
		<tr>
			<th>Poster</th>
			<th>Title</th>
			<th>Year</th>
			<th>Director</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="movie" items="${genres}">
			<tr>
				<td><img alt="${movie.title }" src="https://upload.wikimedia.org/wikipedia${movie.picture }" class="img-responsive img-thumbnail" width="100px" /></td>
				<td><a href="GetMovie.do?name=${movie.title}">${movie.title}</a></td>
				<td>${movie.yearMade}</td>
				<td>${movie.director.firstName} ${movie.director.lastName }</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>