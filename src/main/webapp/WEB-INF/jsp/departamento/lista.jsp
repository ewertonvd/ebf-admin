<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE httml>

<html>
<head>
<title>Lista de Departamentos</title>

<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css" class="init"></style>

<script type="text/javascript" src="<c:url value="/js/jquery-1.12.4.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/jquery.dataTables.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/dataTables.bootstrap.min.js"/>"></script>

<link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap.css'/>"  />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/dataTables.bootstrap.min.css'/>"  />
<%-- <link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap.min.css'/>"  /> --%>
<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script type="text/javascript" class="init">
	$(document).ready(function() {
		$('#tabDepartamentos').DataTable();
	} );
</script>

</head>

<body>
	<input type="hidden" name="hddepartamento" id="hddepartamento"
		value="<%=request.getRemoteUser()%>">
	<input type="hidden" value="1" id="controle_cons" name="controle_cons" />
	<br />
	<div id="container-fluid">
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">INÍCIO DEPARTAMENTOS</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<form class="navbar-form navbar-left vertical-center">
						<div class="btn-group" data-toggle="buttons"></div>
					</form>

					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
						</div>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="${linkTo[LoginController].desloga()}">Deslogar</a></li>
						<li><a href="${linkTo[IndexController].index()}" id="pgInicial">Pág. Inicial</a></li>
						<li><a href="${linkTo[DepartamentoController].formulario()}" id="novoDepartamento">Novo</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		<br /> <br /> <br />

		<h2>Lista de Departamentos</h2>
		<table id="tabDepartamentos" class="table table-striped table-bordered table-condensed dataTable" role="grid" style="width: 80%;">
			<thead>
				<tr>
					<th class="sorting_asc" tabindex="0" aria-controls="tabDepartamentos" rowspan="1" colspan="1" aria-label="id: activate to sort column descending" aria-sort="ascending" style="width: 15px;">Id</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabDepartamentos" rowspan="1" colspan="1" aria-label="nome: activate to sort column descending" aria-sort="ascending" style="width: 150px;">Nome</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabDepartamentos" rowspan="1" colspan="1" aria-label="cdc: activate to sort column descending" aria-sort="ascending" style="width: 15px;">CDC</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabDepartamentos" rowspan="1" colspan="1" aria-label="ativo: activate to sort column descending" aria-sort="ascending" style="width: 15px;">Ativo</th>
					<th style="width: 60px;">Selecionar</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${departamentos}" var="departamento">
					<tr>
					<td><c:if test="${not empty departamento.id}">
						${departamento.id}
					</c:if></td>
						
					<td><c:if test="${not empty departamento.nome}">
						${departamento.nome}
					</c:if></td>
						
					<td><c:if test="${not empty departamento.cdc}">
						${departamento.cdc}
					</c:if></td>
					
					<td><c:if test="${not empty departamento.ativo}">
						${departamento.ativo}
					</c:if></td>
						
					<td style="text-align: center">
						<a href="${linkTo[DepartamentoController].atualiza}?id=${departamento.id}" class="addSelecionaLista" title="Selecionar">
						<i class="glyphicon glyphicon-log-in"></i></a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>

<c:import url="/WEB-INF/jsp/footer.jsp" />