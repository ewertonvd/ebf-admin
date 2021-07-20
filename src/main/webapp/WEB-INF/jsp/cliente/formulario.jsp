<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ebf"%>

<!DOCTYPE html>
<html>

<head>

<title>Módulo de clientes</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap.min.css'/>"  />

<link rel="stylesheet" type="text/css" href="<c:url value='/css/jquery-ui.css'/>"  />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/style.css'/>"  />
<script type="text/javascript" src="<c:url value="/js/jquery-1.12.4.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/jquery-ui.js"/>"></script>

<!--  <script>    
	jQuery(function() {
    	jQuery( "#tabs" ).tabs();
  });
</script> -->

</head>

<body>
	<form action="${linkTo[ClienteController].salva(null)}" method="post">
		<input name="cliente.endCidaux" type="hidden" value="${cliente.endCid}">
		<input name="cliente.endEstaux" type="hidden" value="${cliente.endEst}">
		<input name="cliente.endPaisaux" type="hidden" value="${cliente.endPais}">
		<input name="cliente.endECidaux" type="hidden" value="${cliente.endEntgCid}">
		<input name="cliente.endEEstaux" type="hidden" value="${cliente.endEntgEst}">
		<input name="cliente.endEPaisaux" type="hidden" value="${cliente.endEntgPais}">
		<input name="cliente.endPCidaux" type="hidden" value="${cliente.endPagCid}">
		<input name="cliente.endPEstaux" type="hidden" value="${cliente.endPagEst}">
		<input name="cliente.endPPaisaux" type="hidden" value="${cliente.endPagPais}">
		<input name="cliente.numCadRepreaux" type="hidden" value="${cliente.numCadRepre}">
		<input name="cliente.numCadRepreEcoaux" type="hidden" value="${cliente.numCadRepreEco}">
		<input name="cliente.numCadRepreVazLogaux" type="hidden" value="${cliente.numCadRepreVazLog}">
		<input name="cliente.numTranspaux" type="hidden" value="${cliente.numTransp}">
	
		<input type="hidden" name="hdcliente" id="hdcliente" value="<%=request.getRemoteUser()%>">
		<input type="hidden" value="1" id="controle_cons" name="controle_cons" /> <br />
		<div id="container-fluid">
			<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span> <span class="icon-bar"></span> 
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">INÍCIO CLIENTES</a>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="${linkTo[LoginController].desloga()}">Deslogar</a></li>
							<li><a href="${linkTo[IndexController].index()}" id="pgInicial">Pág. Inicial</a></li>
							<li><a href="${linkTo[ClienteController].lista()}" id="listarClientes">Listar</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</div>
		<br /> <br /> <br />

		<div class="btn-group" data-toggle="buttons"></div>

		<div class="panel panel-default painelCabecalho">
			<div class="panel-heading">
				<h3 class="panel-title">Informações do Cliente</h3>
			</div>
			<div id="collapse1" class="panel-body panel-collapse collapse">
			</div>
			<br />
			
		<div id="tabs">
  			<ul>
    			<li class="active"><a href="#tabs-1">D. PRINCIPAIS</a></li>
			    <li><a href="#tabs-2">D. ENTREGA</a></li>
    			<li><a href="#tabs-3">D. PAGAMENTO</a></li>
    			<li><a href="#tabs-4">D. BANCÁRIOS</a></li>
  			</ul>
  			
