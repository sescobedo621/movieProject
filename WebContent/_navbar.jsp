<meta name="viewport" content="width=device-width, user-scalable=no">
<nav class="navbar navbar-inverse" id="navBar">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.jsp">redCarpetClub</a>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
			<li><a href="GetGenre.do?all=AllMovies"> List All Movies</a></li>
			<li><a href="addMovie.do">Add Movie</a></li>
			<li><a href="editMovie.do">Edit Movie</a></li>
		</ul>
      <form class="navbar-form navbar-left" action="GetMovie.do" method="GET">
       <div class="form-group">
         <input type="text" name="name" class="form-control" placeholder="Movie Title"/>
    </div>
     <input id="submit" type="submit"  value="Submit" class="btn btn-danger"/>
  </form>
   <ul class="nav navbar-nav navbar-right">
        <li><a href="http://shelbyescobedo.com">Shelby Escobedo</a></li>

    </ul>
  </div>
  </div>
	</nav>