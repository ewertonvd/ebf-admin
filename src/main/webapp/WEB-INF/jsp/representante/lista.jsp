<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<head>

<title>Lista de Representantes</title>

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
		$('#tabRepresentantes').DataTable();
	} );
</script>

</head>

<body>
	<input type="hidden" name="hdrepresentante" id="hdrepresentante"
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
						<span class="icon-bar"></span> <span class="icon-bar"></span> 
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">INÍCIO REPRESENTANTES</a>
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
						<li><a href="${linkTo[IndexController].index()}"
							id="pgInicial">Pág. Inicial</a></li>
						<li><a href="${linkTo[RepresentanteController].formulario()}"
							id="listarRepresentantes">Novo</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		<br /> <br /> <br />

		<h3>Lista de Representantes</h3>
		<table id="tabRepresentantes" class="table table-striped table-bordered table-condensed dataTable" role="grid" style="width: 100%;">
			<thead>
				<tr>
					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="NumCadastro: activate to sort column descending" aria-sort="ascending" style="width: 20px;">Num.Cadastro</th>
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="NumCadAntigo: activate to sort column descending" aria-sort="ascending" style="width: 20px;">Num.Cad.Antigo</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="DtCadastro: activate to sort column descending" aria-sort="ascending" style="width: 300px;">Dt.Cadastro</th> -->
					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="RazaoSocial: activate to sort column descending" aria-sort="ascending" style="width: 130px;">Razão Social</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="NomeFantasia: activate to sort column descending" aria-sort="ascending" style="width: 130px;">nome Fantasia</th>					
					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="Cnpj: activate to sort column descending" aria-sort="ascending" style="width: 130px;">CNPJ</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="InscEst: activate to sort column descending" aria-sort="ascending" style="width: 300px;">Inscr.Estadual</th>
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="Cpf: activate to sort column descending" aria-sort="ascending" style="width: 60px;">CPF</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="Rg: activate to sort column descending" aria-sort="ascending" style="width: 60px;">RG</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="EndRua: activate to sort column descending" aria-sort="ascending" style="width: 60px;">Endereço</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="EndNum: activate to sort column descending" aria-sort="ascending" style="width: 150px;">Nro.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="Endcompl: activate to sort column descending" aria-sort="ascending" style="width: 150px;">Complemento</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="EndBair: activate to sort column descending" aria-sort="ascending" style="width: 150px;">Bairro</th> -->
					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="EndCid: activate to sort column descending" aria-sort="ascending" style="width: 150px;">Cidade</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="EndEst: activate to sort column descending" aria-sort="ascending" style="width: 40px;">Estado</th>
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="EndCep: activate to sort column descending" aria-sort="ascending" style="width: 40px;">CEP</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="EndPais: activate to sort column descending" aria-sort="ascending" style="width: 85px;">País</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="EndDDI: activate to sort column descending" aria-sort="ascending" style="width: 100px;">DDI</th> -->
					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="EndDDD: activate to sort column descending" aria-sort="ascending" style="width: 100px;">DDD</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="EntTel: activate to sort column descending" aria-sort="ascending" style="width: 25px;">Telefone</th>
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="EntTel: activate to sort column descending" aria-sort="ascending" style="width: 25px;">Telefone 2</th> -->
					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="EndDDDCel: activate to sort column descending" aria-sort="ascending" style="width: 100px;">DDD Cel.</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="EndCel: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Celular</th>
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="EndDDDFax: activate to sort column descending" aria-sort="ascending" style="width: 100px;">DDD Fax.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="EndFax: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Tel.Fax</th> -->
					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="Email: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Email</th>
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="Email2: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Email 2</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="Empresa: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Empresa</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="Marca: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Marca</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="ComissaoMaxima: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Comissão Máx.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="CalculaComissao: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Calcula Comissão</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="CalculaIR: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Calcula IR</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="boAtrasoDupl: activate to sort column descending" aria-sort="ascending" style="width: 100px;">BO Atraso Dupl.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="Grupo: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Grupo</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="Televendas: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Televendas</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="Regiao: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Região</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="Gerencia: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Gerência</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="Restricao: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Restrição</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="Observ: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Email</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="DtAlteracao: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Observação</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabRepresentantes" rowspan="1" colspan="1" aria-label="UserAlteracao: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Usuário alteração</th> -->
					<th style="width: 60px;">Selecionar</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${representantes}" var="representante">
					<tr>
					<td><c:if test="${not empty representante.numCadastro}">
						${representante.numCadastro}
					</c:if></td>
					