<!--		DADOS PRINCIPAIS, PRIMEIRA "ABA" -->
  			<div id="tabs-1">
  			
			<!--PRIMEIRA LINHA... -->
			<div class="row text-left">
				<div class="col-md-2">
					<span>Num.Cadastro:</span>
					<input type="text" name="cliente.numCadastro" size="7" maxlength="7" id="numCadastro" class="form-control" value="${cliente.numCadastro}" disabled="disabled" />
					<ebf:validationMessage name="cliente.numCadastro" />
				</div>
				<div class="col-md-2">
					<span>Num.Cad.Antigo:</span> 
					<input type="text" name="cliente.numCadAntigo" size="50" maxlength="50" id="numCadAntigo" class="form-control" value="${cliente.numCadAntigo}" disabled="disabled" />
					<ebf:validationMessage name="cliente.numCadAntigo" />
				</div>
				<div class="col-md-2">
					<span>Data cadastro:</span>
					<input type="text" name="cliente.dataCadastro" id="dataCadastro" class="form-control" value="<fmt:formatDate pattern="dd/MM/yyyy" type="date" value="${cliente.dataCadastro}"/>" disabled="disabled"/> 
					<ebf:validationMessage name="cliente.dataCadastro" />
				</div> 
				<div class="col-md-2"></div>
			</div><br /><br />

			<!--SEGUNDA LINHA... -->
			<div class="row text-left">
				<div class="col-md-4">
					<span>Razão Social:</span> 
					<input type="text" name="cliente.nomeRazao" size="50" maxlength="50" id="nomeRazao" class="form-control" value="${cliente.nomeRazao}" autofocus="autofocus" />
					<ebf:validationMessage name="cliente.nomeRazao" />
				</div>
				<div class="col-md-4">
					<span>Nome Fantasia:</span> 
					<input type="text" name="cliente.nomeFantasia" size="40" maxlength="40" id="nomeFantasia" class="form-control" value="${cliente.nomeFantasia}" />
					<ebf:validationMessage name="cliente.nomeFantasia" />
				</div>
				<div class="col-md-4"></div>
			</div><br /><br />

			<!--TERCEIRA LINHA... -->
			<div class="row text-left">
				<div class="col-md-2">
					<span>CNPJ:</span> 
					<input onkeypress="mask(maskCnpj, this, event);" type="text" name="cliente.cnpj" size="20" maxlength="20" id="cnpj" class="form-control" value="${cliente.cnpj}" />
					<ebf:validationMessage name="cliente.cnpj" />
				</div>
				<div class="col-md-2">
					<span>Inscr.Estadual:</span>
					<input onkeypress="mask(maskIe, this, event);" type="text" name="cliente.inscEst" size="20" maxlength="20" id="inscEst" class="form-control" value="${cliente.inscEst}" />
					<ebf:validationMessage name="cliente.inscEst" />
				</div>
				<div class="col-md-2">
					<span>CPF:</span>
					<input onkeypress="mask(maskCpf, this, event);" type="text" name="cliente.cpf" size="14" maxlength="14" id="cpf" class="form-control" value="${cliente.cpf}" />
					<ebf:validationMessage name="cliente.cpf" />
				</div>
				<div class="col-md-2">
					<span>RG:</span> 
					<input onkeypress="mask(maskRg, this, event);" type="text" name="cliente.rg" size="15" maxlength="15" id="rg" class="form-control" value="${cliente.rg}" />
					<ebf:validationMessage name="cliente.rg" />
				</div>
				<div class="col-md-2"></div>
			</div><br /><br />

			<!--QUARTA LINHA... -->
			<div class="row text-left">
				<div class="col-md-5">
					<span>Endereço:</span>
					<input type="text" name="cliente.endRua" size="100" maxlength="100" id="endRua" class="form-control" value="${cliente.endRua}" />
					<ebf:validationMessage name="cliente.endRua" />
				</div>
				<div class="col-md-1">
					<span>Número:</span>
					<input type="text" name="cliente.endNum" size="10" maxlength="10" id="endNum" class="form-control" value="${cliente.endNum}" />
					<ebf:validationMessage name="cliente.endNum" />
				</div>
				<div class="col-md-2">
					<span>Complemento:</span> 
					<input type="text" name="cliente.endCompl" size="50" maxlength="50" id="endCompl" class="form-control" value="${cliente.endCompl}" />
					<ebf:validationMessage name="cliente.endCompl" />
				</div>
				<div class="col-md-5"></div>
			</div><br /><br />

			<!--QUINTA LINHA... -->
			<div class="row text-left">
				<div class="col-md-2">
					<span>Bairro:</span> 
					<input type="text" name="cliente.endBair" size="50" maxlength="50" id="endBair" class="form-control" value="${cliente.endBair}" />
					<ebf:validationMessage name="cliente.endBair" />
				</div>
				<div class="col-md-1">
					<span>Ident.Cidade:</span> 
					<input type="text" name="cliente.identCid" size="7" maxlength="7" id="identCid" class="form-control" value="${cliente.identCid}" />
					<ebf:validationMessage name="cliente.identCid" />
				</div>
				<div class="col-md-3">
					<span>Cidade:</span> 
					<select name="cliente.endCid" id="endCid" class="form-control" data-select="slCidadeNome" data-url="slCidade_Json_01"></select>
					<ebf:validationMessage name="cliente.endCid" />
				</div>
				<div class="col-md-1">
					<span>UF:</span> 
					<select name="cliente.endEst" id="endEst" class="form-control" data-select="slEstadoSigla" data-url="slEstado_Json_01"></select>
					<ebf:validationMessage name="cliente.endEst" />
				</div>
				<div class="col-md-2"></div>
			</div><br /><br />

			<!--SEXTA LINHA... -->
			<div class="row text-left">
				<div class="col-md-2">
					<span>CEP:</span>
					<input onkeypress="mask(maskCep, this, event);" type="text" name="cliente.endCep" size="10" maxlength="10" id="endCep" class="form-control" value="${cliente.endCep}" />
					<ebf:validationMessage name="cliente.endCep" />
				</div>
				<div class="col-md-3">
					<span>Pais:</span>
					<select name="cliente.endPais" id="endPais" class="form-control" data-select="slPais" data-url="slPais_Json_01"></select>
					<ebf:validationMessage name="cliente.endPais" />
				</div>
				<div class="col-md-1">
					<span>DDI:</span> 
					<input type="text" name="cliente.endDDI" size="5" maxlength="5" id="endDDI" class="form-control" value="${cliente.endDDI}" />
					<ebf:validationMessage name="cliente.endDDI" />
				</div>
				<div class="col-md-2"></div>
			</div><br /><br />

			<!--SÉTIMA LINHA... -->
			<div class="row text-left">
				<div class="col-md-1">
					<span>DDD:</span>
					<input type="text" name="cliente.endDDD" size="4" maxlength="2" id="endDDD" class="form-control" value="${cliente.endDDD}" />
					<ebf:validationMessage name="cliente.endDDD" />
				</div>
				<div class="col-md-2">
					<span>Telefone:</span> 
					<input onkeypress="mask(maskTelefone, this, event);" type="text" name="cliente.endTel" size="50" maxlength="50" id="endTel" class="form-control" value="${cliente.endTel}" />
					<ebf:validationMessage name="cliente.endTel" />
				</div>
				<div class="col-md-2">
					<span>Tel. Fax:</span>
					<input onkeypress="mask(maskTelefone, this, event);" type="text" name="cliente.endFax" size="50" maxlength="50" id="endFax" class="form-control" value="${cliente.endFax}" />
					<ebf:validationMessage name="cliente.endFax" />
				</div>
				<div class="col-md-1"></div>
			</div><br /><br />
			
			<!--OITAVA LINHA... -->
			<div class="row text-left">
				<div class="col-md-8">
					<span>Email:</span> 
					<textarea name="cliente.endEmail" id="endEmail" rows="2" cols="100" maxlength="800" class="form-control" >${cliente.endEmail}</textarea>
					<ebf:validationMessage name="cliente.endEmail" />
				</div>
				<div class="col-md-8"></div>
			</div>
			
  			</div> <!-- FECHAMENTO DA PRIMEIRA ABA -->
