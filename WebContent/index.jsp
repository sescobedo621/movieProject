<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no">
<jsp:include page="_styles.jsp"></jsp:include>
<title>Movies</title>
</head>
<body>
<header>
<jsp:include page="_navbar.jsp"></jsp:include>
</header>
<section class="full-bg-img">
       <div class="view">
       <div class="mask rgba-black-light">
        <div class="container">
            <div class="verticalcenter text-center white-text">
                <h1>redCarpetClub</h1>
                <!--Call to action buttons-->
                <a href="#genre" class="btn btn-danger waves-effect waves-light">Search By Genre</a>
                <a href="GetGenre.do?all=AllMovies" class="btn btn-danger waves-effect waves-light">View All Movies</a>
            </div>
            </div>
            </div>
        </div>
    </section>
  <main>
<div class="container-fluid genre" id="genre">
<h1>Pick A Genre:</h1>
	<div class="row">
		<div class="col-sm-4 col-md-4">
			<a href="GetGenre.do?genre=Adventure" class="thumbnail"><img
					alt="Adventure"
					src="imgs/adventure.jpg" class="img-responsive img-thumbnail"  /><h3>Adventure</h3></a>
					
		</div>
		<div class="col-sm-4 col-md-4">
			<a href="GetGenre.do?genre=Action"class="thumbnail"><img alt="Action"
					src="imgs/action.jpg" class="img-responsive img-thumbnail" /><h3>Action</h3></a>
		</div>
		<div class="col-sm-4 col-md-4">
			<a href="GetGenre.do?genre=Comedy" class="thumbnail"><img alt="Comedy"
					src="imgs/comedy.jpg" class="img-responsive img-thumbnail" /><h3>Comedy</h3></a>
					
		</div>
	</div>
	<div class="row">
			<div class="col-sm-4 col-md-4">
			<a href="GetGenre.do?genre=Drama"class="thumbnail"><img alt="Drama"
					src="imgs/drama.jpg" class="img-responsive img-thumbnail"/><h3>Drama</h3></a>
			</div>
			<div class="col-sm-4 col-md-4">
				<a href="GetGenre.do?genre=Romance" class="thumbnail" ><img alt="Romance" src="imgs/romance.jpg" class="img-responsive img-thumbnail"/><h3>Romance</h3></a>
			</div>
			<div class="col-sm-4 col-md-4">
			<a href="GetGenre.do?genre=Sci-Fi" class="thumbnail"><img alt="Sci-Fi" src="imgs/scifi.jpg" class="img-responsive img-thumbnail"><h3>Sci-Fi</h3></a>
			</div>
	</div>
	<div class="row">
		<div class="col-md-4" >
			<a href="GetGenre.do?genre=Crime" class="thumbnail"><img alt="Crime" src="imgs/crime.jpg" class="img-responsive img-thumbnail"/><h3>Crime</h3></a>
		</div>
		<div class="col-md-4" >
			<a href="GetGenre.do?genre=Family" class="thumbnail"><img alt="Family" src="imgs/family.jpg" class="img-responsive img-thumbnail"><h3>Family</h3></a>
		</div>
		<div class="col-md-4">
			<a href="GetGenre.do?genre=Musical" class="thumbnail"><img alt="Musical" src="imgs/musical.jpg" class="img-responsive img-thumbnail"><h3>Musical</h3></a>
		</div>
	</div>
</div>
</main>

</body>
</html>