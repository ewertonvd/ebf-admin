<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ebf"%>

<!DOCTYPE html>
<html>

<head>

<title>Módulo de Cidades</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap.min.css'/>"  />
</head>

<body>
	<form action="${linkTo[CidadeController].salva(null)}" method="post">
	<input name="cidade.estadoaux" type="hidden" value="${cidade.estado}">
		<input type="hidden" name="hdcidade" id="hdcidade" value="<%=request.getRemoteUser()%>"> 
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
						<a class="navbar-brand" href="#">INÍCIO CIDADES</a>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="${linkTo[LoginController].desloga()}">Deslogar</a></li>
							<li><a href="${linkTo[IndexController].index()}" id="pgInicial">Pág. Inicial</a></li>
							<li><a href="${linkTo[CidadeController].lista()}" id="listarCidades">Listar</a></li>
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
				<h3 class="panel-title">Informações do Departamento</h3>
			</div>
			<div id="collapse1" class="panel-body panel-collapse collapse"></div>
			<br />
			
			<!--PRIMEIRA LINHA... -->
			<div class="row text-left">
			
				<input type="hidden" name="cidade.id" size="11" maxlength="11" id="id" class="form-control" value="${cidade.id}" /><br />
				<ebf:validationMessage name="cidade.id" />
			
				<div class="col-md-4">
					<span>Nome:</span> 
					<input type="text" name="cidade.nome" size="30" maxlength="30" id="nome" class="form-control" value="${cidade.nome}" autofocus="autofocus" /><br />
					<ebf:validationMessage name="cidade.nome" />
				</div>

				<div class="col-md-1">
					<span>Estado:</span> 
					<select name="cidade.estado" id="estado" class="form-control" data-select="slEstadoId" data-url="slEstado_Json_01"></select>
					<ebf:validationMessage name="cidade.estado" />
				</div>
				<div class="col-md-2">
					<span>Cód. Correios:</span>
					<input type="text" name="cidade.codCorreios" size="11" maxlength="11" id="codCorreios" class="form-control" value="${cidade.codCorreios}" /><br />
					<ebf:validationMessage name="cidade.CodCorreios" />
				</div>
				<div class="col-md-2">
					<span>Desc. Suframa:</span>
						<select name="cidade.descSuframa" id="descSuframa" class="form-control">
						<option value="N">Não</option>
						<option value="S">Sim</option>
					</select>
					<ebf:validationMessage name="cidade.descSuframa" />
				</div>
				<div class="col-md-4"></div>
			</div>
			<input type="submit" value="Cadastrar/Salvar" class="btn btn-primary">
			<br /> <br />

			<div id="dialog" title="Lista Cidades" style="overflow-x: hidden;">
				<table id="tabPesquisa"></table>
			</div>
		</div>
	</form>
	
	<script type="text/javascript" src="<c:url value="/js/jlib/jlib.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/jlib/select.js"/>"></script>
	
</body>
</html>