<!--		FIM DOS DADOS PRINCIPAIS -->  			


  			
<!--		DADOS DE ENTREGA, SEGUNDA "ABA" -->

		<!-- PRIMEIRA LINHA --> 
		<div id="tabs-2">
			<div class="row text-left">
				<div class="col-md-5">
					<span>Endereço Entr.:</span> 
					<input type="text" name="cliente.endEntgRua" size="100" maxlength="100" id="endEntgRua" class="form-control" value="${cliente.endEntgRua}" />
					<ebf:validationMessage name="cliente.endEntgRua" />
				</div>
				<div class="col-md-1">
					<span>Nro.Entr.:</span> 
					<input type="text" name="cliente.endEntgNum" size="10" maxlength="10" id="endEntgNum" class="form-control" value="${cliente.endEntgNum}" />
					<ebf:validationMessage name="cliente.endEntgNum" />
				</div>
				<div class="col-md-2">
					<span>Compl.Entr.:</span> 
					<input type="text" name="cliente.endEntgCompl" size="50" maxlength="50" id="endEntgCompl" class="form-control" value="${cliente.endEntgCompl}" />
					<ebf:validationMessage name="cliente.endEntgCompl" />
				</div>
				<div class="col-md-5"></div>
			</div><br /><br /> 
			
			<!-- SEGUNDA LINHA --> 
			<div class="row text-left">
				<div class="col-md-2">
					<span>Bairro Entr.:</span> 
					<input type="text" name="cliente.endEntgBair" size="50" maxlength="50" id="endEntgBair" class="form-control" value="${cliente.endEntgBair}" />
					<ebf:validationMessage name="cliente.endEntgBair" />
				</div>
				<div class="col-md-1">
					<span>Ident.Cid.Entr.:</span> 
					<input type="text" name="cliente.identEntgCid" size="7" maxlength="7" id="identEntgCid" class="form-control" value="${cliente.identEntgCid}" />
					<ebf:validationMessage name="cliente.identEntgCid" />
				</div>
				<div class="col-md-3">
					<span>Cidade Entr.:</span> 
					<select name="cliente.endEntgCid" id="endEntgCid" class="form-control" data-select="slCidadeNome" data-url="slCidade_Json_01"></select>
					<ebf:validationMessage name="cliente.endEntgCid" />
				</div>
				<div class="col-md-1">
					<span>UF Entr.:</span>
					<select name="cliente.endEntgEst" id="endEntgEst" class="form-control" data-select="slEstadoSigla" data-url="slEstado_Json_01"></select>
					<ebf:validationMessage name="cliente.endEntgEst" />
				</div>
				<div class="col-md-2"></div>
			</div><br /><br />
			
			<!-- TERCEIRA LINHA	-->	 
			<div class="row text-left">	
				<div class="col-md-2">
					<span>CEP Entr.:</span>
					<input onkeypress="mask(maskCep, this, event);" type="text" name="cliente.endEntgCep" size="10" maxlength="10" id="endEntgCep" class="form-control" value="${cliente.endEntgCep}" /><br />
					<ebf:validationMessage name="cliente.endEntgCep" />
				</div>
				<div class="col-md-3">
					<span>País Entr.:</span>
					<select name="cliente.endEntgPais" id="endEntgPais" class="form-control" data-select="slPais" data-url="slPais_Json_01"></select>
					<ebf:validationMessage name="cliente.endEntgPais" />
				</div>
				<div class="col-md-1">
					<span>DDI Entr.:</span>
					<input type="text" name="cliente.endEntgDDI" size="5" maxlength="5" id="endEntgDDI" class="form-control" value="${cliente.endEntgDDI}" />
					<ebf:validationMessage name="cliente.endEntgDDI" />
				</div>
				<div class="col-md-2"></div>
			</div><br /><br /> 
			
			<!-- QUARTA LINHA -->		 
			<div class="row text-left">	
				<div class="col-md-1">
					<span>DDD Entr.:</span>
					<input type="text" name="cliente.endEntgDDD" size="5" maxlength="5" id="endEntgDDD" class="form-control" value="${cliente.endEntgDDD}" />
					<ebf:validationMessage name="cliente.endEntgDDD" />
				</div>
				<div class="col-md-2">
					<span>Tel.Entr.:</span>
					<input onkeypress="mask(maskTelefone, this, event);" type="text" name="cliente.endEntgTel" size="50" maxlength="50" id="endEntgTel" class="form-control" value="${cliente.endEntgTel}" />
					<ebf:validationMessage name="cliente.endEntgTel" />
				</div>
				<div class="col-md-2">
					<span>Fax Entr.:</span>
					<input onkeypress="mask(maskTelefone, this, event);" type="text" name="cliente.endEntgFax" size="50" maxlength="50" id="endEntgFax" class="form-control" value="${cliente.endEntgFax}" />
					<ebf:validationMessage name="cliente.endEntgFax" />
				</div>
				<div class="col-md-2"></div>
			</div><br /><br />
			
			<!-- QUINTA LINHA -->		
			<div class="row text-left">	
				<div class="col-md-8">
					<span>Email Entr.:</span>
					<textarea name="cliente.endEntgEmail" id="endEntgEmail" rows="2" cols="100" maxlength="800" class="form-control">${cliente.endEntgEmail}</textarea>
					<ebf:validationMessage name="cliente.endEntgEmail" />
				</div>
				<div class="col-md-8"></div>
			</div><br /><br />
			
			</div> <!-- FECHAMENTO DA SEGUNDA ABA -->
			 
<!--		FIM DOS DADOS DE ENTREGA, SEGUNDA "ABA"  			 -->
  				
  			
  			
<!--		DADOS DE PAGAMENTO, TERCEIRA "ABA"  			 -->
  			
<!-- 		PRIMEIRA LINHA -->
			<div id="tabs-3">
			<div class="row text-left">				
				<div class="col-md-5">
					<span>End.Pagto:</span>
					<input type="text" name="cliente.endPagRua" size="100" maxlength="100" id="endPagRua" class="form-control" value="${cliente.endPagRua}" />
					<ebf:validationMessage name="cliente.endPagRua" />
				</div>
				<div class="col-md-1">
					<span>End.Nro.Pgto.:</span>
					<input type="text" name="cliente.endPagNum" size="10" maxlength="10" id="endPagNum" class="form-control" value="${cliente.endPagNum}" />
					<ebf:validationMessage name="cliente.endPagNum" />
				</div>
				<div class="col-md-2">
					<span>Compl.End.Pgto.:</span>
					<input type="text" name="cliente.endPagCompl" size="50" maxlength="50" id="endPagCompl" class="form-control" value="${cliente.endPagCompl}" />
					<ebf:validationMessage name="cliente.endPagCompl" />
				</div>
				<div class="col-md-5"></div>
			</div><br /><br />
						
<!-- 		SEGUNDA LINHA -->
			<div class="row text-left">
				<div class="col-md-2">
					<span>Bairro Pgto.:</span>
					<input type="text" name="cliente.endPagBair" size="50" maxlength="50" id="endPagBair" class="form-control" value="${cliente.endPagBair}" />
					<ebf:validationMessage name="cliente.endPagBair" />
				</div>
				<div class="col-md-1">
					<span>Ident.Cid.Pgto:</span> 
					<input type="text" name="cliente.identPagCid" size="7" maxlength="7" id="identPagCid" class="form-control" value="${cliente.identPagCid}" />
					<ebf:validationMessage name="cliente.identPagCid" />
				</div>
				<div class="col-md-3">
					<span>Cidade Pgto.:</span>
					<select name="cliente.endPagCid" id="endPagCid" class="form-control" data-select="slCidadeNome" data-url="slCidade_Json_01"></select>
					<ebf:validationMessage name="cliente.endPagCid" />
				</div>
				<div class="col-md-1">
					<span>UF Pgto.:</span>
					<select name="cliente.endPagEst" id="endPagEst" class="form-control" data-select="slEstadoSigla" data-url="slEstado_Json_01"></select>
					<ebf:validationMessage name="cliente.endPagEst" />
				</div>
				<div class="col-md-2"></div>
			</div><br /><br />  
			
