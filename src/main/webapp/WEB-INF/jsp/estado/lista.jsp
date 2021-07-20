<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE httml>

<head>

<title>Lista de estados</title>

<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css" class="init"></style>

<script type="text/javascript" src="<c:url value="/js/jquery-1.12.4.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/jquery.dataTables.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/dataTables.bootstrap.min.js"/>"></script>

<link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap.css'/>"  />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/dataTables.bootstrap.min.css'/>"  />
<%-- <link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap.min.css'/>" /> --%>
<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script type="text/javascript" class="init">
	$(document).ready(function() {
		$('#tabEstados').DataTable();
	} );
</script>

</head>

<body>
	<input type="hidden" name="hdestado" id="hdestado"
		value="<%=request.getRemoteUser()%>">
	<input type="hidden" value="1" id="controle_cons" name="controle_cons" />
	<br />
	<div id="container-fluid">
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> 
						<span class="icon-bar"></span> <span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">INÍCIO ESTADOS</a>
				</div>
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
						<li><a href="${linkTo[IndexController].index()}"
							id="pgInicial">Pág. Inicial</a></li>
						<li><a href="${linkTo[EstadoController].formulario()}" id="novoEstado">Novo</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		<br /> <br /> <br />

		<h2>Lista de Estados</h2>
		<table id="tabEstados" class="table table-striped table-bordered table-condensed dataTable" role="grid" style="width: 80%;">
			<thead>
				<tr>
					<th class="sorting_asc" tabindex="0" aria-controls="tabEstados" rowspan="1" colspan="1" aria-label="Id: activate to sort column descending" aria-sort="ascending" style="width: 30px;">Id</i></th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabEstados" rowspan="1" colspan="1" aria-label="Nome: activate to sort column descending" aria-sort="ascending" style="width: 200px;">Nome</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabEstados" rowspan="1" colspan="1" aria-label="Sigla: activate to sort column descending" aria-sort="ascending" style="width: 30px;">Sigla</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabEstados" rowspan="1" colspan="1" aria-label="Capital: activate to sort column descending" aria-sort="ascending" style="width: 50px;">Capital</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabEstados" rowspan="1" colspan="1" aria-label="Regiao: activate to sort column descending" aria-sort="ascending" style="width: 80px;">Região</th>
					<th style="width: 60px;">Selecionar</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${estados}" var="estado">
					<tr>
					<td><c:if test="${not empty estado.id}">
						${estado.id}
					</c:if></td>
						
					<td><c:if test="${not empty estado.nome}">
						${estado.nome}
					</c:if></td>
						
					<td><c:if test="${not empty estado.sigla}">
						${estado.sigla}
					</c:if></td>
						
					<td><c:if test="${not empty estado.capital}">
						${estado.capital}
					</c:if></td>
						
					<td><c:if test="${not empty estado.regiao}">
						${estado.regiao}
					</c:if></td>
						
					<td style="text-align: center"><a
						href="${linkTo[EstadoController].atualiza}?id=${estado.id}"
						class="addSelecionaLista" title="Selecionar"> <i
						class="glyphicon glyphicon-log-in"></i></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>

<c:import url="/WEB-INF/jsp/footer.jsp" />