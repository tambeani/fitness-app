<!DOCTYPE html>
<html>
<head>
<title>pick-me-up</title>
<!-- Include Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
/* Custom CSS to center and shorten text fields */
.custom-form {
	max-width: 400px;
	margin: 0 auto;
	margin-top: 100px;
}

.custom-form .form-group input[type="text"], .custom-form .form-group input[type="password"]
	{
	text-align: center;
	max-width: 100px;
	margin: 0 auto;
}

/* Custom CSS for navbar */
.navbar-custom {
	background-color: #FFFFFF;
}
</style>

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light navbar-custom">
		<a class="navbar-brand brand-text" href="#">pick me up!</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link"
					href="/pickmeup">Home <span class="sr-only">(current)</span>
				</a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">

				<div class="card">
					<div class="card-header">
						<h2 class="text-center">Login</h2>
					</div>
					<div class="card-body">
						<form method="post" role="form" action="/login-process"
							class="form-horizontal">
							<div class="form-group mb-3">
								<label class="control-label"> Email</label> <input type="text"
									id="username" name="username" class="form-control"
									placeholder="Enter email address" />
							</div>

							<div class="form-group mb-3">
								<label class="control-label"> Password</label> <input
									type="password" id="password" name="password"
									class="form-control" placeholder="Enter password" />
							</div>
							<div class="form-group mb-3">
								<button type="submit" class="btn btn-primary">Submit</button>
								<span> Not registered ? <a href="/register">Register/Signup
										here</a>
								</span>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
