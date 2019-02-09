<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<c:if test="${sessionScope.usuario != 'admin'}">
		<c:redirect url="/login.jsp" />
	</c:if>

	<jsp:useBean id="producto" class="com.uniovi.sdi.Producto" />
	<jsp:setProperty name="producto" property="*" />
	
	<c:if test="${producto.nombre != null}">
		<jsp:useBean id="productosService"
			class="com.uniovi.sdi.ProductosService" />
		<jsp:setProperty name="productosService" property="nuevoProducto"
			value="${producto}" />
	</c:if>

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
				<label class="control-label col-sm-2" for="precio">Precio
					(€):</label>
				<div class="col-sm-10">
					<input type="number" step="0.01" class="form-control" name="precio">
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