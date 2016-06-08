<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="_styles.jsp"></jsp:include>

<title>${movie.title}</title>
</head>
<body>
<jsp:include page="_navbar.jsp"></jsp:include>
<div class="container-fluid">
	<c:choose>
		<c:when test="${!empty(movie)}">


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
					<form action="addActor.do" method="GET">
								<input type="hidden" name="name" value="${movie.title}">
								<input id="submit" type="submit" value="Add Actor" class="btn btn-danger" />
							</form></td>

				</table>

			</div>
		</div>
		</c:when>
		<c:otherwise>
			<h1>Movie Not Found. Try Again</h1>
			<a href="index.html">Click Here</a>
		</c:otherwise>
	</c:choose>
	</div>
</body>
</html>