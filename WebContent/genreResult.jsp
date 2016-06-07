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
			<th><h2>Poster</h2></th>
			<th><h2>Title</h2></th>
			<th><h2>Year</h2></th>
			<th><h2>Director</h2></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="movie" items="${genres}">
			<tr>
				<td><img alt="${movie.title }" src="https://upload.wikimedia.org/wikipedia${movie.picture }" class="img-thumbnail" width="100px" /></td>
				<td><h4><a href="GetMovie.do?name=${movie.title}">${movie.title}</a></h4></td>
				<td><h4>${movie.yearMade}</h4></td>
				<td><h4>${movie.director.firstName} ${movie.director.lastName }</h4></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>