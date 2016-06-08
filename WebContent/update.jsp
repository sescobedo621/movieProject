<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="_styles.jsp"></jsp:include>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update ${movie.title}</title>
</head>
<body>
<jsp:include page="_navbar.jsp"></jsp:include>
	<section class="full-bg-img">
       <div class="view">
       <div class="mask rgba-black-light">
        <div class="container">
            <div class="verticalcenter text-center white-text">
                <h1>redCarpetClub</h1>
                <!--Call to action buttons-->
                <a href="#update" class="btn btn-danger waves-effect waves-light">Update ${movie.title}</a>
            </div>
            </div>
            </div>
        </div>
    </section>
 <main>
<div class="container-fluid">
	<form action="updateMovie.do" method="POST" id="update">

	<input type="hidden" name="afiNum" value="${movie.afiNum}">
	<div class="form-group">
    <label for="title" class="col-sm-2 control-label">
				Title</label>
	<div class="col-sm-10">
	 <input  type="text" name="title" value="${movie.title}" class="form-control">
	 </div>
	 </div>
	 <div class="form-group">
	 <label for="yearMade" class="col-sm-2 control-label">Year Made</label>
    <div class="col-sm-10">
	  <input type= "text" name="yearMade" value="${movie.yearMade}" class="form-control">
	  </div>
	  </div>
	<div class="form-group">
    <label for="director" class="col-sm-2 control-label">Director</label>
    <div class="col-sm-5"> 
    <input type="text" name="director.firstName" value="${movie.director.firstName}"  class="form-control"/>
    </div>
    <div class="col-sm-5">
	<input type="text" name="director.lastName" value="${movie.director.lastName}"  class="form-control"/>
	</div>
	</div>
	<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
	<input id="submit" type="submit" value="Update" class="btn btn-danger"/>
	</div>
	</div>
	</form> 
</div>
</main>
</body>
</html>