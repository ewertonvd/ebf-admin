<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ebf"%>

<!DOCTYPE html>

<html>

<head>

<title>Módulo de Representantes</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap.css'/>"  />

</head>

<body>
	<form action="${linkTo[RepresentanteController].salva(null)}" method="post">
		<input type="hidden" name="hdrepresentante" id="hdrepresentante" value="<%=request.getRemoteUser()%>"> <input type="hidden" 
			value="1" id="controle_cons" name="controle_cons" /> <br />
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
						<a class="navbar-brand" href="#">INÍCIO REPRESENTANTES</a>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="${linkTo[LoginController].desloga()}">Deslogar</a></li>
							<li><a href="${linkTo[IndexController].index()}" id="pgInicial">Pág. Inicial</a></li>
							<li><a href="${linkTo[RepresentanteController].lista()}" id="listarRepresentantes">Listar</a></li>
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
				<h3 class="panel-title">Informações do Representante</h3>
			</div>
			<div id="collapse1" class="panel-body panel-collapse collapse">
			</div>
			<br />
			
			<!--PRIMEIRA LINHA... -->
			<div class="row text-left">

				<input type="hidden" name="representante.numCadastro" size="7" maxlength="7" id="numCadastro" class="form-control" value="${representante.numCadastro}" /><br />
				<ebf:validationMessage name="representante.numCadastro" />

				<div class="col-md-2">
					<span>Num.Cad.Antigo:</span> 
					<input type="text" name="representante.numCadAntigo" size="50" maxlength="50" id="numCadAntigo" class="form-control" value="${representante.numCadAntigo}" autofocus="autofocus" /><br />
					<ebf:validationMessage name="representante.numCadAntigo" />
				</div>

				<input type="hidden" name="representante.dataCadastro" id="dataCadastro" class="form-control" value="<fmt:formatDate pattern="dd/MM/yyyy" type="date" value="${representante.dataCadastro}"/>"/> 
				<ebf:validationMessage name="representante.dataCadastro" /> 

				<div class="col-md-2"></div>
			</div>
			<br />

			<!--SEGUNDA LINHA... -->
			<div class="row text-left">
				<div class="col-md-4">
					<span>Razão Social:</span> 
					<input type="text" name="representante.nomeRazao" size="50" maxlength="50" id="nomeRazao" class="form-control" value="${representante.nomeRazao}" /><br />
					<ebf:validationMessage name="representante.nomeRazao" />
				</div>
				<div class="col-md-4">
					<span>Nome Fantasia:</span> 
					<input type="text" name="representante.nomeFantasia" size="40" maxlength="40" id="nomeFantasia" class="form-control" value="${representante.nomeFantasia}" /><br />
					<ebf:validationMessage name="representante.nomeFantasia" />
				</div>
				<div class="col-md-4"></div>
			</div>
			<br />

			<!--TERCEIRA LINHA... -->
			<div class="row text-left">
				<div class="col-md-2">
					<span>CNPJ:</span>
					<input onkeypress="mask(maskCnpj, this, event);" type="text" name="representante.cnpj" size="20" maxlength="20" id="cnpj" class="form-control" value="${representante.cnpj}" /><br />
					<ebf:validationMessage name="representante.cnpj" />
				</div>
				<div class="col-md-2">
					<span>Inscr.Estadual:</span>
					<input onkeypress="mask(maskIe, this, event);" type="text" name="representante.inscEst" size="20" maxlength="20" id="inscEst" class="form-control" value="${representante.inscEst}" /><br />
					<ebf:validationMessage name="representante.inscEst" />
				</div>
				<div class="col-md-2">
					<span>CPF:</span>
					<input onkeypress="mask(maskCpf, this, event);" type="text" name="representante.cpf" size="20" maxlength="20" id="cpf" class="form-control" value="${representante.cpf}" /><br />
					<ebf:validationMessage name="representante.cpf" />
				</div>

				<div class="col-md-2">
					<span>RG:</span> 
					<input onkeypress="mask(maskRg, this, event);" type="text" name="representante.rg" size="20" maxlength="20" id="rg" class="form-control" value="${representante.rg}" /><br />
					<ebf:validationMessage name="representante.rg" />
				</div>
				<div class="col-md-2"></div>
			</div>
			<br />

			<!--QUARTA LINHA... -->
			<div class="row text-left">
				<div class="col-md-4">
					<span>Endereço:</span>
					<input type="text" name="representante.endRua" size="100" maxlength="100" id="endRua" class="form-control" value="${representante.endRua}" /><br />
					<ebf:validationMessage name="representante.endRua" />
				</div>
				<div class="col-md-1">
					<span>Número:</span>
					<input type="text" name="representante.endNum" size="10" maxlength="10" id="endNum" class="form-control" value="${representante.endNum}" /><br />
					<ebf:validationMessage name="representante.endNum" />
				</div>

				<div class="col-md-2">
					<span>Complemento:</span> 
					<input type="text" name="representante.endCompl" size="50" maxlength="50" id="endCompl" class="form-control" value="${representante.endCompl}" /><br />
					<ebf:validationMessage name="representante.endCompl" />
				</div>
				<div class="col-md-4"></div>
			</div>
			<br />

			<!--QUINTA LINHA... -->
			<div class="row text-left">
				<div class="col-md-2">
					<span>Bairro:</span> 
					<input type="text" name="representante.endBair" size="50" maxlength="50" id="endBair" class="form-control" value="${representante.endBair}" /><br />
					<ebf:validationMessage name="representante.endBair" />
				</div>
				<div class="col-md-3">
					<span>Cidade:</span> 
