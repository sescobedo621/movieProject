<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="_styles.jsp"></jsp:include>
<title>Movies</title>
</head>
<body>
<jsp:include page="_navbar.jsp"></jsp:include>
<div class="container-fluid genre">
<h1>Pick A Genre:</h1>
	<div class="row">
		<div class="col-xs-4 col-sm-4 col-md-4">
			<a href="GetGenre.do?genre=Adventure" class="thumbnail"><img
					alt="Adventure"
					src="imgs/adventure.jpg" class="img-responsive img-thumbnail"  /><h3>Adventure</h3></a>
					
		</div>
		<div class="col-xs-4 col-sm-4 col-md-4">
			<a href="GetGenre.do?genre=Action"class="thumbnail"><img alt="Action"
					src="imgs/action.jpg" class="img-responsive img-thumbnail" /><h3>Action</h3></a>
		</div>
		<div class="col-xs-4 col-sm-4 col-md-4">
			<a href="GetGenre.do?genre=Comedy" class="thumbnail"><img alt="Comedy"
					src="imgs/comedy.jpg" class="img-responsive img-thumbnail" /><h3>Comedy</h3></a>
					
		</div>
	</div>
	<div class="row">
			<div class="col-xs-4 col-sm-4 col-md-4">
			<a href="GetGenre.do?genre=Drama"class="thumbnail"><img alt="Drama"
					src="imgs/drama.jpg" class="img-responsive img-thumbnail"/><h3>Drama</h3></a>
			</div>
			<div class="col-xs-4 col-sm-4 col-md-4">
				<a href="GetGenre.do?genre=Romance" class="thumbnail" ><img alt="Romance" src="imgs/romance.jpg" class="img-responsive img-thumbnail"/><h3>Romance</h3></a>
			</div>
			<div class="col-xs-4 col-sm-4 col-md-4">
			<a href="GetGenre.do?genre=Sci-Fi" class="thumbnail"><img alt="Sci-Fi" src="imgs/scifi.jpg" class="img-responsive img-thumbnail"><h3>Sci-Fi</h3></a>
			</div>
	</div>
	<div class="row">
		<div class="col-xs-4 col-sm-4 col-md-4" >
			<a href="GetGenre.do?genre=Crime" class="thumbnail"><img alt="Crime" src="imgs/crime.jpg" class="img-responsive img-thumbnail"/><h3>Crime</h3></a>
		</div>
		<div class="col-xs-4 col-sm-4 col-md-4" >
			<a href="GetGenre.do?genre=Family" class="thumbnail"><img alt="Family" src="imgs/family.jpg" class="img-responsive img-thumbnail"><h3>Family</h3></a>
		</div>
		<div class="col-xs-4 col-sm-4 col-md-4">
			<a href="GetGenre.do?genre=Musical" class="thumbnail"><img alt="Musical" src="imgs/musical.jpg" class="img-responsive img-thumbnail"><h3>Musical</h3></a>
		</div>
	</div>
</div>


</body>
</html>