<!--		TERCEIRA LINHA -->
			<div class="row text-left">
				<div class="col-md-2">
					<span>CEP Pgto.:</span>
					<input onkeypress="mask(maskCep, this, event);" type="text" name="cliente.endPagCep" size="10" maxlength="10" id="endPagCep" class="form-control" value="${cliente.endPagCep}" />
					<ebf:validationMessage name="cliente.endPagCep" />
				</div>
				<div class="col-md-3">
					<span>País Pgto.:</span>
					<select name="cliente.endPagPais" id="endPagPais" class="form-control" data-select="slPais" data-url="slPais_Json_01"></select>
					<ebf:validationMessage name="cliente.endPagPais" />
				</div>
				<div class="col-md-1">
					<span>DDI Pgto.:</span>
					<input type="text" name="cliente.endPagDDI" size="5" maxlength="5" id="endPagDDI" class="form-control" value="${cliente.endPagDDI}" />
					<ebf:validationMessage name="cliente.endPagDDI" />
				</div>
				<div class="col-md-2"></div>
			</div><br /><br />  
			
<!--		QUARTA LINHA -->
			<div class="row text-left">
				<div class="col-md-1">
					<span>DDD Pgto.:</span>
					<input type="text" name="cliente.endPagDDD" size="5" maxlength="5" id="endPagDDD" class="form-control" value="${cliente.endPagDDD}" />
					<ebf:validationMessage name="cliente.endPagDDD" />
				</div>
				<div class="col-md-2">
					<span>Tel. Pgto.:</span> 
					<input onkeypress="mask(maskTelefone, this, event);" type="text" name="cliente.endPagTel" size="50" maxlength="50" id="endPagTel" class="form-control" value="${cliente.endPagTel}" />
					<ebf:validationMessage name="cliente.endPagTel" />
				</div>
				<div class="col-md-2">
					<span>Fax Pgto.:</span>
					<input onkeypress="mask(maskTelefone, this, event);" type="text" name="cliente.endPagFax" size="50" maxlength="50" id="endPagFax" class="form-control" value="${cliente.endPagFax}" />
					<ebf:validationMessage name="cliente.endPagFax" />
				</div>
				<div class="col-md-1"></div>
			</div><br /><br />  
			
<!-- 		QUINTA LINHA -->
			<div class="row text-left">
				<div class="col-md-8">
					<span>Email Pgto.:</span>
					<textarea name="cliente.endPagEmail" id="endPagEmail" rows="2" cols="100" maxlength="800" class="form-control">${cliente.endPagEmail}</textarea>
					<ebf:validationMessage name="cliente.endPagEmail" />
				</div>
				<div class="col-md-8"></div>
			</div><br /><br />  
			
<!-- 		SEXTA LINHA -->
			<div class="row text-left">
				<div class="col-md-3">
					<span>Num.Cad.Repr.:</span>
					<select name="cliente.numCadRepre" id="numCadRepre" class="form-control" data-select="slRepresentante" data-url="slRepresentante_Json_01"></select>
					<ebf:validationMessage name="cliente.numCadRepre" />
				</div>
				<div class="col-md-2"></div>
			</div><br /><br />
  			
  			</div> <!-- FECHAMENTO DA TERCEIRA ABA -->
  			
 <!--		FIM DOS DADOS DE PAGAMENTO, TERCEIRA "ABA" -->



<!-- 		DADOS BANCÁRIOS, QUARTA "ABA" -->

<!-- 		PRIMEIRA LINHA -->
			<div id="tabs-4">  			
			<div class="row text-left">
				<div class="col-md-1">
					<span>Num.Banco:</span> 
					<input type="text" name="cliente.numBanco" size="10" maxlength="10" id="numBanco" class="form-control" value="${cliente.numBanco}" />
					<ebf:validationMessage name="cliente.numBanco" />
				</div>
					<div class="col-md-7">
					<span>Nome Banco:</span>
					<input type="text" name="cliente.nomeBanco" size="50" maxlength="50" id="nomeBanco" class="form-control" value="${cliente.nomeBanco}" />
					<ebf:validationMessage name="cliente.nomeBanco" />
				</div>
				<div class="col-md-4"></div>
			</div><br /><br />   
			
<!-- 		SEGUNDA LINHA -->
			<div class="row text-left">
				<div class="col-md-1">
					<span>Num.Agência:</span> 
					<input type="text" name="cliente.numAgenciaBanco" size="10" maxlength="10" id="numAgenciaBanco" class="form-control" value="${cliente.numAgenciaBanco}" />
					<ebf:validationMessage name="cliente.numAgenciaBanco" />
				</div>
				<div class="col-md-1">
					<span>Dig.Agência:</span> 
					<input type="text" name="cliente.digAgenciaBanco" size="2" maxlength="2" id="digAgenciaBanco" class="form-control" value="${cliente.digAgenciaBanco}" />
					<ebf:validationMessage name="cliente.digAgenciaBanco" />
				</div>
				<div class="col-md-4">
					<span>Nome Agência:</span> 
					<input type="text" name="cliente.nomeAgenciaBanco" size="50" maxlength="50" id="nomeAgenciaBanco" class="form-control" value="${cliente.nomeAgenciaBanco}" />
					<ebf:validationMessage name="cliente.nomeAgenciaBanco" />
				</div>
				<div class="col-md-1"></div>
			</div><br /><br /> 
				
<!-- 		TERCEIRA LINHA -->
			<div class="row text-left">
				<div class="col-md-1">
					<span>Nro.Conta:</span> 
					<input type="text" name="cliente.numContaBanco" size="10" maxlength="10" id="numContaBanco" class="form-control" value="${cliente.numContaBanco}" />
					<ebf:validationMessage name="cliente.numContaBanco" />
				</div>
				<div class="col-md-1">
					<span>Dig.Conta:</span> 
					<input type="text" name="cliente.digContaBanco" size="2" maxlength="2" id="digContaBanco" class="form-control" value="${cliente.digContaBanco}" />
					<ebf:validationMessage name="cliente.digContaBanco" />
				</div>
				<div class="col-md-4">
					<span>Titular:</span> 
					<input type="text" name="cliente.titularCtaBanco" size="50" maxlength="50" id="titularCtaBanco" class="form-control" value="${cliente.titularCtaBanco}" />
					<ebf:validationMessage name="cliente.titularCtaBanco" />
				</div>
				<div class="col-md-1"></div>
			</div><br /><br />  
			