<%-- 					<td><c:if test="${not empty representante.numCadAntigo}"> --%>
<%-- 						${representante.numCadAntigo} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.dataCadastro}"> --%>
<%-- 						<fmt:formatDate value="${representante.dataCadastro}" --%>
<%-- 								pattern="dd/MM/yyyy" /> --%>
<%-- 					</c:if></td>								 --%>
								
					<td><c:if test="${not empty representante.nomeRazao}">
						${representante.nomeRazao}
					</c:if></td>

					<td><c:if test="${not empty representante.nomeFantasia}">
						${representante.nomeFantasia}
					</c:if></td>

					<td><c:if test="${not empty representante.cnpj}">
						${representante.cnpj}
					</c:if></td>

					<td><c:if test="${not empty representante.inscEst}">
						${representante.inscEst}
					</c:if></td>

<%-- 					<td><c:if test="${not empty representante.cpf}"> --%>
<%-- 						${representante.cpf} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.rg}"> --%>
<%-- 						${representante.rg} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.endRua}"> --%>
<%-- 						${representante.endRua} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.endNum}"> --%>
<%-- 						${representante.endNum} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.endCompl}"> --%>
<%-- 						${representante.endCompl} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.endBair}"> --%>
<%-- 						${representante.endBair} --%>
<%-- 					</c:if></td> --%>

					<td><c:if test="${not empty representante.endCid}">
						${representante.endCid}
					</c:if></td>

					<td><c:if test="${not empty representante.endEst}">
						${representante.endEst}
					</c:if></td>

<%-- 					<td><c:if test="${not empty representante.endCep}"> --%>
<%-- 						${representante.endCep} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.endPais}"> --%>
<%-- 						${representante.endPais} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.endDDI}"> --%>
<%-- 						${representante.endDDI} --%>
<%-- 					</c:if></td> --%>

					<td><c:if test="${not empty representante.endDDD}">
						${representante.endDDD}
					</c:if></td>

					<td><c:if test="${not empty representante.endTel}">
						${representante.endTel}
					</c:if></td>
	
<%-- 					<td><c:if test="${not empty representante.endTel2}"> --%>
<%-- 						${representante.endTel2} --%>
<%-- 					</c:if></td> --%>

					<td><c:if test="${not empty representante.endDDDCel}">
						${representante.endDDDCel}
					</c:if></td>
					<td><c:if test="${not empty representante.endCel}">
						${representante.endCel}
					</c:if></td>

<%-- 					<td><c:if test="${not empty representante.endDDDFax}"> --%>
<%-- 						${representante.endDDDFax} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.endFax}"> --%>
<%-- 						${representante.endFax} --%>
<%-- 					</c:if></td> --%>

					<td><c:if test="${not empty representante.endEmail}">
						${representante.endEmail}
					</c:if></td>

<%-- 					<td><c:if test="${not empty representante.endEmail2}"> --%>
<%-- 						${representante.endEmail2} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.empresa}"> --%>
<%-- 						${representante.empresa} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.marca}"> --%>
<%-- 						${representante.marca} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.comissaoMaxima}"> --%>
<%-- 						${representante.comissaoMaxima} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.calculaComissao}"> --%>
<%-- 						${representante.calculaComissao} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.calcularIR}"> --%>
<%-- 						${representante.calcularIR} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.boAtrasoDuplicata}"> --%>
<%-- 						${representante.boAtrasoDuplicata} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.grupo}"> --%>
<%-- 						${representante.grupo} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.televendas}"> --%>
<%-- 						${representante.televendas} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.regiao}"> --%>
<%-- 						${representante.regiao} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.gerencia}"> --%>
<%-- 						${representante.gerencia} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.restricao}"> --%>
<%-- 						${representante.restricao} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.observ}"> --%>
<%-- 						${representante.observ} --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.dataAlteracao}"> --%>
<%-- 						<fmt:formatDate value="${representante.dataAlteracao}" --%>
<%-- 										pattern="dd/MM/yyyy" /> --%>
<%-- 					</c:if></td> --%>
<%-- 					<td><c:if test="${not empty representante.userAlteracao}"> --%>
<%-- 						${representante.userAlteracao} --%>
<%-- 					</c:if></td> --%>

					<td style="text-align: center"><a
						href="${linkTo[RepresentanteController].atualiza}?numCadastro=${representante.numCadastro}"
						class="addSelecionaLista" title="Selecionar"> <i
							class="glyphicon glyphicon-log-in"></i></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>

<c:import url="/WEB-INF/jsp/footer.jsp" />