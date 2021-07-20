<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ebf"%>

<!DOCTYPE html>

<html>

<head>

<title>Módulo de Usuários</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value='/css/bootstrap.css'/>" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/css/bootstrap-editable.css" />
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/css/bootstrap-theme.min.css" />
<link type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/css/jquery-ui-1.10.0.custom.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/css/bootstrap-table.css" />
</head>

<body>
	<form action="${linkTo[UsuarioController].salva(null)}" method="post">
		<input type="hidden" name="hdusuario" id="hdusuario" value="<%=request.getRemoteUser()%>"> 
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
						<a class="navbar-brand" href="#">INÍCIO USUÁRIOS</a>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="${linkTo[LoginController].desloga()}">Deslogar</a></li>
							<li><a href="${linkTo[IndexController].index()}" id="pgInicial">Pág. Inicial</a></li>
							<li><a href="${linkTo[UsuarioController].lista()}" id="listarUsuarios">Listar</a></li>
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
				<h3 class="panel-title">Informações do Usuário</h3>
			</div>
			<div id="collapse1" class="panel-body panel-collapse collapse"></div>
			<br />
			
			<!--PRIMEIRA LINHA... -->
			<input type="hidden" name="usuario.dataCadastro" id="dataCadastro" class="form-control" value="<fmt:formatDate pattern="dd/MM/yyyy" type="date" value="${usuario.dataCadastro}"/>"/>
			<ebf:validationMessage name="usuario.dataCadastro" />

			<input type="hidden" name="usuario.id" id="id" class="form-control" value="${usuario.id}" />
			<ebf:validationMessage name="usuario.id" />

			<!--SEGUNDA LINHA... -->
			<div class="row text-left">
				<div class="col-md-3">
					<span>Nome:</span> 
					<input type="text" name="usuario.nome" size="40" maxlength="40" id="nome" class="form-control" value="${usuario.nome}" autofocus="autofocus" /><br />
					<ebf:validationMessage name="usuario.nome" />
				</div>
				<div class="col-md-2">
					<span>Login:</span>
					<input type="text" name="usuario.login" Size="20" maxlength="20" id="login" class="form-control" value="${usuario.login}" /><br />
					<ebf:validationMessage name="usuario.login" />
				</div>
				<div class="col-md-2">
					<span>Senha:</span> 
					<input type="password" name="usuario.senha" size="12" maxlength="12" id="senha" class="form-control" value="${usuario.senha}" /><br />
					<ebf:validationMessage name="usuario.senha" />
				</div>
				<div class="col-md-3"></div>
			</div>
			<br />

			<!--TERCEIRA LINHA... -->
			<div class="row text-left">
				<div class="col-md-3">
					<span>Email:</span> 
					<input type="email" name="usuario.email" size="50" maxlength="50" id="email" class="form-control" value="${usuario.email}" /><br />
					<ebf:validationMessage name="usuario.email" />
				</div>
				
				<div class="col-md-2">
					<span>Departamento:</span>
					<input type="hidden" name="usuario.departamentoaux" class="form-control" value="${usuario.departamento}"/>
					<select name="usuario.departamento" id="departamento" class="form-control">
						<c:forEach items="${nDepartamentos}" var="nDepartamento">
							<option value="${nDepartamento.nome}">${nDepartamento.nome}</option>
						</c:forEach>
					</select>
					<ebf:validationMessage name="usuario.departamento" />
				</div>
				
				<div class="col-md-3">
					<span>Cargo:</span>
						<input type="hidden" name="usuario.cargoaux" class="form-control" value="${usuario.cargo}"/>
						<select name="usuario.cargo" id="cargo" class="form-control">						
							<c:forEach items="${nCargos}" var="nCargo">
								<option value="${nCargo.nome}">${nCargo.nome}</option>
							</c:forEach>
						</select>
					<ebf:validationMessage name="usuario.cargo" />
				</div>
				<div class="col-md-3"></div>
				
			</div>
			<br />

			<!--QUARTA LINHA... -->
			<div class="row text-left">
				<div class="col-md-2">
					<span>Dt. Login:</span> 
					<input type="date" name="usuario.dataLogin" size="10" maxlength="10" id="dataLogin" class="form-control" value="${usuario.dataLogin}" disabled/><br />
					<ebf:validationMessage name="usuario.dataLogin" />
				</div>
				<div class="col-md-2">
					<span>Altera senha próx.login:</span> 
					<select name="usuario.alteraSPL" id="alteraSPL" class="form-control">
						<option value="S" selected>Sim</option>
						<option value="N">Não</option>
					</select>
					<ebf:validationMessage name="usuario.alteraSPL" />
				</div>
				<div class="col-md-2">
					<span>Ativo:</span> <select name="usuario.ativo" id="ativo" class="form-control">
						<option value="S">Sim</option>
						<option value="N">Não</option>
					</select><br /> <br />
					<ebf:validationMessage name="usuario.ativo" />
					<div class="col-md-2"></div>
				</div>
			</div>
			<input type="submit" value="Cadastrar/Salvar" class="btn btn-primary">
			<br /> <br />

			<div id="dialog" title="Lista Usuários" style="overflow-x: hidden;">
				<table id="tabPesquisa"></table>
			</div>
		</div>
	</form>

</body>
</html>