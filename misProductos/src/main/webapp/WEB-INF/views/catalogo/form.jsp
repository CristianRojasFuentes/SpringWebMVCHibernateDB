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
		<h1>${titulo}</h1>
	</div>
	<div class="container">

		<p>
			<a class="btn btn-default"
				href="<c:url value="/catalogo/listado.htm"/>" role="button">Volver</a>
		</p>
		<div class="panel panel-primary">
			<div class="panel-heading">
				<c:out value="${titulo}" />
			</div>
			<div class="panel-body">

				<div class="container">
					<div class="row">

						<form:form modelAttribute="producto" method="post"
							cssClass="form-horizontal" role="form">

							<%-- <div class="form-group">
								<form:label for="categoria" path="categoria"
									cssClass="col-sm-2 control-label">Categorías</form:label>
								<div class="col-sm-10">
									<form:select path="categoria" style="width: 300px;"
										cssClass="form-control"
										cssErrorClass="form-control alert-danger">
										<form:option value="0" label="seleccione una categoría -->" />
										<form:options items="${categorias}" itemLabel="nombre"
											itemValue="id" />
									</form:select>
									<form:errors path="categoria" />
								</div>
							</div> --%>
							
							<div class="form-group">
								<form:label for="nombre" path="nombre"
									cssClass="col-sm-2 control-label">Nombre</form:label>
								<div class="col-sm-10">
									<form:input path="nombre" style="width: 300px;"
										cssClass="form-control"
										cssErrorClass="form-control alert-danger" />
									<form:errors path="nombre" />
								</div>
							
					</div>

					<div class="form-group">
						<form:label for="cantidad" path="cantidad"
							cssClass="col-sm-2 control-label">Cantidad</form:label>
						<div class="col-sm-10">
							<form:input path="cantidad" style="width: 300px;"
								cssClass="form-control"
								cssErrorClass="form-control alert-danger" />
							<form:errors path="cantidad" />
						</div>
					</div>


					<div class="form-group">
						<form:label for="precio" path="precio"
							cssClass="col-sm-2 control-label">Precio</form:label>
						<div class="col-sm-10">
							<form:input path="precio" style="width: 300px;"
								cssClass="form-control"
								cssErrorClass="form-control alert-danger" />
							<form:errors path="precio" />
						</div>
					</div>


					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" value="Crear Producto"
								class="btn btn-primary" role="button" />
						</div>
					</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>

	</div>

</body>
</html>