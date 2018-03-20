<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>${titulo}</title>
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
	<div class="page-header">
		<h1>
			${titulo}
		</h1>
	</div>
	<div class="container">

		<p>
			<a class="btn btn-default" href="<c:url value="/catalogo/form.htm"/>"
				role="button">Agregar Producto (+)</a>
		</p>
		<div class="panel panel-primary">
			<div class="panel-heading">
				<c:out value="${titulo}" />
			</div>
			<div class="panel-body">
				<div class="container">
					<div class="row">

						<table style="width: 700px;"
							class="table table-striped table-hover table-bordered">
							<thead>
								<tr>
									<th>#</th>
									<th>Nombre</th>
									<th>Precio</th>
									<th>Cantidad</th>
									<th>Editar</th>
									<th>Eliminar</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${productos}" var="producto">
									<tr>
										<td><c:out value="${producto.id}" /></td>
										<td><c:out value="${producto.nombre}" /></td>
										<td><c:out value="${producto.precio}" /></td>
										<td><c:out value="${producto.cantidad}" /></td>
										<td><a class="btn-xs btn-primary"
											href="<c:url value="/catalogo/form.htm?id=${producto.id}"/>">editar</a></td>
										<td><a class="btn-xs btn-danger"
											onclick="return confirm('Esta seguro?');"
											href="<c:url value="/catalogo/eliminar.htm?id=${producto.id}"/>">eliminar</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

	</div>

</body>
</html>