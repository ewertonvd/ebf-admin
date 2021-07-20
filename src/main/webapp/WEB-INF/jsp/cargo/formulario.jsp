<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ebf"%>

<!DOCTYPE html>
<html>

<head>

<title>Módulo de Cargos</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%-- <link href="<c:url value='/css/bootstrap.css'/>" rel="stylesheet" /> --%>
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/css/bootstrap.min.css" />
<%-- <link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/css/bootstrap-editable.css" /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/css/bootstrap-theme.min.css" /> --%>
<%-- <link type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/css/jquery-ui-1.10.0.custom.css" rel="stylesheet" /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/css/bootstrap-table.css" /> --%>
</head>

<body>
	<form action="${linkTo[CargoController].salva(null)}" method="post">
		<input type="hidden" name="hdcargo" id="hdcargo" value="<%=request.getRemoteUser()%>"> 
		<input type="hidden" value="1" id="controle_cons" name="controle_cons" /> <br />
		<div id="container-fluid">
			<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> 
							<span class="icon-bar"></span>
							<span class="icon-bar"></span> 
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">INÍCIO CARGOS</a>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="${linkTo[LoginController].desloga()}">Deslogar</a></li>
							<li><a href="${linkTo[IndexController].index()}" id="pgInicial">Pág. Inicial</a></li>
							<li><a href="${linkTo[CargoController].lista()}" id="listarCargos">Listar</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</div>
		<br /> <br /> <br />

		<div class="panel panel-default painelCabecalho">
			<div class="panel-heading">
				<h3 class="panel-title">Informações do Cargo</h3>
			</div>
			<div id="collapse1" class="panel-body panel-collapse collapse"></div>
			<br />
			
			<!--PRIMEIRA LINHA... -->
			<div class="row text-left">
<!-- 			<div class="col-md-1"> -->
<!-- 			<span>Id:</span>  -->
				<input type="hidden" name="cargo.id" size="3" maxlength="3" id="id" class="form-control" value="${cargo.id}" /><br />
				<ebf:validationMessage name="cargo.id" />
<!-- 			</div> -->
				<div class="col-md-4">
					<span>Nome:</span> 
					<input type="text" name="cargo.nome" size="30" maxlength="30" id="nome" class="form-control" value="${cargo.nome}" autofocus="autofocus" /><br />
					<ebf:validationMessage name="cargo.nome" />
				</div>
				<div class="col-md-2">
					<span>Ativo:</span>
					<select name="cargo.ativo" id="ativo" class="form-control">
						<option value="S">Sim</option>
						<option value="N">Não</option>
					</select>
					<ebf:validationMessage name="cargo.ativo" />
				</div>
				<div class="col-md-4"></div>
			</div>
			<br />

			<input type="submit" value="Cadastrar/Salvar" class="btn btn-primary">
			<br /> <br />

			<div id="dialog" title="Lista Cargos" style="overflow-x: hidden;">
				<table id="tabPesquisa"></table>
			</div>
		</div>
	</form>

</body>
</html>