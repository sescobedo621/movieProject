<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="_styles.jsp"></jsp:include>
<title>Add Movie</title>
</head>
<body>
	<jsp:include page="_navbar.jsp"></jsp:include>
	<div class="container-fluid">
	<div class="form">
		<form:form action="NewMovie.do" modelAttribute="movie">
	 <div class="form-group">
    <label for="title" class="col-sm-2 control-label">
				Title</label>
				<div class="col-sm-10">
				<form:input path="title" type="text" name="title" class="form-control" placeholder="Title" />
				<form:errors path="title" />
				</div>
				</div>
		 <div class="form-group">
    <label for="yearMade" class="col-sm-2 control-label">Year Made</label>
    <div class="col-sm-10">
				<form:input path="yearMade" type="text" name="yearMade" class="form-control" placeholder="Year Made" />
				<form:errors path="yearMade" />
	</div>
	</div>
	<div class="form-group">
	<label for="genre" class="col-sm-2 control-label">Genre</label>
	<div class="col-sm-10">
		<div class="row">
			<div class="col-sm-2">
				<label><input class="checkbox" type="checkbox" name="genre" value="Action" />Action</label>
			</div>
			<div class="col-sm-2">
				<label><input class="checkbox" type="checkbox" name="genre" value="Adventure"  />Adventure</label>
			</div>
			<div class="col-sm-2">
				<label><input class="checkbox" type="checkbox" name="genre" value="Comedy"  />Comedy</label>
			</div>
			<div class="col-sm-2">
				<label><input class="checkbox" type="checkbox" name="genre" value="Drama"  />Drama</label>
			</div>
			<div class="col-sm-2">
				<label><input class="checkbox" type="checkbox" name="genre" value="Romance" >Romance</label>
			</div>
			<div class="col-sm-2">
				<label><input class="checkbox" type="checkbox" name="genre" value="Sci-Fi" />Sci-Fi</label>
			</div>
			</div>
		</div>
	</div>
	</div>
			<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
			<input id="submit" type="submit" value="Submit"  class="btn btn-danger" />
		</form:form>
	</div>
	</div>
</body>
</html>