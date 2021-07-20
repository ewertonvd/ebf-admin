<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<head>

<title>Lista de Transportadoras</title>

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
		$('#tabTransportadoras').DataTable();
	} );
</script>

</head>

<body>
	<input type="hidden" name="hdtransportadora" id="hdtransportadora"
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
					<a class="navbar-brand" href="#">INÍCIO TRANSPORTADORAS</a>
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
						<li><a href="${linkTo[TransportadoraController].formulario()}" id="novaTransportadora">Nova</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		<br /> <br /> <br />

		<h3>Lista de Transportadoras</h3>
		<table id="tabTransportadoras" class="table table-striped table-bordered table-condensed dataTable" role="grid" style="width: 100%;">
			<thead>
				<tr>
					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="NumCadastro: activate to sort column descending" aria-sort="ascending" style="width: 30px;">Num.Cadastro</th>
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="NumCadAntigo: activate to sort column descending" aria-sort="ascending" style="width: 30px;">Num.Cad.Antigo</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="DtCadastro: activate to sort column descending" aria-sort="ascending" style="width: 300px;">Dt.Cadastro</th> -->
					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="RazaoSocial: activate to sort column descending" aria-sort="ascending" style="width: 120px;">Razão Social</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="Cnpj: activate to sort column descending" aria-sort="ascending" style="width: 50px;">CNPJ</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="InscEst: activate to sort column descending" aria-sort="ascending" style="width: 50px;">Inscr.Estadual</th>
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="EndRua: activate to sort column descending" aria-sort="ascending" style="width: 60px;">Endereço</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="EndNum: activate to sort column descending" aria-sort="ascending" style="width: 150px;">Nro.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="Endcompl: activate to sort column descending" aria-sort="ascending" style="width: 150px;">Complemento</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="EndBair: activate to sort column descending" aria-sort="ascending" style="width: 150px;">Bairro</th> -->
					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="EndCid: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Cidade</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="EndEst: activate to sort column descending" aria-sort="ascending" style="width: 15px;">Estado</th>
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="EndCep: activate to sort column descending" aria-sort="ascending" style="width: 40px;">CEP</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="EndPais: activate to sort column descending" aria-sort="ascending" style="width: 85px;">País</th> -->
					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="EndDDD: activate to sort column descending" aria-sort="ascending" style="width: 15px;">DDD</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="EntTel: activate to sort column descending" aria-sort="ascending" style="width: 20px;">Telefone</th>
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="EndFax: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Tel.Fax</th> -->
					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="EndEmail: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Email</th>
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="Observ: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Observação</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="DtAlteracao: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Dt.Alteração</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="UserAlteracao: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Usuário alteração</th> -->
					<th class="sorting_asc" tabindex="0" aria-controls="tabTransportadoras" rowspan="1" colspan="1" aria-label="Ativo: activate to sort column descending" aria-sort="ascending" style="width: 15px;">Ativo</th>
					<th style="width: 60px;">Selecionar</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${transportadoras}" var="transportadora">
					<tr>
						<td><c:if test="${not empty transportadora.numCadastro}">
							${transportadora.numCadastro}
						</c:if></td>

<%-- 						<td><c:if test="${not empty transportadora.numCadAntigo}"> --%>
<%-- 							${transportadora.numCadAntigo} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty transportadora.dataCadastro}"> --%>
<%-- 							<fmt:formatDate value="${transportadora.dataCadastro}" pattern="dd/MM/yyyy" /> --%>
<%-- 						</c:if></td> --%>

						<td><c:if test="${not empty transportadora.nome}">
							${transportadora.nome}
						</c:if></td>

						<td><c:if test="${not empty transportadora.cnpj}">
							${transportadora.cnpj}
						</c:if></td>

						<td><c:if test="${not empty transportadora.inscEst}">
							${transportadora.inscEst}
						</c:if></td>

<%-- 						<td><c:if test="${not empty transportadora.endRua}"> --%>
<%-- 							${transportadora.endRua} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty transportadora.endNum}"> --%>
<%-- 							${transportadora.endNum} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty transportadora.endCompl}"> --%>
<%-- 							${transportadora.endCompl} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty transportadora.endBair}"> --%>
<%-- 							${transportadora.endBair} --%>
<%-- 						</c:if></td> --%>

						<td><c:if test="${not empty transportadora.endCid}">
							${transportadora.endCid}
						</c:if></td>

						<td><c:if test="${not empty transportadora.endEst}">
							${transportadora.endEst}
						</c:if></td>

<%-- 						<td><c:if test="${not empty transportadora.endCep}"> --%>
<%-- 							${transportadora.endCep} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty transportadora.endPais}"> --%>
<%-- 							${transportadora.endPais} --%>
<%-- 						</c:if></td> --%>
						
						<td><c:if test="${not empty transportadora.endDDD}">
							${transportadora.endDDD}
						</c:if></td>
						
						<td><c:if test="${not empty transportadora.endTel}">
							${transportadora.endTel}
						</c:if></td>
						
<%-- 						<td><c:if test="${not empty transportadora.endFax}"> --%>
<%-- 							${transportadora.endFax} --%>
<%-- 						</c:if></td> --%>

						<td><c:if test="${not empty transportadora.endEmail}">
							${transportadora.endEmail}
						</c:if></td>
						
<%-- 						<td><c:if test="${not empty transportadora.observ}"> --%>
<%-- 							${transportadora.observ} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty transportadora.dataAlteracao}"> --%>
<%-- 								<fmt:formatDate value="${transportadora.dataAlteracao}" --%>
<%-- 										pattern="dd/MM/yyyy" /> --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty transportadora.userAlteracao}"> --%>
<%-- 							${transportadora.userAlteracao} --%>
<%-- 						</c:if></td> --%>

						<td><c:if test="${not empty transportadora.ativo}">
							${transportadora.ativo}
						</c:if></td>

						<td style="text-align: center"><a
							href="${linkTo[TransportadoraController].atualiza}?numCadastro=${transportadora.numCadastro}"
							class="addSelecionaLista" title="Selecionar"> <i
								class="glyphicon glyphicon-log-in"></i></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>

<c:import url="/WEB-INF/jsp/footer.jsp" />