<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin-Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="modal.css">
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="admin_home">
	<div class="row">
    	<div class="col-sm-12">
        	<h1 class="admin_home_heading">ADMIN-HOME</h1>
         </div>
    </div>
        
	<div class="row">
		<div class="col-sm-4">
			<div class="alert alert-info">
  				<strong>Get In Touch</strong><br><br>
  				Form Details:<br><br>
  				<button type="button" class="btn btn-warning btn-lg"><a href="getInTouchDetails.jsp">Details</a></button>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<div class="alert alert-danger">
  				<strong>Volunteer's Applications</strong><br><br>
  				Form Details:<br><br>
  				<button type="button" class="btn btn-warning btn-lg"><a href="volunteersApplications.jsp">Details</a></button>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<div class="alert alert-primary">
  				<strong>Logout</strong><br><br>
  				<br><br>
  				<button type="button" class="btn btn-warning btn-lg"><a href="logout">Logout</a></button>
			</div>
		</div>
	</div>
	
	
	
</div>
</body>
</html>