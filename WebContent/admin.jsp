<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">

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
		String usuario = (String) request.getSession().getAttribute("usuario");
		System.out.println("Usuario en sesión: " + usuario);
		if (usuario == null || usuario.equals("admin") == false) {
			// No hay usuario o no es admin 
			response.sendRedirect("login.jsp");
		}
	%>

	<!-- Contenido -->
	<div class="container" id="contenedor-principal">
		<h2>Administrar</h2>
	</div>
</body>
</html>