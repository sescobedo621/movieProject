<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="_styles.jsp"></jsp:include>
<title>${movie.title} | Add Actor</title>
</head>
<body>
	<jsp:include page="_navbar.jsp"></jsp:include>
	<div class="container-fluid">

			<h1 class="page-header">${movie.title}</h1>
			<div class="row">
			<div class="col-md-4">
			<img alt="${movie.title }"
				src="https://upload.wikimedia.org/wikipedia${movie.picture }" class="img-responsive" height="250px" />
			</div>
			<div class="col-md-4">
			<div>
				<h2>Year</h2>
				<h4>${movie.yearMade}</h4>
				<h2>Director</h2>
				<h4>${movie.director.firstName} ${movie.director.lastName}</h4>
						<h2>Genre</h2>
						<ul>
						<c:forEach var="genre" items="${movie.genre}">
							<li><h4>${genre}</h4></li>
						</c:forEach>
						</ul>
				</div>
			</div>
			<div class="col-md-4">
				
					
						<h2>Actors</h2>
					<c:forEach var="actor" items="${movie.actors}">

							<h4>${actor.firstName } ${actor.lastName } <form action="deleteActor.do" method="POST">
									<input type="hidden" name="lastName" value="${actor.lastName}" />
									<input type="hidden" name="firstName"
										value="${actor.firstName}" /> <input type="hidden"
										name="title" value="${movie.title }" /> <input id="submit"
										type="submit" value="Delete Actor"  class="btn btn-danger"/>
								</form></h4>
							
					</c:forEach>

			</div>
		</div>
<div class="row">
	<form:form action="addActor.do" modelAttribute="actor">
	<div class="form-group">
		<input type="hidden" name="title" value="${movie.title}" />
		<form:input path="firstName" type="text" name="firstName" class="form-control" placeholder="First Name"/>
		<form:errors path="firstName" />
		</div>
		<div class="form-group">
		<form:input path="lastName" type="text" name="lastName" class="form-control" placeholder="Last Name" />
		<form:errors path="lastName" />
		</div>
		<div class="form-group">
		<input type="text" name="birthYear" placeholder="Birth Year" class="form-control" />
		</div>
		<div class="form-group">
		<input type="text" name="deathYear" placeholder="Death Year" class="form-control"/>
		</div>
		<input id="submit" type="submit" name="Add Actor" class="btn btn-danger" />
	</form:form>
	</div>
	</div>
</body>
</html>