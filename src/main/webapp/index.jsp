<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<div class="container mt-4 col-lg-4">
	<div class="card col-sm-10">
		<div class="card body">
			<form class="form-sign" action="ValidarServlet" method="POST">
				<div class="form-group text-center mt-4">
					<h3>Login</h3>
					<img alt="70" width="180" src="img/logo.jpg"/>
					<br>
					<label>Bienvenidos al Sistema</label>
				</div>
				<div class="form-group">
					<label class="form-label">Usuario:</label>
					<input type="text" name="txtUser" class="form-control">
				</div>
				<div class="form-group">
					<label>Password:</label>
					<input type="password" name="txtPass" class="form-control">
				</div>
				<input type="submit" name="accion" value="Ingresar" class="btn btn-primary btn block">
			</form>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.1.slim.min.js" integrity="sha256-kmHvs0B+OpCW5GVHUNjv9rOmY0IvSIRcf7zGUDTDQM8=" crossorigin="anonymous"></script>
</body>
</html>