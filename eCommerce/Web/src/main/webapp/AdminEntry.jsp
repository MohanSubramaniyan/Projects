<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Authentication!</title>

<!-- Include Bootstrap CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Include Google Fonts for font style -->
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap"
	rel="stylesheet">

<style>
body {
	background-color: black; /* Changed background to white */
	color: #000; /* Changed text color to black */
	font-family: 'Poppins', sans-serif;
	text-align: center;
}

.card {
  background-color: #007BFF; /* Changed card background to blue */
  color: #fff;
  border: none;
  margin:0 auto;  /* Horizontally center the card within its container */
  text-align: center; 
  width:40%;/* Center text content inside the card */
}


.card-header {
	/* Changed card header background to darker blue */
	color: #fff;
	border: none;
}

.card-title {
	font-size: 28px;
	font-family: 'Poppins', sans-serif;
	background-color: black;
	padding: 10px;
}

.form-group {
	margin-bottom: 10px;
	margin-top: 5px;
}

label {
	color: #000; /* Changed label text color to black */
	font-weight: bold;
}

.form-control {
	background-color: #eee;
	/* Changed form control background to light gray */
	color: #000; /* Changed form control text color to black */
	border: none;
}

.btn-primary {
	background-color: black;
	border: none;
}

.btn-primary:hover {
	background-color: grey;
}

#login {
	margin-top: 140px;
	border-radius: 5%;
	/* Corrected the typo from 'border-radious' to 'border-radius' */
}

#reg {
	margin-top: 80px
}
</style>
</head>
<body>
	<div class="container">
		<!-- Admin Login Form -->
		<div  id="login">
			<form action="AdminEntry" method="post">
				<div class="card">
					<div class="card-header">
						<h2 class="card-title">Admin Authentication</h2>
					</div>
					<div class="card-body">
						<div class="form-group">
							<label for="username">Administrater ID</label> <input type="text"
								class="form-control" id="username" name="adminID" required>
						</div>
						<div class="form-group">
							<label for="signin_password">Password</label> <input
								type="password" class="form-control" id="password"
								name="password" required>
						</div>
						<button type="submit" class="btn btn-primary btn-block">Submit</button>
					</div>
				</div>
			</form>
		</div>
	</div>


	<!-- Include Bootstrap JS (Optional) -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