<%-- 				<input type="text" name="representante.endCid" size="100" maxlength="100" id="endCid" class="form-control" value="${representante.endCid}" /><br /> --%>
					<select name="representante.endCid" id="endCid" class="form-control">
						<c:forEach items="${nCidades}" var="nCidade">
							<option value="${nCidade.nome}">${nCidade.nome}</option>
						</c:forEach>
					</select>
					<ebf:validationMessage name="representante.endCid" />
				</div>

				<div class="col-md-1">
					<span>UF:</span> 
<%--				<input type="text" name="representante.endEst" size="4" maxlength="2" id="endEst" class="form-control" value="${representante.endEst}" /><br /> --%>
					<select name="representante.endEst" id="endEst" class="form-control">
						<c:forEach items="${siglaEstados}" var="siglaEstado">
							<option value="${siglaEstado.sigla}">${siglaEstado.sigla}</option>
						</c:forEach>
					</select>
					<ebf:validationMessage name="representante.endEst" />
				</div>
				<div class="col-md-2"></div>
			</div>
			<br />

			<!--SEXTA LINHA... -->
			<div class="row text-left">
				<div class="col-md-2">
					<span>CEP:</span>
					<input onkeypress="mask(maskCep, this, event);" type="text" name="representante.endCep" size="10" maxlength="10" id="endCep" class="form-control" value="${representante.endCep}" /><br />
					<ebf:validationMessage name="representante.endCep" />
				</div>
				<div class="col-md-3">
					<span>Pais:</span>
