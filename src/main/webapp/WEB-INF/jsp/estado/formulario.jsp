<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ebf"%>

<!DOCTYPE html>
<html>

<head>

<title>Módulo de Estados</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap.css'/>"  />
</head>

<body>
	<form action="${linkTo[EstadoController].salva(null)}" method="post">
		<input name="estado.regiaoaux" type="hidden" value="${estado.regiao}">
		<input type="hidden" name="hdusuario" id="hdusuario" value="<%=request.getRemoteUser()%>"> 
		<input type="hidden" value="1" id="controle_cons" name="controle_cons" /> <br />
		<div id="container-fluid">
			<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> 
							<span class="icon-bar"></span>
							<span class="icon-bar"></span> 
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">INÍCIO ESTADOS</a>
					</div>
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="${linkTo[LoginController].desloga()}">Deslogar</a></li>
							<li><a href="${linkTo[IndexController].index()}" id="pgInicial">Pág. Inicial</a></li>
							<li><a href="${linkTo[EstadoController].lista()}" id="listarEstados">Listar</a></li>
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
				<h3 class="panel-title">Informações do Estado</h3>
			</div>
			<div id="collapse1" class="panel-body panel-collapse collapse"></div>
			<br />
			
			<!--PRIMEIRA LINHA... -->
			<input type="hidden" name="estado.id" id="id" class="form-control" value="${estado.id}" /><br />
			<ebf:validationMessage name="estado.id" />

			<!--SEGUNDA LINHA... -->
			<div class="row text-left">
				<div class="col-md-3">
					<span>Nome:</span> 
					<input type="text" name="estado.nome" size="30" maxlength="30" id="nome" class="form-control" value="${estado.nome}" autofocus="autofocus" /><br />
					<ebf:validationMessage name="estado.nome" />
				</div>
				<div class="col-md-1">
					<span>Sigla:</span>
					<input type="text" name="estado.sigla" Size="2" maxlength="2" id="sigla" class="form-control" value="${estado.sigla}" /><br />
					<ebf:validationMessage name="estado.sigla" />
				</div>
				<div class="col-md-2">
					<span>Capital:</span> 
					<input type="text" name="estado.capital" size="30" maxlength="30" id="capital" class="form-control" value="${estado.capital}" /><br />
					<ebf:validationMessage name="estado.capital" />
				</div>
				<div class="col-md-3"></div>
			</div>
			<br />

			<!--TERCEIRA LINHA... -->
			<div class="row text-left">
				<div class="col-md-2">
					<span>Região</span> 
 					<select name="estado.regiao" id="regiao" class="form-control" required="required" data-select="sl" data-url="sl"> 
						<option value="CENTRO_OESTE">CENTRO_OESTE</option>
						<option value="NORDESTE">NORDESTE</option>
						<option value="NORTE">NORTE</option>
						<option value="SUDESTE">SUDESTE</option>
						<option value="SUL">SUL</option>
					</select>
					<ebf:validationMessage name="estado.regiao" />
				</div>
				<div class="col-md-2"></div>
			</div>
			<br />

			<input type="submit" value="Cadastrar/Salvar" class="btn btn-primary">
			<br /> <br />

			<div id="dialog" title="Lista Usuários" style="overflow-x: hidden;">
				<table id="tabPesquisa"></table>
			</div>
		</div>
	</form>

	<script type="text/javascript" src="<c:url value="/js/jlib/jlib.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/jlib/select.js"/>"></script>

</body>
</html>