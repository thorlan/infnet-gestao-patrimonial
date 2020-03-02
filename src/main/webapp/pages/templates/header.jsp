<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-awesome.min.css">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<nav class="navbar navbar-Dark bg-dark">
		<span class="navbar-header nav-header"> 
			<a class="nav-header" href=" <c:url value='/PatrimonioSrv'/> ">
					<h1>Gestão Patrimonial</h1>
			</a>
		</span>

	</nav>

	<script type="text/java"
		src="${pageContext.request.contextPath}/js/bootstrap.min.js">
	</script>

</body>
</html>