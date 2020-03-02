<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="templates/header.jsp"></jsp:include>

	<c:if test="${empty sessionScope.user}">
		<jsp:forward page="../login.jsp"></jsp:forward>
	</c:if>

	<div class="container">

		<div class="row justify-content-center pt-4">

			<div class="col-10">

				<div class="row">

					<c:forEach items="${produtos}" var="produto">
						<div class="card mb-2 ml-2" style="width: 18rem;">
							<img class="card-img-top" 
								src="<c:url value='img/${produto.foto}'/>"
								alt="Card image cap">
							<div class="card-body">
								<h5 class="card-title">${produto.nome}</h5>
								<p class="card-text">${produto.descricao}</p>
								<p class="card-text">${produto.preco}</p>
								<a href="#" class="btn btn-primary">Comprar</a>
							</div>
						</div>
					</c:forEach>

				</div>
			</div>

		</div>

	</div>


</body>
</html>