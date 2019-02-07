<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page language="java" import="com.uniovi.sdi.*"%>
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

	<%
		if (request.getParameter("nombre") != null && request.getParameter("imagen") != null
				&& request.getParameter("precio") != null) {
			String nombre = (String) request.getParameter("nombre");
			String imagen = (String) request.getParameter("imagen");
			float precio = Float.parseFloat(request.getParameter("precio"));
			Producto producto = new Producto(nombre, imagen, precio);
			new ProductosService().setNuevoProducto(producto);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	%>

	<!-- Contenido -->
	<div class="container" id="contenedor-principal">
		<h2>Agregar producto a la tienda</h2>
		<form class="form-horizontal" method="post" action="admin.jsp">
			<div class="form-group">
				<label class="control-label col-sm-2" for="nombre">Nombre:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="nombre"
						required="true" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="imagen">URL
					imagen:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="imagen"
						required="true" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="precio">Precio (€):</label>
				<div class="col-sm-10">
					 <input type="number" step="0.01" class="form-control"
						name="precio">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">Agregar</button>
				</div>
			</div>

		</form>
</body>
</html>