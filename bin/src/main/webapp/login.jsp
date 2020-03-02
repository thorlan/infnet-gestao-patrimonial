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
	<jsp:include page="pages/templates/header.jsp"></jsp:include>

	<div class="container">

		<div class="row justify-content-center">

			<div class="col-8">

				<h4 class="mt-4 text-secondary">Fazer login</h4>
				<c:if test="${not empty erroLogin}">
					<div class="alert alert-danger" role="alert">${erroLogin }</div>
				</c:if>
				
				<c:if test="${not empty sucessoCadastro}">
					<div class="alert alert-success" role="alert">${sucessoCadastro }</div>
				</c:if>

				<form action=" <c:url value='/UserSrv?action=login'/>" method="POST">

					<div class="form-group">
						<input type="text" name="login" id="login"
							placeholder="endereço de email ou nome de usuário"
							class="form-control" />
					</div>

					<div class="form-group">
						<input type="password" name="senha" id="senha"
							class="form-control" />
					</div>

					<button type="submit" class="btn btn-success">Login</button>
				</form>
			</div>
		</div>

		<div class="row justify-content-center">
			<div class="align-items-center">
				<a href=" <c:url value='/logon.jsp'/> "
					class="badge badge-light mt-4"> Clique aqui para novo cadastro
				</a>
			</div>
		</div>

	</div>

</body>
</html>