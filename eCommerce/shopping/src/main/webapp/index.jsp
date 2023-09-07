<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register here!</title>

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
	background-color: #333;
	color: #fff;
	font-family: 'Poppins', sans-serif;
	text-align: center;
}

.card {
	background-color: #444;
	border: none;
}

.card-header {
	background-color: #007BFF;
	color: #fff;
	border: none;
	padding: 10px;
}

.card-title {
	font-size: 28px;
	font-family: 'Poppins', sans-serif;
}

.form-group {
	margin-bottom: 10px;
}

label {
	color: #fff;
	font-weight: bold;
}

.form-control {
	background-color: #555;
	color: #fff;
	border: none;
}

.btn-primary {
	background-color: #007BFF;
	border: none;
}

.btn-primary:hover {
	background-color: #0056b3;
}

#login {
	margin-top: 140px;
	border-radious: 5%;
}

#reg {
	margin-top: 80px
}
</style>
</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<!-- Registration Form -->
			<div class="col-md-5" id="reg">
				<form action="Register" method="post">
					<div class="card">
						<div class="card-header">
							<h2 class="card-title">Registration</h2>
						</div>
						<div class="card-body">
							<div class="form-group">
								<label for="name">Username</label> <input type="text"
									class="form-control" id="name" name="username" required>
							</div>
							<div class="form-group">
								<label for="email">Email</label> <input type="email"
									class="form-control" id="email" name="email" required>
							</div>
							<div class="form-group">
								<label for="mobile">Mobile</label> <input type="tel"
									class="form-control" id="mobile" name="mobile" required>
							</div>

							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									class="form-control" id="mobile" name="password" required>
							</div>

							<button type="submit" class="btn btn-primary btn-block">Register</button>
						</div>
					</div>
				</form>
			</div>

			<!-- Login Form -->
			<div class="col-md-4" id="login">
				<form action="Login" method="post">
					<div class="card">
						<div class="card-header">
							<h2 class="card-title">Login</h2>
						</div>
						<div class="card-body">
							<div class="form-group">
								<label for="username">Mobile</label> <input type="tel"
									class="form-control" id="username" name="mobile" required>
							</div>
							<div class="form-group">
								<label for="signin_password">Password</label> <input
									type="password" class="form-control" id="signin_password"
									name="password" required>
							</div>
							<button type="submit" class="btn btn-primary btn-block">Log
								In</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Include Bootstrap JS (Optional) -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
