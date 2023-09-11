<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit Product DB</title>

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
	margin-top: 50px
}
</style>
</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<!-- Registration Form -->
			<div class="col-md-5" id="reg">
				<form action="addproduct" method="post">
					<div class="card">
						<div class="card-header">
							<h2 class="card-title">Add Product</h2>
						</div>
						<div class="card-body">
							<div class="form-group">
								<label for="name">Product Name</label> <input type="text"
									class="form-control" id="name" name="name" required>
							</div>
							<div class="form-group"></div>
							<div class="form-group">
								<label for="mobile">Product Description</label> <input
									type="text" class="form-control" id="mobile" name="desc"
									required>
							</div>
							<div class="form-group">
								<label for="email">Quantity</label> <input type="number"
									class="form-control" id="email" name="quantity" required>
							</div>
							<div class="form-group">
								<label for="email">Price</label> <input type="number"
									class="form-control" id="password" name="price" required>
							</div>
							<div class="form-group">
								<label for="signin_password"> Product Image</label> <input
									type="text" class="form-control" id="password"
									name="image" required>
							</div>
							<div class="form-group">
								<label for="signin_password"> Category</label> <input
									type="text" class="form-control" id="password"
									name="category" required>
							</div>
							<button type="submit" class="btn btn-primary btn-block">Confirm</button>
						</div>
					</div>
				</form>
			</div>

			<!-- Remove Form -->
			<div class="col-md-4" id="login">
				<form action="removepro" method="post">
					<div class="card">
						<div class="card-header">
							<h2 class="card-title">Remove Product</h2>
						</div>
						<div class="card-body">
							<div class="form-group">
								<label for="username">Product Name</label> <input type="text"
									class="form-control" id="username" name="name" required>
							</div>
							<div class="form-group">
								<label for="signin_password"> Product ID</label> <input
									type="number" class="form-control" id="password"
									name="productid" required>
							</div>
							
							<button type="submit" class="btn btn-primary btn-block">Confirm</button>
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