<!-- 		QUARTA LINHA -->
			<div class="row text-left">
				<div class="col-md-2">
					<span>Num. Suframa:</span> 
					<input type="text" name="cliente.numSuframa" size="50" maxlength="50" id="numSuframa" class="form-control" value="${cliente.numSuframa}" />
					<ebf:validationMessage name="cliente.numSuframa" />
				</div>
				<div class="col-md-2">
					<span>Tipo Cliente:</span>
					<select name="cliente.tipoCli" id="tipoCli" class="form-control" data-select="sl" data-url="sl">
						<option value="Autopeça">Autopeça</option>
						<option value="Comercial Exportador">Comercial Exportador</option>
						<option value="Fornecedor">Fornecedor</option>
						<option value="Funcionario">Funcionario</option>
						<option value="GrupoEBF"> GrupoEBF</option>
						<option value="Moeda"> Moeda</option>
						<option value="Motopeça"> Motopeça</option>
						<option value="Motopeça Montadora"> Motopeça Montadora</option>
						<option value="Representante"> Representante</option>
						<option value="Sliter"> Sliter</option>
						<option value="Sucata"> Sucata</option>
						<option value="WEB"> WEB</option>
					</select>
					<ebf:validationMessage name="cliente.tipoCli" />
				</div>
				<div class="col-md-4">
					<span>Formas de Pgto.</span> 
					<select name="cliente.pagamentos" id="pagamentos" class="form-control" data-select="sl" data-url="sl">
						<option value="À Vista">À Vista</option>
						<option value="Política">Política</option>
						<option value="À Prazo">À Prazo</option>
					</select>
					<ebf:validationMessage name="cliente.pagamentos" />
				</div>
				<div class="col-md-2"></div>
			</div><br /><br />  
			
<!-- 		QUINTA LINHA -->
			<div class="row text-left">
				<div class="col-md-4">
					<span>Vencimentos:</span> 
					<input type="text" name="cliente.vencimentos" size="50" maxlength="50" id="vencimentos" class="form-control" value="${cliente.vencimentos}" />
					<ebf:validationMessage name="cliente.vencimentos" />
				</div>
				<div class="col-md-4">
					<span>Restrição:</span> 
					<select name="cliente.restricao" id="restricao" class="form-control" data-select="sl" data-url="sl">
						<option value="Sem restrições">Sem restrições</option>
						<option value="Somente à vista antecipado">Somente à vista antecipado</option>
						<option value="Bloqueado">Bloqueado</option>
						<option value="Inativo">Inativo</option>
					</select>
					<ebf:validationMessage name="cliente.restricao" />
				</div>
				<div class="col-md-4"></div>
			</div><br /><br /> 
			
<!-- 		SEXTA LINHA -->
			<div class="row text-left">
			<div class="col-md-1">
					<span>ZFM Alcom:</span> 
					<select name="cliente.zfmAlcom" id="zfmAlcom" class="form-control" data-select="sl" data-url="sl">
						<option value="S">Sim</option>
						<option value="N">Não</option>
					</select>
					<ebf:validationMessage name="cliente.zfmAlcom" />
				</div>
				<div class="col-md-1">
					<span>Teste:</span> 
					<select name="cliente.teste" id="teste" class="form-control" data-select="sl" data-url="sl">
						<option value="S">Sim</option>
						<option value="N">Não</option>
					</select>
					<ebf:validationMessage name="cliente.teste" />
				</div>
				<div class="col-md-2">
					<span>Num.Transp.:</span> 
					<select name="cliente.numTransp" id="numTransp" class="form-control" data-select="slTransportadora" data-url="slTransportadora_Json_01"></select>
					<ebf:validationMessage name="cliente.numTransp" />
				</div>
				<div class="col-md-1">
					<span>Calc.IPI:</span> 
					<select name="cliente.calcIPI" id="calcIPI" class="form-control" data-select="sl" data-url="sl">
						<option value="N">Não</option>
						<option value="S">Sim</option>
					</select>
					<ebf:validationMessage name="cliente.calcIPI" />
				</div>
				<div class="col-md-1">
					<span>Num.Msg.IPI:</span> 
					<input type="text" name="cliente.numMsgIPI" size="7" maxlength="7" id="numMsgIPI" class="form-control" value="${cliente.numMsgIPI}" />
					<ebf:validationMessage name="cliente.numMsgIPI" />
				</div>
				<div class="col-md-1">
					<span>Calc.ICM:</span> 
					<select name="cliente.calcICM" id="calcICM" class="form-control" data-select="sl" data-url="sl">
						<option value="N">Não</option>
						<option value="S">Sim</option>
					</select>
					<ebf:validationMessage name="cliente.calcICM" />
				</div>
				<div class="col-md-1">
					<span>Num.Msg.ICM:</span> 
					<input type="text" name="cliente.numMsgICM" size="7" maxlength="7" id="numMsgICM" class="form-control" value="${cliente.numMsgICM}" /><br />
					<ebf:validationMessage name="cliente.numMsgICM" />
				</div>
				<div class="col-md-1"></div>
			</div><br /><br />		 		
				 
<!-- 		SÉTIMA LINHA -->
			<div class="row text-left">
				<div class="col-md-4">
					<span>Nome Cliente Bco.:</span> 
					<input type="text" name="cliente.nomeClienteBanco" size="50" maxlength="50" id="nomeClienteBanco" class="form-control" value="${cliente.nomeClienteBanco}" />
					<ebf:validationMessage name="cliente.nomeClienteBanco" />
				</div>
				<div class="col-md-2">
					<span>Fora semana:</span> 
					<select name="cliente.foraSemana" id="foraSemana" class="form-control" data-select="sl" data-url="sl">
						<option value="S">Sim</option>
						<option value="N">Não</option>
					</select>
					<ebf:validationMessage name="cliente.foraSemana" />
				</div>
				<div class="col-md-1">
					<span>Vencim.Esp.:</span> 
					<select name="cliente.vencEspecifico" id="vencEspecifico" class="form-control" data-select="sl" data-url="sl">
						<option value="S">Sim</option>
						<option value="N">Não</option>
					</select>
					<ebf:validationMessage name="cliente.vencEspecifico" />
				</div>
				<div class="col-md-1">
					<span>Dia semana:</span> 
					<select name="cliente.diaSemana" id="diaSemana" class="form-control" data-select="sl" data-url="sl">
						<option value="Seg">SEG</option>
						<option value="Ter">TER</option>
						<option value="Qua">QUA</option>
						<option value="Qui">QUI</option>
						<option value="Sex">SEX</option>
					</select>
					<ebf:validationMessage name="cliente.diaSemana" />
				</div>
				<div class="col-md-4"></div>
			</div><br /><br /> 
				
<!-- 		OITAVA LINHA -->
			<div class="row text-left">
				<div class="col-md-3">
					<span>Num.Repr.ECO:</span>
					<select name="cliente.numCadRepreEco" id="numCadRepreEco" class="form-control" data-select="slRepresentante" data-url="slRepresentante_Json_01"></select>
					<ebf:validationMessage name="cliente.numCadRepreEco" />
				</div>
				
				<div class="col-md-3">
					<span>Num.Repr.VAZLOG:</span>
					<select name="cliente.numCadRepreVazLog" id="numCadRepreVazLog" class="form-control" data-select="slRepresentante" data-url="slRepresentante_Json_01"></select>
					<ebf:validationMessage name="cliente.numCadRepreVazLog" />
				</div> 
				
