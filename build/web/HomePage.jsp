<!DOCTYPE html>
<html>
<head>
    <title>Home Page</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<style>
    body {
    background-color: #009bff;
}
.outer-div
{
     padding: 100px;
}

.container-contact1-form-btn{
    padding: 70px;
}

.contact1-form-btn{
    background-color: #ff001900 ;
}
.btn-warning{
    margin-top: 10px;
}

</style>
</head>
<body>
    <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        if(session.getAttribute("username")==null){
            response.sendRedirect("index.html");
        }
        
        %>
    

<div class="outer-div">
<div class="container">
    <h3><center></center></h3>
<div class="row">
  <div class="col-sm-3">
    <div class="card">
    <img class="card-img-top" src="images/insert.JPG" alt="Insert here">
      <div class="card-body text-center">
        <h5 class="card-title">Insert</h5>
        <p class="card-text text-center">To Enroll New Student</p>
        <a href="Insert.jsp" class="btn btn-warning">Insert</a>
      </div>
    </div>
  </div>
  <div class="col-sm-3">
    <div class="card">
        <img class="card-img-top" src="images/update.JPG" alt="Update here">
      <div class="card-body text-center">
        <h5 class="card-title">Update</h5>
        <p class="card-text text-left">To Update Student Details</p>
        <a href="Update.jsp" class="btn btn-warning">Update</a>
      </div>
    </div>
  </div>
  <div class="col-sm-3">
    <div class="card">
    <img class="card-img-top" src="images/delete.JPG" alt="Delete here here">
      <div class="card-body text-center">
        <h5 class="card-title text-center">Delete</h5>
        <p class="card-text text-left">To Delete a Student Record</p>
        <a href="Delete.jsp" class="btn btn-warning text-right">Delete</a>
      </div>
    </div>
  </div>
   
  <div class="col-sm-3">
    <div class="card">
    <img class="card-img-top" src="images/display.JPG" alt="Display here">
      <div class="card-body text-center">
        <h5 class="card-title text-center">Display</h5>
        <p class="card-text text-left">To Display the Students List</p>
        <a href="Select" class="btn btn-warning text-right">Display</a>
      </div>
    </div>
  </div>
</div>
    
    <div class="container-contact1-form-btn">
        <form action="logout">
            <button class="contact1-form-btn" type='submit'>
						<span>
							Logout
							<i class="fa fa-long-arrow-right" aria-hidden="true"></i>
						</span>
					</button>
        </form>
				</div>
    
</div>
</div>






    

</body>
</html>