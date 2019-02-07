<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>JSP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		String nombre = request.getParameter("nombre");
		String password = request.getParameter("password");
		if (nombre != null && nombre.equals("admin") && password != null && password.equals("admin")) {
			// Credencial valido, lo guardo en sesión
			request.getSession().setAttribute("usuario", "admin");
			response.sendRedirect("admin.jsp");
		} else {
			// Credencial invalido, lo elimino de sesion (opcional)
			request.getSession().setAttribute("usuario", null);
		}
	%>


	<!-- Contenido -->
	<div class="container" id="contenedor-principal">
		<h2>Identificación de usuario</h2>
		<form class="form-horizontal" method="post" action="login.jsp">
			<div class="form-group">
				<label class="control-label col-sm-2" for="nombre">Nombre:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="nombre"
						required="true" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="password">Password:</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" name="password"
						required="true" />
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">Agregar</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>