<%-- 					<input type="text" name="representante.endPais" size="50" maxlength="50" id="endPais" class="form-control" value="${representante.endPais}" /><br /> --%>
					<select name="representante.endPais" id="endPais" class="form-control">
						<c:forEach items="${nPaises}" var="nPais">
							<option value="${nPais.nome}">${nPais.nome}</option>
						</c:forEach>
					</select>
					<ebf:validationMessage name="representante.endPais" />
				</div>

				<div class="col-md-1">
					<span>DDI:</span> 
					<input type="text" name="representante.endDDI" size="5" maxlength="5" id="endDDI" class="form-control" value="${representante.endDDI}" /><br />
					<ebf:validationMessage name="representante.endDDI" />
				</div>
				<div class="col-md-2"></div>
			</div>
			<br />

			<!--SÉTIMA LINHA... -->
			<div class="row text-left">
				<div class="col-md-1">
					<span>DDD:</span>
					<input type="text" name="representante.endDDD" size="4" maxlength="2" id="endDDD" class="form-control" value="${representante.endDDD}" /><br />
					<ebf:validationMessage name="representante.endDDD" />
				</div>
				<div class="col-md-2">
					<span>Telefone:</span> 
					<input onkeypress="mask(maskTelefone, this, event);" type="text" name="representante.endTel" size="50" maxlength="50" id="endTel" class="form-control" value="${representante.endTel}" /><br />
					<ebf:validationMessage name="representante.endTel" />
				</div>

				<div class="col-md-2">
					<span>Telefone 2:</span>
					<input onkeypress="mask(maskTelefone, this, event);" type="text" name="representante.endTel2" size="50" maxlength="50" id="endTel2" class="form-control" value="${representante.endTel2}" /><br />
					<ebf:validationMessage name="representante.endTel2" />
				</div>
				<div class="col-md-1"></div>
			</div>
			<br />

			<!--OITAVA LINHA... -->
			<div class="row text-left">
				<div class="col-md-1">
					<span>DDD Fax:</span> 
					<input type="text" name="representante.endDDDFax" size="4" maxlength="2" id="endDDDFax" class="form-control" value="${representante.endDDDFax}" /><br />
					<ebf:validationMessage name="representante.endDDDFax" />
				</div>
				<div class="col-md-2">
					<span>Tel.Fax:</span>
					<input onkeypress="mask(maskTelefone, this, event);" type="text" name="representante.endFax" size="50" maxlength="50" id="endFax" class="form-control" value="${representante.endFax}" /><br />
					<ebf:validationMessage name="representante.endFax" />
				</div>

				<div class="col-md-1">
					<span>DDD Cel.:</span>
					<input type="text" name="representante.endDDDCel" size="4" maxlength="2" id="endDDDCel" class="form-control" value="${representante.endDDDCel}" /><br />
					<ebf:validationMessage name="representante.endDDDCel" />
				</div>

				<div class="col-md-2">
					<span>Celular:</span>
					<input onkeypress="mask(maskCelular, this, event);" type="text" name="representante.endCel" size="50" maxlength="50" id="endCel" class="form-control" value="${representante.endCel}" /><br />
					<ebf:validationMessage name="representante.endCel" />
				</div>
				<div class="col-md-2"></div>
			</div>
			<br />

			<!--NONA LINHA... -->
			<div class="row text-left">
				<div class="col-md-4">
					<span>Email:</span>
					<input type="email" name="representante.endEmail" size="200" maxlength="200" id="endEmail" class="form-control" value="${representante.endEmail}" /><br />
					<ebf:validationMessage name="representante.endEmail" />
				</div>
				<div class="col-md-4">
					<span>Email 2:</span>
					<input type="email" name="representante.endEmail2" size="200" maxlength="200" id="endEmail2" class="form-control" value="${representante.endEmail2}" /><br />
					<ebf:validationMessage name="representante.endEmail2" />
				</div>
				<div class="col-md-1"></div>
			</div>
			<br />

			<!--DÉCIMA LINHA... -->
			<div class="row text-left">
				<div class="col-md-2">
					<span>Empresa:</span>
					<select name="representante.empresa" id="empresa" class="form-control" data-select="sl" data-url="sl">
						<option value="AMBOS">AMBOS</option>
						<option value="EBF/VAZ">EBF/VAZ</option>
						<option value="ECO/INDUSTRIA">ECO/INDUSTRIA</option>
						<option value="ECO/LOGISTICA">ECO/LOGISTICA</option>
						<option value="VAZCAP">VAZCAP</option>
						<option value="VAZLOG">VAZLOG</option>
					</select><br />
					<ebf:validationMessage name="representante.empresa" />
				</div>
				<div class="col-md-1">
					<span>Marca:</span>
					<select name="representante.marca" id="marca" class="form-control" data-select="sl" data-url="sl"> 
						<option value="N">Não</option>
						<option value="S">Sim</option>
					</select><br />
					<ebf:validationMessage name="representante.marca" />
				</div>
				<div class="col-md-1">
					<span>Comissão Máx.:</span>
					<input type="text" name="representante.comissaoMaxima" size="10" maxlength="10" id="comissaoMaxima" class="form-control" value="${representante.comissaoMaxima}" /><br />
					<ebf:validationMessage name="representante.comissaoMaxima" />
				</div>
								<div class="col-md-2">
					<span>Calcula comissão:</span>
					<select name="representante.calculaComissao" id="calculaComissao" class="form-control" data-select="sl" data-url="sl">
						<option value="S">Sim</option>
						<option value="N">Não</option>
					</select><br />
					<ebf:validationMessage name="representante.calculaComissao" />
				</div>
				<div class="col-md-1">
					<span>Calcula IR:</span> 
					<select name="representante.calcularIR" id="calcularIR" class="form-control" data-select="sl" data-url="sl">
						<option value="S">Sim</option>
						<option value="N">Não</option>
					</select><br />
					<ebf:validationMessage name="representante.calcularIR" />
				</div>
				<div class="col-md-2"></div>
			</div>
			<br />

			<!--DÉCIMA PRIMEIRA LINHA... -->
			<div class="row text-left">
				<div class="col-md-2">
					<span>BO atraso Duplicata:</span> 
					<select name="representante.boAtrasoDuplicata" id="boAtrasoDuplicata" class="form-control" data-select="sl" data-url="sl">
						<option value="S">Sim</option>
						<option value="N">Não</option>
					</select><br />
					<ebf:validationMessage name="representante.boAtrasoDuplicata" />
				</div>
				
				<div class="col-md-1">
					<span>Restrição:</span>
					<select name="representante.restricao" id="restricao" class="form-control" data-select="sl" data-url="sl">
						<option value="Ativo">Ativo</option>
						<option value="Inativo">Inativo</option>
					</select><br />
					<ebf:validationMessage name="representante.restricao" />
				</div>
				
				<div class="col-md-1">
					<span>Grupo:</span>
					<!--CRIAR UM SELECT, BUSCANDO INFORMAÇÕES DA TABELA DE GRUPOS    -->
					<input type="text" name="representante.grupo" size="10" maxlength="10" id="grupo" class="form-control" value="${representante.grupo}" /><br />
					<ebf:validationMessage name="representante.grupo" />
				</div>
				<div class="col-md-1">
					<span>Televendas:</span>
					<select name="representante.televendas" id="televendas" class="form-control" data-select="sl" data-url="sl">
						<option value="N">Não</option>
						<option value="S">Sim</option>
					</select><br />
					<ebf:validationMessage name="representante.televendas" />
				</div>
				<div class="col-md-1"></div>
			</div>
			<br />

			<!--DÉCIMA SEGUNDA LINHA... -->
			<div class="row text-left">
				<div class="col-md-8">
					<span>Região:</span>
					<input type="text" name="representante.regiao" size="100" maxlength="100" id="regiao" class="form-control" value="${representante.regiao}" /><br />
					<ebf:validationMessage name="representante.regiao" />
				</div>
				<div class="col-md-8"></div>
			</div>
			<br />

			<!--DÉCIMA TERCEIRA LINHA... -->
			<div class="row text-left">
				<div class="col-md-8">
					<span>Gerência:</span> 
					<input type="text" name="representante.gerencia" size="100" maxlength="100" id="gerencia" class="form-control" value="${representante.gerencia}" /><br />
					<ebf:validationMessage name="representante.gerencia" />
				</div>
				<div class="col-md-8"></div>
			</div>
			<br />


			<!--DÉCIMA QUARTA LINHA... -->
			<div class="row text-left">
				<div class="col-md-8">
					<span>Obsevação:</span>
					<textarea name="representante.observ" id="observ" rows="3" cols="100" maxlength="100"  class="form-control" >${representante.observ}</textarea>
					<ebf:validationMessage name="representante.observ" />
				</div>
				<div class="col-md-8"></div>
			</div>
			<br />

			<!--DÉCIMA SEXTA LINHA... -->
			<br /> <input type="submit" value="Cadastrar/Salvar" class="btn btn-primary"> <br /> <br />

			<div id="dialog" title="Lista Representantes" style="overflow-x: hidden;">
				<table id="tabPesquisa"></table>
			</div>
		</div>
	</form>

	<script type="text/javascript" src="<c:url value="/js/jlib/jlib.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/jlib/select.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/jlib/mask.js"/>"></script>
	
</body>
</html>