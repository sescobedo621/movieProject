<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="_styles.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Movies</title>
</head>
<body>
<jsp:include page="_navbar.jsp"></jsp:include>
	<div class="container-fluid" id="movieList">
	<table class="table">
		<tr>
			<th><h2>Poster</h2></th>
			<th><h2>Title</h2></th>
			<th><h2>Year</h2></th>
			<th><h2>Director</h2></th>
			<th> </th>
		</tr>
		<c:forEach var="movie" items="${movies}">
			<tr>
				<td><img alt="${movie.title }" src="https://upload.wikimedia.org/wikipedia${movie.picture }" class="img-thumbnail" width="100px"/></td>
				<td><a href="editMovie.do?name=${movie.title}"><h4>${movie.title}</h4></a></td>
				<td><h4>${movie.yearMade}</h4></td>
				<td><h4>${movie.director.firstName} ${movie.director.lastName }</h4></td>
				<td><form action="deleteMovie.do" method="POST">
						<input  type="hidden" name="title" value="${movie.title}" /> 
						<input id="submit" type="submit" value="Delete" class="btn btn-danger" />
					</form></td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>