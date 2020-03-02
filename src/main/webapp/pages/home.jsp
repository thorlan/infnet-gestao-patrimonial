<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gestão Patrimonial</title>
</head>
<body>
	<jsp:include page="templates/header.jsp"></jsp:include>

	<div class="container">

		<div class="row justify-content-center pt-4">

			<div class="col-10">

				<c:if test="${not empty erro}">
					<div class="row justify-content-center">
						<div class="alert alert-danger" role="alert">${erro }</div>
					</div>
				</c:if>

				<c:if test="${not empty sucesso}">
					<div class="row justify-content-center">
						<div class="alert alert-success" role="alert">${sucesso }</div>
					</div>
				</c:if>

				<div class="row justify-content-center">

					<div class="align-items-center">
						<h4>
							<a href=" <c:url value='/PatrimonioSrv?action=new'/> "
								class="badge badge-pill badge-success mt-3">Novo Patrimônio </a>
						</h4>
					</div>
				</div>

				<div class="row mt-3">

					<table class="table table-hover">
						<thead class="thead-light">
							<tr>
								<th scope="col">ID</th>
								<th scope="col">Descrição</th>
								<th scope="col">Localização</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody>
								<c:forEach items="${patrimonios}" var="patrimonio">
								<tr>
									<th scope="row">${patrimonio.id}</th>
									<td>${patrimonio.descricao}</td>
									<td>${patrimonio.localizacao}</td>
									<td>
										<a href=" <c:url value='/PatrimonioSrv?action=edit&patrimonioId=${patrimonio.id}'/> ">
											<i class="fa fa-pencil-square-o" aria-hidden="true"></i>  
										</a>
										|
										<a href=" <c:url value='/PatrimonioSrv?action=delete&patrimonioId=${patrimonio.id}'/> ">
											<i class="fa fa-trash-o" aria-hidden="true"></i> 
										</a>
									</td>
								</tr>
								</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

		</div>

	</div>

</body>
</html>