<%@page import="entity.Empleado"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>pagina principal</title>
</head>
<body>
	<% Empleado nomEmpleado = (Empleado) request.getAttribute("usuario"); %>
	<nav class="navbar navbar-expand-lg bg-info">
		<div class="container-fluid">
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a style = "margin-left: 10px; border: none" class="btn btn-outline-light" href="#">Home</a>
					</li>
					<li class="nav-item">
						<a style = "margin-left: 10px; border: none" class="btn btn-outline-light" href="ControladorServlet?accion=Producto" target="myFrame">Productos</a>
					</li>
					<li class="nav-item">
						<a style = "margin-left: 10px; border: none" class="btn btn-outline-light" href="#">Empleado</a>
					</li>
					<li class="nav-item">
						<a style = "margin-left: 10px; border: none" class="btn btn-outline-light" href="#">Clientes</a>
					</li>
					<li class="nav-item">
						<a style = "margin-left: 10px; border: none" class="btn btn-outline-light" href="#">Nueva Venta</a>
					</li>
				</ul>
				<div class="dropdown">
					<button style = "border: none" class="btn btn-outline-light dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
						<%=nomEmpleado.getNombres() %>
					</button>
					<div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">						
						<a class="dropdown-item" href="#">
							<img alt="70" width="180" src="img/login.png"/>
						</a>						
						<a class="dropdown-item" href="#"><%=nomEmpleado.getUsuario() %></a>						
						<a class="dropdown-item" href="#"><%=nomEmpleado.getUsuario() %>@gmail.com</a>
						<div class="dropdown-divider"></div>	
						<form action="ValidarServlet" method="POST">
							<button name="accion" value="Salir" class="dropdown-item" href="#">Salir</button>
						</form>				
					</div>
				</div>
			</div>
		</div>
	</nav>
	<div class="m-4" style="height: 655px">
		<iframe name="myFrame" style="height: 100%; width: 100%"></iframe>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.7.1.slim.min.js" integrity="sha256-kmHvs0B+OpCW5GVHUNjv9rOmY0IvSIRcf7zGUDTDQM8=" crossorigin="anonymous"></script>
</body>
</html>