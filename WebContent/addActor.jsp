<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
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
			</table>
			<br>
			<table>
				<tr>
					<th colspan="2">Actors</th>
				</tr>
				<c:forEach var="actor" items="${movie.actors}">
					<tr>
						<td>${actor.firstName }</td>
						<td>${actor.lastName }</td>
					</tr>
				</c:forEach>
			</table>
		<form:form action="addActor.do" modelAttribute="actor">
		<input type="hidden" name="title" value="${movie.title}"/>
		First Name:<form:input path="firstName" type="text" name="firstName"/>
			<form:errors path="firstName"/>
		Last Name: <form:input path="lastName" type="text" name="lastName"/><form:errors path="lastName"/><br>
		Birth Year: <input type="text" name = "birthYear"/>
		Death Year: <input type="text" name="deathYear"/>
		<input type="submit" name="Add Actor"/>
		</form:form>
</body>
</html>