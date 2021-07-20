<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE httml>

<head>

<title>Lista de usuários</title>

<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon" type="image/png" href="/media/images/favicon.png">
<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="http://www.datatables.net/rss.xml">
<link rel="stylesheet" type="text/css" href="/media/css/site-examples.css?_=b05357026107a2e3ca397f642d976192">

<link type="text/css" href="../../css/jquery-ui-1.10.0.custom.css" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.13/css/dataTables.bootstrap.min.css">
<style type="text/css" class="init"></style>

<script type="text/javascript" src="//code.jquery.com/jquery-1.12.4.js"></script> 
<script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script> 

<script type="text/javascript" class="init">
	$(document).ready(function() {
		$('#tabUsuarios').DataTable();
	} );
</script>

</head>

<body>
	<input type="hidden" name="hdusuario" id="hdusuario"
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
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">INÍCIO USUÁRIOS</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<form class="navbar-form navbar-left vertical-center">
						<div class="btn-group" data-toggle="buttons"></div>
					</form>

					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
<!-- 							<input type="text" class="form-control" id="RAnomeRazao" -->
<!-- 								placeholder="Nome / Login" size="40" autofocus="autofocus"> -->
						</div>
<!-- 						<button type="button" id="consultaServico" class="btn btn-default">Consulta</button> -->
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="${linkTo[LoginController].desloga()}">Deslogar</a></li>
						<li><a href="${linkTo[IndexController].index()}" id="pgInicial">Pág. Inicial</a></li>
						<li><a href="${linkTo[UsuarioController].formulario()}" id="novoUsuario">Novo</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		<br /> <br /> <br />

		<h2>Lista de Usuários</h2>
			<table id="tabUsuarios" class="table table-striped table-bordered table-condensed dataTable" role="grid" style="width: 90%;">
			<thead>
				<tr>
<!-- 					<th>Id</th> -->
<!-- 					<th>Dt. Cadastro</th> -->
<!-- 					<th>Nome</th> -->
<!-- 					<th>Login</th> -->
<!-- 					<th>Departamento</th> -->
<!-- 					<th>Cargo</th> -->
<!-- 					<th>Email</th> -->
<!-- 					<th>Ativo</th> -->
<!-- 					<th>Dt. Login</th> -->
<!-- 					<th>Selecionar</th> -->

					<th class="sorting_asc" tabindex="0" aria-controls="tabUsuarios" rowspan="1" colspan="1" aria-label="Id: activate to sort column descending" aria-sort="ascending" style="width: 35px;">Id</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabUsuarios" rowspan="1" colspan="1" aria-label="DtCadastro: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Dt.Cadastro</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabUsuarios" rowspan="1" colspan="1" aria-label="Nome: activate to sort column descending" aria-sort="ascending" style="width: 240px;">Nome</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabUsuarios" rowspan="1" colspan="1" aria-label="Login: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Login</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabUsuarios" rowspan="1" colspan="1" aria-label="Departamento: activate to sort column descending" aria-sort="ascending" style="width: 110px;">Departamento</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabUsuarios" rowspan="1" colspan="1" aria-label="Cargo: activate to sort column descending" aria-sort="ascending" style="width: 50px;">Cargo</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabUsuarios" rowspan="1" colspan="1" aria-label="Email: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Email</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabUsuarios" rowspan="1" colspan="1" aria-label="Ativo: activate to sort column descending" aria-sort="ascending" style="width: 50px;">Ativo</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabUsuarios" rowspan="1" colspan="1" aria-label="DtLogin: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Dt.Login</th>
					<th style="width: 60px;">Selecionar</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${usuarios}" var="usuario">
					<tr>
						<td><c:if test="${not empty usuario.id}">
							${usuario.id}
						</c:if></td>
						
						<td><c:if test="${not empty usuario.dataCadastro}">
							<fmt:formatDate value="${usuario.dataCadastro}" pattern="dd/MM/yyyy" />
						</c:if></td>
						
						<td><c:if test="${not empty usuario.nome}">
							${usuario.nome}
						</c:if></td>
												
						<td><c:if test="${not empty usuario.login}">
							${usuario.login}
						</c:if></td>
												
						<td><c:if test="${not empty usuario.departamento}">
							${usuario.departamento}
						</c:if></td>
												
						<td><c:if test="${not empty usuario.cargo}">
							${usuario.cargo}
						</c:if></td>
						
						<td><c:if test="${not empty usuario.email}">
							${usuario.email}
						</c:if></td>
						
						<td><c:if test="${not empty usuario.ativo}">
							${usuario.ativo}
						</c:if></td>

						<td><c:if test="${not empty usuario.dataLogin}">
								<fmt:formatDate value="${usuario.dataLogin}"
										pattern="dd/MM/yyyy" />
						</c:if></td>

						<td style="text-align: center"><a
							href="${linkTo[UsuarioController].atualiza}?id=${usuario.id}"
							class="addSelecionaLista" title="Selecionar"> <i
								class="glyphicon glyphicon-log-in"></i></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
<%-- 	<script src="<c:out value="${pageContext.request.contextPath}"/>/js/bootstrap.min.js"></script> --%>
<%-- 	<script src="<c:out value="${pageContext.request.contextPath}"/>/js/bootstrap-table.js"></script> --%>
<%-- 	<script src="<c:out value="${pageContext.request.contextPath}"/>/js/bootstrap-editable.js"></script>		 --%>
<%-- 	<script src="<c:out value="${pageContext.request.contextPath}"/>/js/bootstrap-table-editable.js"></script> --%>
<!-- 	<script src="../../componentes/mindmup-editabletable.js"></script> -->

</body>

<c:import url="/WEB-INF/jsp/footer.jsp" />