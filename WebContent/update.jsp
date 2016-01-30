<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Movie</title>
</head>
<body>
	<form action="updateMovie.do" modelAttribute="movie">
	<input type="hidden" name="afiNum" value="${movie.afiNum}">
	<br>
	<input  path="title" type="text" name="title" value="${movie.title}"><br>
	<input type= "text" name="yearMade" value="${movie.yearMade}" size="10"><br>
	<input type="text" name="director.firstName" value="${movie.director.firstName}"/>
	<input type="text" name="director.lastName" value="${movie.director.lastName}"/><br>
	<input type="submit" value="Update"/>
	</form> 
</body>
</html>