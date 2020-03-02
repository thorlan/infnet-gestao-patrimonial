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

	<div class="container">

		<div class="row justify-content-center pt-4">
            
			<div class="col-10">
				<h4 class="mt-4 text-secondary">Confirma a exclusão do patrimônio:</h4>

				<form action=" <c:url value='/PatrimonioSrv?action=delete'/>" method="POST">
					
					<input type="hidden" name="id" id="id" value="${patrimonio.id}"/>
					
					<div class="form-group">
						<input disabled type="text" name="descricao" id="descricao" value="${patrimonio.descricao }"
							placeholder="Descrição do patrimônio" class="form-control" />
					</div>

						<div class="form-group">
						<input disabled type="text" name="localizacao" id="localizacao" value="${patrimonio.localizacao }"
							placeholder="Localizacao do patrimônio" class="form-control" />
					</div>

					<button type="submit" class="btn btn-danger">Excluir</button>
				</form>

			</div>

		</div>

	</div>


</body>
</html>