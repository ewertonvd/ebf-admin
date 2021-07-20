<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ebf"%>

<!DOCTYPE html>
<html>

<head>

<title>Módulo de Paises</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap.min.css'/>"  />
</head>

<body>
	<form action="${linkTo[PaisController].salva(null)}" method="post">
		<input type="hidden" name="hdpais" id="hdpais" value="<%=request.getRemoteUser()%>"> 
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
						<a class="navbar-brand" href="#">INÍCIO PAISES</a>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="${linkTo[LoginController].desloga()}">Deslogar</a></li>
							<li><a href="${linkTo[IndexController].index()}" id="pgInicial">Pág. Inicial</a></li>
							<li><a href="${linkTo[PaisController].lista()}" id="listarPaises">Listar</a></li>
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
				<h3 class="panel-title">Informações do Paises</h3>
			</div>
			<div id="collapse1" class="panel-body panel-collapse collapse"></div>
			<br />
			
			<!--PRIMEIRA LINHA... -->
			<div class="row text-left">
				<input type="hidden" name="pais.numCodigo" size="3" maxlength="3" id="numCodigo" class="form-control" value="${pais.numCodigo}" /><br />
				<ebf:validationMessage name="pais.numCodigo" />
			
				<div class="col-md-4">
					<span>Nome:</span> 
					<input type="text" name="pais.nome" size="255" maxlength="255" id="nome" class="form-control" value="${pais.nome}" autofocus="autofocus" /><br />
					<ebf:validationMessage name="pais.nome" />
				</div>

				<div class="col-md-1">
					<span>ISO:</span> 
					<input type="text" name="pais.iso" size="2" maxlength="2" id="iso" class="form-control" value="${pais.iso}" /><br />
					<ebf:validationMessage name="pais.iso" />
				</div>

				<div class="col-md-1">
					<span>ISO 3:</span> 
					<input type="text" name="pais.iso3" size="3" maxlength="3" id="iso3" class="form-control" value="${pais.iso3}" /><br />
					<ebf:validationMessage name="pais.iso3" />
				</div>

				<div class="col-md-1">
					<span>DDI:</span>
					<input type="text" name="pais.ddi" id="ddi" class="form-control" value="${pais.ddi}" /><br />
					<ebf:validationMessage name="pais.ddi" />
				</div>
				<div class="col-md-4"></div>
			</div>
			
			<input type="submit" value="Cadastrar/Salvar" class="btn btn-primary">
			<br /> <br />

			<div id="dialog" title="Lista Paises" style="overflow-x: hidden;">
				<table id="tabPesquisa"></table>
			</div>
		</div>
	</form>

</body>
</html>