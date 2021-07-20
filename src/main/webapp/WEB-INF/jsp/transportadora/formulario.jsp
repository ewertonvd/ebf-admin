<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ebf"%>

<!DOCTYPE html>
<html>

<head>

<title>Módulo de Transportadoras</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap.css'/>"  />  

</head>

<body>
	<form action="${linkTo[TransportadoraController].salva(null)}"method="post">
		<input name="transportadora.endCidaux" type="hidden" value="${transportadora.endCid}">
		<input name="transportadora.endEstaux" type="hidden" value="${transportadora.endEst}">
		<input name="transportadora.endPaisaux" type="hidden" value="${transportadora.endPais}">
		<input type="hidden" name="hdtransportadora" id="hdtransportadora" value="<%=request.getRemoteUser()%>"> <input type="hidden" value="1" id="controle_cons" name="controle_cons" /><br />
		<div id="container-fluid">
			<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> 
							<span class="icon-bar"></span> <span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">INÍCIO TRANSPORTADORAS</a>
					</div>
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="${linkTo[LoginController].desloga()}">Deslogar</a></li>
							<li><a href="${linkTo[IndexController].index()}" id="pgInicial">Pág. Inicial</a></li>
							<li><a href="${linkTo[TransportadoraController].lista()}" id="listarTransportadoras">Listar</a></li>
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
				<h3 class="panel-title">Informações da Transportadora</h3>
			</div>
			<div id="collapse1" class="panel-body panel-collapse collapse"></div>
			<br />

			<!--PRIMEIRA LINHA... -->
			<div class="row text-left">
				<input type="hidden" name="transportadora.numCadastro" size="7" maxlength="7" id="numCadastro" class="form-control" value="${transportadora.numCadastro}" />
				<ebf:validationMessage name="transportadora.numCadastro" />

				<div class="col-md-2">
					<span>Num.Cad.Antigo:</span>
					<input type="text" name="transportadora.numCadAntigo" size="50" maxlength="50" id="numCadAntigo" class="form-control" value="${transportadora.numCadAntigo}" autofocus="autofocus" /><br />
					<ebf:validationMessage name="transportadora.numCadAntigo" />
				</div>
				
				<input type="hidden" name="transportadora.dataCadastro" id="dataCadastro" class="form-control" value="<fmt:formatDate pattern="dd/MM/yyyy" type="date" value="${transportadora.dataCadastro}"/>"/> 
				<ebf:validationMessage name="transportadora.dataCadastro" />
				<div class="col-md-2"></div>
			</div>
			<br />

			<!--SEGUNDA LINHA... -->
			<div class="row text-left">
				<div class="col-md-3">
					<span>Razão Social:</span>
					<input type="text" name="transportadora.nome" size="40" maxlength="40" id="nome" class="form-control" value="${transportadora.nome}" /><br />
					<ebf:validationMessage name="transportadora.nome" />
				</div>
				<div class="col-md-2">
					<span>CNPJ:</span>
					<input onkeypress="mask(maskCnpj, this, event);" type="text" name="transportadora.cnpj" size="20" maxlength="20" id="cnpj" class="form-control" value="${transportadora.cnpj}" /><br />
					<ebf:validationMessage name="transportadora.cnpj" />
				</div>
				<div class="col-md-2">
					<span>Inscr.Estadual:</span>
					<input onkeypress="mask(maskIe, this, event);" type="text" name="transportadora.inscEst" size="20" maxlength="20" id="inscEst" class="form-control" value="${transportadora.inscEst}" /><br />
					<ebf:validationMessage name="transportadora.inscEst" />
				</div>
				<div class="col-md-3"></div>
			</div>
			<br />

			<!--TERCEIRA LINHA... -->
			<div class="row text-left">
				<div class="col-md-3">
					<span>Endereço:</span>
					<input type="text" name="transportadora.endRua" size="100" maxlength="100" id="endRua" class="form-control" value="${transportadora.endRua}" /><br />
					<ebf:validationMessage name="transportadora.endRua" />
				</div>
				<div class="col-md-1">
					<span>Número</span>
					<input type="text" name="transportadora.endNum" size="10" maxlength="10" id="endNum" class="form-control" value="${transportadora.endNum}" /><br />
					<ebf:validationMessage name="transportadora.endNum" />
				</div>
				<div class="col-md-1">
					<span>Complemento:</span>
					<input type="text" name="transportadora.endCompl" size="50" maxlength="50" id="endCompl" class="form-control" value="${transportadora.endCompl}" /><br />
					<ebf:validationMessage name="transportadora.endCompl" />
				</div>
				<div class="col-md-2">
					<span>Bairro:</span>
					<input type="text" name="transportadora.endBair" size="50" maxlength="50" id="endBair" class="form-control" value="${transportadora.endBair}" /><br />
					<ebf:validationMessage name="representante.endBair" />
				</div>
				<div class="col-md-3"></div>
			</div>
			<br />

			<!--QUARTA LINHA... -->
			<div class="row text-left">
				<div class="col-md-3">
					<span>Cidade:</span>
					<select name="transportadora.endCid" id="endCid" class="form-control" data-select="slCidadeNome" data-url="slCidade_Json_01"></select>
					<ebf:validationMessage name="transportadora.endCid" />
				</div>

				<div class="col-md-1">
					<span>UF:</span>
					<select name="transportadora.endEst" id="endEst" class="form-control" data-select="slEstadoSigla" data-url="slEstado_Json_01"></select>
                    <ebf:validationMessage name="transportadora.endEst" />
				</div>

				<div class="col-md-1">
					<span>CEP:</span> 
					<input onkeypress="mask(maskCep, this, event);" type="text" name="transportadora.endCep" size="10" maxlength="10" id="endCep" class="form-control" value="${transportadora.endCep}" /><br />
					<ebf:validationMessage name="transportadora.endCep" />
				</div>
				<div class="col-md-2">
					<span>País:</span> 
					<select name="transportadora.endPais" id="endPais" class="form-control" data-select="slPais" data-url="slPais_Json_01"></select>
					<ebf:validationMessage name="transportadora.endPais" />
				</div>
				<div class="col-md-3"></div>
			</div>
			<br />

			<!--QUINTA LINHA... -->
			<div class="row text-left">
				<div class="col-md-1">
					<span>DDD:</span> 
					<input type="text" name="transportadora.endDDD" size="5" maxlength="5" id="endDDD" class="form-control" value="${transportadora.endDDD}" /><br />
					<ebf:validationMessage name="transportadora.endDDD" />
				</div>
				<div class="col-md-2">
					<span>Telefone:</span>
					<input onkeypress="mask(maskTelefone, this, event);"  type="text" name="transportadora.endTel" size="50" maxlength="50" id="endTel" class="form-control" value="${transportadora.endTel}" /><br />
					<ebf:validationMessage name="transportadora.endTel" />
				</div>
				<div class="col-md-2">
					<span>Fax:</span> 
					<input onkeypress="mask(maskTelefone, this, event);" type="text" name="transportadora.endFax" size="50" maxlength="50" id="endFax" class="form-control" value="${transportadora.endFax}" /><br />
					<ebf:validationMessage name="transportadora.endFax" />
				</div>

				<div class="col-md-2">
					<span>Email:</span> 
					<input type="email" name="transportadora.endEmail" size="100" maxlength="100" id="endEmail" class="form-control" value="${transportadora.endEmail}" /><br />
					<ebf:validationMessage name="transportadora.endEmail" />
				</div>
				<div class="col-md-1"></div>
			</div>
			<br />

			<!--SÉTIMA LINHA... -->
			<div class="row text-left">
				<div class="col-md-7">
					<span>Observação:</span>
					<textarea name="transportadora.observ" id="observ" rows="3" cols="200" maxlength="200" class="form-control">${transportadora.observ}</textarea>
					<ebf:validationMessage name="transportadora.observ" />
				</div>
				<div class="col-md-7"></div>
			</div>
			<br />

			<!--OITAVA LINHA... -->
			<div class="row text-left">
				<div class="col-md-1">
					<span>Ativo:</span>
					<select name="transportadora.ativo" id="ativo" class="form-control" data-select="sl" data-url="sl">
						<option value="S">Sim</option>
						<option value="N">Não</option>
					</select><br />
					<ebf:validationMessage name="transportadora.ativo" />
					<div class="col-md-1"></div>
				</div>
			</div>
			<br /> <input type="submit" value="Cadastrar/Salvar"
				class="btn btn-primary"> <br /> <br />

			<div id="dialog" title="Lista de Transportadoras"
				style="overflow-x: hidden;">
				<table id="tabPesquisa"></table>
			</div>
		</div>
	</form>

	<script type="text/javascript" src="<c:url value="/js/jlib/jlib.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/jlib/select.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/jlib/mask.js"/>"></script>

</body>
</html>