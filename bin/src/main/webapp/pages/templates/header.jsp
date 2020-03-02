<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<nav class="navbar navbar-Light bg-dark">
		<span class="navbar-header nav-header">
			 <a class="nav-header" href=" <c:url value='pages/home.jsp'/> ">
				<h1>netshop</h1>
			</a>
		</span>

		<div class="navbar-text">
			<c:if test="${!empty sessionScope.user}">
				<span class="nav-header mr-4"> Seja bem vindo ${sessionScope.user } </span>
					<a class="nav-header" href=" <c:url value='/LogoutSrv'/> ">Logout</a>
			</c:if>
		</div>

	</nav>

	<script type="text/java"
		src="${pageContext.request.contextPath}/js/bootstrap.min.js">
	</script>

</body>
</html>