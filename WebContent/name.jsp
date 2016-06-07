<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="_styles.jsp"></jsp:include>
<title>Search By Name</title>
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
	<form action="GetMovie.do" method="GET">
		Enter Movie Title: <input type="text" name="name" /> <input id="submit" type="submit"
			value="Submit" />

	</form>
</body>
</html>