<!--            PEENCHER AUTOMATICAMENTE, COM O USUÁRIO QUE SALVOU/ALTEROU O CADASTRO DA ULTIMA VEZ ???   -->
<!-- 			COLUNA "QUEM ALTEROU"	 -->			
				<div class="col-md-2">
					<span>Sujeito Cartório:</span>
					<select name="cliente.sujeitoCartorio" id="sujeitoCartorio" class="form-control" data-select="sl" data-url="sl">
						<option value="S">Sim</option>
						<option value="N">Não</option>
					</select>
					<ebf:validationMessage name="cliente.sujeitoCartorio" />					
				</div>
				<div class="col-md-3"></div>
			</div><br /><br />  

<!-- 		NONA LINHA -->				
			<div class="row text-left">
				<div class="col-md-1">
					<span>NF Ultima Fat.:</span>
					<input type="text" name="cliente.notaUltFatura" size="11" maxlength="11" id="notaUltFatura" class="form-control" value="${cliente.notaUltFatura}" disabled/>
					<ebf:validationMessage name="cliente.notaUltFatura" />
				</div>
				<div class="col-md-1">
					<span>Série NF U.Fat.:</span>
					<input type="text" name="cliente.serieNotaUltFatura" size="3" maxlength="3" id="serieNotaUltFatura" class="form-control" value="${cliente.serieNotaUltFatura}" disabled />
					<ebf:validationMessage name="cliente.serieNotaUltFatura" />
				</div>
				<div class="col-md-2">
					<span>Data Ult.Fat.:</span>
					<input type="date" name="cliente.dataUltFatura" id="dataUltFatura" class="form-control" value="${cliente.dataUltFatura}" disabled />
					<ebf:validationMessage name="cliente.dataUltFatura" />
				</div>
				<div class="col-md-1">
					<span>Valor Ult.Fat.:</span>
					<input type="text" name="cliente.valorUltFatura" id="valorUltFatura" class="form-control" value="<fmt:formatNumber value="${cliente.valorUltFatura}" pattern="#,##0.00" />" disabled />
					<ebf:validationMessage name="cliente.valorUltFatura" />
				</div>
				<div class="col-md-1">
					<span>Limite Créd.:</span>
					<input type="text" name="cliente.limiteCredito" id="limiteCredito" class="form-control" value="<fmt:formatNumber value="${cliente.limiteCredito}" pattern="#,##0.00" />" />
					<ebf:validationMessage name="cliente.limiteCredito" />
				</div>
				<div class="col-md-1">
					<span>Valor em aberto:</span>
					<input type="text" name="cliente.valorEmAberto" id="valorEmAberto" class="form-control" value="<fmt:formatNumber value="${cliente.valorEmAberto}" pattern="#,##0.00" />" disabled />
					<ebf:validationMessage name="cliente.valorEmAberto" />
				</div>
				<div class="col-md-1">
					<span>Saldo:</span>
					<input type="text" name="cliente.saldo" id="saldo" class="form-control" value="<fmt:formatNumber value="${cliente.saldo}" pattern="#,##0.00" />" disabled />
					<ebf:validationMessage name="cliente.saldo" />
				</div>
				<div class="col-md-1"></div>
			</div>
			<br />  
			
<!-- 		DÉCIMA LINHA -->				 
			<div class="row text-left">
				<div class="col-md-1">
					<span>Frete:</span>
					<input type="text" name="cliente.frete" size="10" maxlength="10" id="frete" class="form-control" value="${cliente.frete}" />
					<ebf:validationMessage name="cliente.frete" />
				</div>
				<div class="col-md-1">
					<span>Atividade:</span>
					<input type="text" name="cliente.atividade" size="10" maxlength="10" id="atividade" class="form-control" value="${cliente.atividade}" />
					<ebf:validationMessage name="cliente.atividade" />
				</div>				
				<div class="col-md-1">
					<span>Comissão fixa:</span>
					<input type="text" name="cliente.comissaoFixa" id="comissaoFixa" class="form-control" value="<fmt:formatNumber value="${cliente.comissaoFixa}" pattern="#,##0.00" />" />
					<ebf:validationMessage name="cliente.comissaoFixa" />
				</div>
				<div class="col-md-1">
					<span>Limite Créd.Fixo:</span>
					<input type="text" name="cliente.limiteCreditoFixo" id="limiteCreditoFixo" class="form-control" value="<fmt:formatNumber value="${cliente.limiteCreditoFixo}" pattern="#,##0.00" />" />
					<ebf:validationMessage name="cliente.limiteCreditoFixo" />
				</div>
				<div class="col-md-2">
					<span>Desc. 7% ICMS Sufr.:</span>
					<select name="cliente.desc7IcmsSufr" id="desc7IcmsSufr" class="form-control" data-select="sl" data-url="sl">
						<option value="S">Sim</option>
						<option value="N">Não</option>
					</select>
					
					<ebf:validationMessage name="cliente.desc7IcmsSufr" />
				</div>
				<div class="col-md-2">
					<span>Isento ICMS Sub.Trib.:</span>
					<select name="cliente.isentoIcmsSubsTrib" id="isentoIcmsSubsTrib" class="form-control" data-select="sl" data-url="sl">
						<option value="S">Sim</option>
						<option value="N">Não</option>
					</select>
					<ebf:validationMessage name="cliente.isentoIcmsSubsTrib" />
				</div>
				<div class="col-md-1"></div>
			</div><br /><br /> 
			
<!-- 		DÉCIMA PRIMEIRA LINHA  -->
			<div class="row text-left">
				<div class="col-md-8">
					<span>Obs.ICMS Sub.Trib.:</span>
					<textarea name="cliente.observIcmsSubsTrib" id="observIcmsSubsTrib" rows="2" cols="100" maxlength="200" class="form-control" >${cliente.observIcmsSubsTrib}</textarea>
					<ebf:validationMessage name="cliente.observIcmsSubsTrib"/>
				</div>
				<div class="col-md-8"></div>
			</div><br /><br /> 
			
