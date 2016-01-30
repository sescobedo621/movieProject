<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Movie</title>
</head>
<body>
	<form:form action="NewMovie.do" modelAttribute="movie">
		Title:<form:input path="title" type="text" name="title" />
		<form:errors path="title"/>
		<br> Year Made:<form:input path="yearMade"
			type="text" name="yearMade" /><form:errors path="yearMade"/> <br>Genre:<input type="checkbox"
			name="genre" value="Action" />Action<input type="checkbox"
			name="genre" value="Adventure" />Adventure<br>
		<input type="checkbox" name="genre" value="Comedy" />Comedy<input
			type="checkbox" name="genre" value="Drama" />Drama<br>
		<input type="checkbox" name="genre" value="Romance">Romance<input
			type="checkbox" name="genre" value="Sci-Fi" />Sci-Fi<br> <input
			type="submit" value="Submit" />

	</form:form>
</body>
</html>