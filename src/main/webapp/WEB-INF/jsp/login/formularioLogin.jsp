<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ebf" %>

<!DOCTYPE html>
<html>
<head>
<title>Página de login</title>

<%-- <c:import url="/WEB-INF/jsp/header.jsp" /> --%>
<link href="<c:url value='/css/bootstrap.css'/>" rel="stylesheet" />
</head>
<body>
<form action="${linkTo[LoginController].autentica(null, null)}"
	method="post">

	<ebf:validationMessage name="login_invalido" />

	<div class="row text-left">
		<div class="col-md-2">
		<br />	
			<span>Login:</span>
			<input type="text" name="login" size="20" maxlength="20" id="login" class="form-control" /> 
		</div><br/>
		<div class="col-md-2">
			<span>Senha:</span>
			<input type="password" name="senha" size="12" maxlength="20" id="senha" class="form-control" />
		</div>
		<div class="col-md-2"></div>
		<br/>
		<input type="submit" value="Autenticar" class="btn" />
	</div>
</form>
</body>
</html>
<%-- <c:import url="/WEB-INF/jsp/footer.jsp" /> --%>