<!-- 		DÉCIMA SEGUNDA LINHA  --> 
			<div class="row text-left">
				<div class="col-md-2">
					<span>Tipo Entidade:</span>
					<select name="cliente.tipoEntidade" id="tipoEntidade" class="form-control" data-select="sl" data-url="sl">
						<option value="Fisica">Fisica</option>
						<option value="Juridica">Juridica</option>
					</select>
					<ebf:validationMessage name="cliente.tipoEntidade"/>
				</div>
				<div class="col-md-1">
					<span>R$ Ped.Abertos:</span>
					<input type="text" name="cliente.vlrPedidosAbertos" id="vlrPedidosAbertos" class="form-control" value="<fmt:formatNumber value="${cliente.vlrPedidosAbertos}" pattern="#,##0.00" />" disabled />
					<ebf:validationMessage name="cliente.vlrPedidosAbertos"/>
				</div>
				<div class="col-md-1">
					<span>R$ Dupl.Abertas:</span>
					<input type="text" name="cliente.vlrDuplicatasAbertas" id="vlrDuplicatasAbertas" class="form-control" value="<fmt:formatNumber value="${cliente.vlrDuplicatasAbertas}" pattern="#,##0.00" />" disabled />
					<ebf:validationMessage name="cliente.vlrDuplicatasAbertas"/>
				</div>
				<div class="col-md-1">
					<span>STS Protesto:</span>
					<select name="cliente.stsProtesto" id="stsProtesto" class="form-control" data-select="sl" data-url="sl">
						<option value="S">Sim</option>
						<option value="N">Não</option>
					</select>
					<ebf:validationMessage name="cliente.stsProtesto" />					
				</div>
				<div class="col-md-1">
					<span>Calc.ICMS Subst.:</span>
					<select name="cliente.calcICMSubst" id="calcICMSubst" class="form-control" data-select="sl" data-url="sl">
						<option value="S">Sim</option>
						<option value="N">Não</option>
					</select>
					<ebf:validationMessage name="cliente.calcICMSubst" />					
				</div>
				<div class="col-md-1">
					<span>Cód.País:</span>
					<select name="cliente.codPais" id="codPais" class="form-control" data-select="slPais" data-url="slPais_Json_01"></select>
					<ebf:validationMessage name="cliente.codPais"/>
				</div>
				<div class="col-md-1">
					<span>Bloq.Autom.:</span>
					<select name="cliente.bloqAutomatico" id="bloqAutomatico" class="form-control" data-select="sl" data-url="sl">
						<option value="S">Sim</option>
						<option value="N">Não</option>
					</select>
					<ebf:validationMessage name="cliente.bloqAutomatico" />					
				</div>
				<div class="col-md-2"></div>
			</div><br /><br /> 
				
<!-- 		DÉCIMA TERCEIRA LINHA -->
			<div class="row text-left">
				<div class="col-md-1">
					<span>NCM Export.:</span>
					<select name="cliente.ncmExportacao" id="ncmExportacao" class="form-control" data-select="sl" data-url="sl">
						<option value="N">Não</option>
						<option value="S">Sim</option>
					</select>
					<ebf:validationMessage name="cliente.ncmExportacao" />					
				</div>
				<div class="col-md-1">
					<span>Retorno:</span>
					<select name="cliente.retorno" id="retorno" class="form-control" data-select="sl" data-url="sl">
						<option value="S">Sim</option>
						<option value="N">Não</option>
					</select>
					<ebf:validationMessage name="cliente.retorno" />					
				</div>
				<div class="col-md-1">
					<span>Cód.Interno:</span>
					<input type="text" name="cliente.codigoInterno" size="5" maxlength="5" id="codigoInterno" class="form-control" value="${cliente.codigoInterno}" />
					<ebf:validationMessage name="cliente.codigoInterno"/>
				</div>
				<div class="col-md-1">
					<span>Divisão:</span>
					<input type="text" name="cliente.divisao" size="2" maxlength="2" id="divisao" class="form-control" value="${cliente.divisao}" />
					<ebf:validationMessage name="cliente.divisao"/>
				</div>
				<div class="col-md-1">
					<span>CFOP:</span>
					<input type="text" name="cliente.cfop" size="5" maxlength="5" id="cfop" class="form-control" value="${cliente.cfop}" />
					<ebf:validationMessage name="cliente.cfop"/>
				</div>
				<div class="col-md-1">
					<span>Contrato:</span>
					<select name="cliente.contrato" id="contrato" class="form-control" data-select="sl" data-url="sl">
						<option value="N">Não</option>
						<option value="S">Sim</option>
					</select>
					<ebf:validationMessage name="cliente.contrato" />					
				</div>
				<div class="col-md-1">
					<span>Comercial Bloq.:</span>
					<select name="cliente.comercialBloq" id="comercialBloq" class="form-control" data-select="sl" data-url="sl">
						<option value="N">Não</option>
						<option value="S">Sim</option>
					</select>
					<ebf:validationMessage name="cliente.comercialBloq" />					
				</div>
				<div class="col-md-1">
					<span>Financeiro Bloq.:</span>
					<select name="cliente.financeiroBloq" id="financeiroBloq" class="form-control" data-select="sl" data-url="sl">
						<option value="N">Não</option>
						<option value="S">Sim</option>
					</select>
					<ebf:validationMessage name="cliente.financeiroBloq" />					
				</div>
				<div class="col-md-1"></div>
			</div><br /><br /> 
						
<!-- 		DÉCIMA QUARTA LINHA -->
			<div class="row text-left">
				<div class="col-md-8">
					<span>Obs.Comercial:</span>
					<textarea name="cliente.comercialObs" id="comercialObs" rows="2" cols="100" maxlength="200" class="form-control">${cliente.comercialObs}</textarea>
					<ebf:validationMessage name="cliente.comercialObs" />								
				</div>
				<div class="col-md-8"></div>
			</div><br /><br />  
			  
<!-- 		DÉCIMA QUINTA LINHA  --> 
			<div class="row text-left">			
				<div class="col-md-8">
					<span>Email Packing List:</span>
					<textarea name="cliente.emailPackInList" id="emailPackInList" rows="3" cols="100" maxlength="1500" class="form-control">${cliente.emailPackInList}</textarea>
					<ebf:validationMessage name="cliente.emailPackInList" />								
				</div>
				<div class="col-md-8"></div>
			</div><br /><br />  
			
