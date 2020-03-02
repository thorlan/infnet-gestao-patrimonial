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

		<div class="row justify-content-center">

			<div class="col-10">

				<div class="row pt-4">
					<div class="col-sm-4">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">Minhas compras</h5>
								<p class="card-text">
									<img class="pl-5" alt="compras" src="<c:url value='img/cart.png'/>  "  height="150" width="190">
								</p>
								<a href="<c:url value='/ComprasSrv'/>" class="btn btn-success">Visitar</a>
							</div>
						</div>
					</div>
					
					<div class="col-sm-4">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">Gestão de produtos</h5>
								<p class="card-text">
									<img class="pl-5" alt="compras" src="<c:url value='img/products.jpg'/>  "  height="150" width="190">
								</p>
								<a href="#" class="btn btn-success">Visitar</a>
							</div>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">Gestão de usuário</h5>
								<p class="card-text">
									<img class="pl-5" alt="compras" src="<c:url value='img/user.png'/>  "  height="150" width="190">
								</p>
								<a href="#" class="btn btn-success">Visitar</a>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>

</body>
</html>