<!-- 		DÉCIMA SEXTA LINHA -->
			<div class="row text-left">			
				<div class="col-md-1">
					<span>Verificado:</span>
					<select name="cliente.verificado" id="verificado" class="form-control" data-select="sl" data-url="sl">
						<option value="S">Sim</option>
						<option value="N">Não</option>
					</select>
					<ebf:validationMessage name="cliente.verificado" />					
				</div>
				<div class="col-md-2">
					<span>Dt. Verificado:</span>
					<input type="date" name="cliente.dataVerificado" id="dataVerificado" class="form-control" value="${cliente.dataVerificado}" />
					<ebf:validationMessage name="cliente.dataVerificado"/>
				</div>
				<div class="col-md-1">
					<span>Potencial VAZCAP:</span>
					<input type="text" name="cliente.potencialVazCap" id="potencialVazCap" class="form-control" value="<fmt:formatNumber value="${cliente.potencialVazCap}" pattern="#,##0.00" />" />					
					<ebf:validationMessage name="cliente.potencialVazCap"/>
				</div>
				<div class="col-md-1">
					<span>Potencial VAZLOG:</span>
					<input type="text" name="cliente.potencialVazLog" id="potencialVazLog" class="form-control" value="<fmt:formatNumber value="${cliente.potencialVazLog}" pattern="#,##0.00" />" />
					<ebf:validationMessage name="cliente.potencialVazLog"/>
				</div>
				<div class="col-md-2">
					<span>Potencial ECOPADS:</span>
					<input type="text" name="cliente.potencialEcoPads" id="potencialEcoPads" class="form-control" value="<fmt:formatNumber value="${cliente.potencialEcoPads}" pattern="#,##0.00" />" />
					<ebf:validationMessage name="cliente.potencialEcoPads"/>
				</div>
				<div class="col-md-1">
					<span>Potencial ECO:</span>
					<input type="text" name="cliente.potencialEco" id="potencialEco" class="form-control" value="<fmt:formatNumber value="${cliente.potencialEco}" pattern="#,##0.00" />" />					
					<ebf:validationMessage name="cliente.potencialEco"/>
				</div>
				<div class="col-md-1"></div>
			</div><br /><br />   
				
<!-- 		DÉCIMA SÉTIMA LINHA  -->
			<div class="row text-left">
				<div class="col-md-1">
					<span>Potencial EBF:</span>
					<input type="text" name="cliente.potencialEbf" id="potencialEbf" class="form-control" value="<fmt:formatNumber value="${cliente.potencialEbf}" pattern="#,##0.00" />" />
					<ebf:validationMessage name="cliente.potencialEbf"/>
				</div>
				<div class="col-md-1">
					<span>Ramal PRC:</span>
					<input type="text" name="cliente.ramalPrc" size="5" maxlength="5"  id="ramalPrc" class="form-control" value="${cliente.ramalPrc}" />
					<ebf:validationMessage name="cliente.ramalPrc"/>
				</div>
				<div class="col-md-1">
					<span>Descartado:</span>
					<select name="cliente.descartado" id="descartado" class="form-control" data-select="sl" data-url="sl">
						<option value="PRC">PRC</option>
						<option value="COM">COM</option>
					</select>
					<ebf:validationMessage name="cliente.descartado"/>
				</div>
				<div class="col-md-2">
					<span>Perfil:</span>
					<select name="cliente.perfil" id="perfil" class="form-control" data-select="sl" data-url="sl">
						<option value="COMPRA_DIRETO_DA_VAZ">COMPRA_DIRETO_DA_VAZ</option>
						<option value="COMPRA_POR_DISTRIBUIDOR">COMPRA_POR_DISTRIBUIDOR</option>
						<option value="COMPRA_POR_REPRESENTANTE">COMPRA_POR_REPRESENTANTE</option>
						<option value="NAO_INFORMADO">NAO_INFORMADO</option>
						<option value="NAO_VAI_MAIS_COMPRAR">NAO_VAI_MAIS_COMPRAR</option>
					</select>
					<ebf:validationMessage name="cliente.perfil"/>
				</div>
				<div class="col-md-1">
					<span>Compra de:</span>
					<input type="text" name="cliente.compraDe" size="7" maxlength="7"  id="compraDe" class="form-control" value="${cliente.compraDe}" />
					<ebf:validationMessage name="cliente.compraDe"/>
				</div>
				<div class="col-md-1">
					<span>key Account:</span>
					<select name="cliente.keyAccount" id="keyAccount" class="form-control" data-select="sl" data-url="sl">
						<option value="SIM">Sim</option>
						<option value="NÃO">Não</option>
					</select>
					<ebf:validationMessage name="cliente.keyAccount"/>
				</div>
				<div class="col-md-1"></div>
			</div><br /><br /> 
				
<!-- 		DÉCIMA OITAVA LINHA -->
			<div class="row text-left">
				<div class="col-md-8">
					<span>Gestor Cliente:</span>
					<textarea name="cliente.gestorCliente" id="gestorCliente" rows="2" cols="100" maxlength="100" class="form-control" >${cliente.gestorCliente}</textarea>
					<ebf:validationMessage name="cliente.gestorCliente" />
				</div>								
				<div class="col-md-8"></div>
			</div><br /><br />

<!-- 		DÉCIMA NONA LINHA -->
			<div class="row text-left">
				<div class="col-md-8">
					<span>Observação:</span>
					<textarea name="cliente.observ" id="observ" rows="2" cols="100" maxlength="200" class="form-control">${cliente.observ}</textarea>
					<ebf:validationMessage name="cliente.observ" />
				</div>								
				<div class="col-md-8"></div>
			</div><br /><br />  
			
<!-- 		VIGÉSIMA LINHA -->
<!-- 		PREENCHER AUTOMATICAMENTE -->
			<div class="row text-left">
				<div class="col-md-2">
					<span>Dt. alteração:</span>
					<input type="date" name="cliente.dataAlteracao" id="dataAlteracao" class="form-control" value="${cliente.dataAlteracao}" disabled />
					<ebf:validationMessage name="cliente.dataAlteracao"/>
				</div> 

<!--		PREENCHER AUTOMATICAMENTE -->			
				<div class="col-md-2">
					<span>Usuário alteração:</span>
					<input type="text" name="cliente.userAlteracao" id="userAlteracao" class="form-control" value="${cliente.userAlteracao}" disabled />
					<ebf:validationMessage name="cliente.userAlteracao"/>
				</div>
				<div class="col-md-2"></div> 
			</div>  
		</div> <!-- 	FECHAMENTO DA QUARTA ABA AQUI !!!!!! -->
		</div> <!--		FECHAMENTO DA DIV DAS TABS AQUI !!!-->
		</div> <!--		FECHAMENTO DA DIV DO PAINEL AQUI !!! -->
		
		<br /><br />
		<input type="submit" value="Cadastrar/Salvar" class="btn btn-primary"> <br /> <br />

		<div id="dialog" title="Lista clientes" style="overflow-x: hidden;">
			<table id="tabPesquisa"></table>
		</div>
	</form>
 	
	<script type="text/javascript" src="<c:url value="/js/jlib/jlib.js"/>"></script>   
	<script type="text/javascript" src="<c:url value="/js/jlib/select.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/jlib/mask.js"/>"></script>
	
</body>
</html>