<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<head>

<title>Lista de Clientes</title>

<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css" class="init"></style>

<script type="text/javascript" src="<c:url value="/js/jquery-1.12.4.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/jquery.dataTables.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/dataTables.bootstrap.min.js"/>"></script>

<link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap.css'/>"  />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/dataTables.bootstrap.min.css'/>"  />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap.min.css'/>"  />
<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script type="text/javascript" class="init">
	$(document).ready(function() {
		$('#tabClientes').DataTable();
	});
</script>

</head>

<body>
	<input type="hidden" name="hdcliente" id="hdcliente" value="<%=request.getRemoteUser()%>">
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
					<a class="navbar-brand" href="#">INÍCIO CLIENTES</a>
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
						<li><a href="${linkTo[ClienteController].formulario()}"
							id="novoCliente">Novo</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		<br /> <br /> <br />

		<h3>Lista de clientes</h3>
		<table id="tabClientes" class="table table-striped table-bordered table-condensed dataTable" role="grid" style="width: 100%;">
			<thead>
				<tr>
					<!-- INÍCIO DADOS PRINCIPAIS -->
					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="numCadastro: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Num. Cadastro</th>
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="numCadAntigo: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Num.Cad.Antigo</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="dataCadastro: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Dt.Cadastro</th> -->
					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="nomeRazao: activate to sort column descending" aria-sort="ascending" style="width: 140px;">Nome/R.Social</th> 
					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="nomeFantasia: activate to sort column descending" aria-sort="ascending" style="width: 140px;">Nome Fantasia</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="cnpj: activate to sort column descending" aria-sort="ascending" style="width: 60px;">Cnpj</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="inscEst: activate to sort column descending" aria-sort="ascending" style="width: 60px;">Inscr. Estadual</th>
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="cpf: activate to sort column descending" aria-sort="ascending" style="width: 100px;">CPF</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="rg: activate to sort column descending" aria-sort="ascending" style="width: 100px;">RG</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endRua: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Endereço</th> 					 -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endNum: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Nro.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endCompl: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Complento</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endBair: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Bairro</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="identCid: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Ident.Cidade</th> -->
					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endCid: activate to sort column descending" aria-sort="ascending" style="width: 50px;">Cidade</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endEst: activate to sort column descending" aria-sort="ascending" style="width: 10px;">Estado</th>
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endCep: activate to sort column descending" aria-sort="ascending" style="width: 100px;">CEP</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endPais: activate to sort column descending" aria-sort="ascending" style="width: 100px;">País</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endDDI: activate to sort column descending" aria-sort="ascending" style="width: 100px;">DDI</th> -->
					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endDDD: activate to sort column descending" aria-sort="ascending" style="width: 10px;">DDD</th>
					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endTel: activate to sort column descending" aria-sort="ascending" style="width: 50px;">Telefone</th>
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endFax: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Tel.Fax</th> -->
					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endEmail: activate to sort column descending"  aria-sort="ascending" style="width: 15px;">Email</th>
 
					<!-- DADOS DE ENTREGA -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endEntgRua: activate to sort column descending" aria-sort="ascending" style="width: 100px;">End.Entrega</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endEntgNum: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Nro.Entr.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endEntgCompl: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Compl.Entr.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endEntgBair: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Bairro Entr.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="identEntgCid: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Ident.Cid.Entr.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endEntgCid: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Cidade Entr.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endEntgEst: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Est.Entr.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endEntgCep: activate to sort column descending" aria-sort="ascending" style="width: 100px;">CEP Entr.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endEntgPais: activate to sort column descending" aria-sort="ascending" style="width: 100px;">País Entr.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endEntgDDI: activate to sort column descending" aria-sort="ascending" style="width: 100px;">DDI Entr.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endEntgDDD: activate to sort column descending" aria-sort="ascending" style="width: 100px;">DDD Entr.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endEntgTel: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Tel.Entr.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endEntgFax: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Fax Entr.</th>  -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endEntgEmail: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Email Entr.</th> -->

					<!-- DADOS DE PAGAMENTO -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endPagRua: activate to sort column descending" aria-sort="ascending" style="width: 100px;">End.Pagamento</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endPagNum: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Nro.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endPagCompl: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Complemento</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endPagBair: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Bairro Pgto</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="identPagCid: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Ident.Cid.Pgto</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endPagCid: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Cidade Pgto</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endPagEst: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Est.Pgto</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endPagCep: activate to sort column descending" aria-sort="ascending" style="width: 100px;">CEP Pgto</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endPagPais: activate to sort column descending" aria-sort="ascending" style="width: 100px;">País Pgto</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endPagDDI: activate to sort column descending" aria-sort="ascending" style="width: 100px;">DDI</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endPagDDD: activate to sort column descending" aria-sort="ascending" style="width: 100px;">DDD</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endPagTel: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Tel. Pgto</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endPagFax: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Fax Pgto</th>  -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="endPagEmail: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Email Pgto</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="numCadRepre: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Num.Cad.Repr.</th> -->
 
					<!-- DADOS BANCÁRIOS -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="numBanco: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Nro.Bco.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="nomeBanco: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Nome Banco</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="numAgenciaBanco: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Nro.Agência</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="digAgenciaBanco: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Dig.Agência</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="nomeAgenciaBanco: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Nome Agência</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="numContaBanco: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Num.Cta.Bco</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="digContaBanco: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Dig.Cta.Conta</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="titularCtaBanco: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Titular</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="numSuframa: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Num.Suframa</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="tipoCli: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Tipo Cliente</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="pagamentos: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Forma Pgto</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="vencimentos: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Vencimentos</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="restricao: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Restrição</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="zfmAlcom: activate to sort column descending" aria-sort="ascending" style="width: 100px;">ZFM Alcom</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="teste: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Teste</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="numTransp: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Num.Transp.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="calcIPI: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Calcula IPI</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="numMsgIPI: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Ident.Cid.Pgto</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="calcICM: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Cidade Pgto</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="numMsgICM: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Est.Pgto</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="nomeClienteBanco: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Nome Cli.Bco.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="foraSemana: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Fora sem.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="vencEspecifico: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Vecim.Esp.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="diaSemana: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Dia sem.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="numCadRepreEco: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Num.Cad.Repr.Eco</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="numCadRepreVazLog: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Num.Cad.Repr.VazLog</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="quemAlterou: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Quem alterou</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="sujeitoCartorio: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Suj.Cartório</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="notaUltFatura: activate to sort column descending" aria-sort="ascending" style="width: 100px;">NF Ult.Fatura</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="serieNotaUltFatura: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Série Ult.Fat.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="dataUltFatura: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Dt.Ult.Fatura</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="valorUltFatura: activate to sort column descending" aria-sort="ascending" style="width: 100px;">R$ Ult.Fatura</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="limiteCredito: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Limite Créd.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="valorEmAberto: activate to sort column descending" aria-sort="ascending" style="width: 100px;">R$ em Aberto</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="saldo: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Saldo</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="frete: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Frete</th>  -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="atividade: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Atividade</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="comissaoFixa: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Comissão Fixa</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="limCreditoFixo: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Lim.Créd.Fixo</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="desc7IcmsSufr: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Desc.7% ICMS Sufr.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="isentoIcmsSubsTrib: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Isento ICMS Sub.Trib</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="observIcmsSubsTrib: activate to sort column descending" aria-sort="ascending" style="width: 100px;">OBS.ICMS Sub.Trib</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="tipoEntidade: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Obs.Icms Sub.Trib</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="vlrPedidosAbertos: activate to sort column descending" aria-sort="ascending" style="width: 100px;">R$ Ped.Abertos</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="vlrDuplicatasAbertas: activate to sort column descending" aria-sort="ascending" style="width: 100px;">R$ Dupl.Abertas</th>  -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="stsProtesto: activate to sort column descending" aria-sort="ascending" style="width: 100px;">STS Protesto</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="calcIcmSubst: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Calc.ICM Sub.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="codPais: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Cód.País</th>  -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="bloqAutomatico: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Bloq.Autom.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="ncmExportacao: activate to sort column descending" aria-sort="ascending" style="width: 100px;">NCM Export.</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="retorno: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Retorno</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="codigoInterno: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Cód.Interno</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="divisao: activate to sort column descending" aria-sort="ascending" style="width: 100px;">DDI</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="cfop: activate to sort column descending" aria-sort="ascending" style="width: 100px;">CFOP</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="contrato: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Contrato</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="comercialBloq: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Bloq.Comercial</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="comercialObs: activate to sort column descending" aria-sort="ascending" style="width: 100px;">OBS.Comercial</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="financeiroBloq: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Bloq.Financeiro</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="emailPackInList: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Email PackInList</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="verificado: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Verificado</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="dataVerificado: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Dt.Verificado</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="potencialVazCap: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Potencial VazCap</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="potencialVazLog: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Potencial VazLog</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="potencialEcoPads: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Potencial Ecopads</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="potencialEco: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Potencial Eco</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="potencialEbf: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Potencial Ebf</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="ramalPrc: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Ramal PRC</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="descartado: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Descartado</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="perfil: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Perfil</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="compraDe: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Compra de</th>  -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="keyAccount: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Key Account</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="gestorCliente: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Gestor Cliente</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="observ: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Observação</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="dataAlteracao: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Dt.Alteração</th> -->
<!-- 					<th class="sorting_asc" tabindex="0" aria-controls="tabClientes" rowspan="1" colspan="1" aria-label="userAlteracao: activate to sort column descending" aria-sort="ascending" style="width: 100px;">Usuário Alteração</th> -->
					
					<th style="width: 15px;">Selecionar</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${clientes}" var="cliente">
					<tr>
<!--                    DADOS PRINCIPAIS -->
						<td><c:if test="${not empty cliente.numCadastro}">
							${cliente.numCadastro}
						</c:if></td>

<%-- 						<td><c:if test="${not empty cliente.numCadAntigo}"> --%>
<%-- 							${cliente.numCadAntigo} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.dataCadastro}"> --%>
<%-- 								<fmt:formatDate value="${cliente.dataCadastro}" --%>
<%-- 									pattern="dd/MM/yyyy" /> --%>
<%-- 							</c:if></td> --%>

						<td><c:if test="${not empty cliente.nomeRazao}">
								${cliente.nomeRazao}
							</c:if></td>

						<td><c:if test="${not empty cliente.nomeFantasia}">
							${cliente.nomeFantasia}
						</c:if></td>

						<td><c:if test="${not empty cliente.cnpj}">
							${cliente.cnpj}
						</c:if></td>

						<td><c:if test="${not empty cliente.inscEst}">
							${cliente.inscEst}
						</c:if></td>

<%-- 						<td><c:if test="${not empty cliente.cpf}"> --%>
<%-- 							${cliente.cpf} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.rg}"> --%>
<%-- 							${cliente.rg} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endRua}"> --%>
<%-- 							${cliente.endRua} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endNum}"> --%>
<%-- 							${cliente.endNum} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endCompl}"> --%>
<%-- 							${cliente.endCompl} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endBair}"> --%>
<%-- 							${cliente.endBair} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.identCid}"> --%>
<%-- 							${cliente.identCid} --%>
<%-- 						</c:if></td> --%>

						<td><c:if test="${not empty cliente.endCid}">
							${cliente.endCid}
						</c:if></td>

						<td><c:if test="${not empty cliente.endEst}">
							${cliente.endEst}
						</c:if></td>

<%-- 						<td><c:if test="${not empty cliente.endCep}"> --%>
<%-- 							${cliente.endCep} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endPais}"> --%>
<%-- 							${cliente.endPais} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endDDI}"> --%>
<%-- 							${cliente.endDDI} --%>
<%-- 						</c:if></td> --%>

						<td><c:if test="${not empty cliente.endDDD}">
							${cliente.endDDD}
						</c:if></td>

						<td><c:if test="${not empty cliente.endTel}">
							${cliente.endTel}
						</c:if></td>

<%-- 						<td><c:if test="${not empty cliente.endFax}"> --%>
<%-- 							${cliente.endFax} --%>
<%-- 						</c:if></td> --%>

						<td><c:if test="${not empty cliente.endEmail}">
							${cliente.endEmail}
						</c:if></td>
						
<!-- 					DADOS DE ENTREGA -->
<%-- 						<td><c:if test="${not empty cliente.endEntgRua}"> --%>
<%-- 							${cliente.endEntgRua} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endEntgNum}"> --%>
<%-- 							${cliente.endEntgNum} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endEntgCompl}"> --%>
<%-- 							${cliente.endEntgCompl} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endEntgBair}"> --%>
<%-- 							${cliente.endEntgBair} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.identEntgCid}"> --%>
<%-- 							${cliente.identEntgCid} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endEntgCid}"> --%>
<%-- 							${cliente.endEntgCid} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endEntgEst}"> --%>
<%-- 							${cliente.endEntgEst} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endEntgCep}"> --%>
<%-- 							${cliente.endEntgCep} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endEntgPais}"> --%>
<%-- 							${cliente.endEntgPais} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endEntgDDI}"> --%>
<%-- 							${cliente.endEntgDDI} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endEntgDDD}"> --%>
<%-- 							${cliente.endEntgDDD} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endEntgTel}"> --%>
<%-- 							${cliente.endEntgTel} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endEntgFax}"> --%>
<%-- 							${cliente.endEntgFax} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endEntgEmail}"> --%>
<%-- 							${cliente.endEntgEmail} --%>
<%-- 						</c:if></td> --%>

<!-- 					DADOS DE PAGAMENTO -->
<%-- 						<td><c:if test="${not empty cliente.endPagRua}"> --%>
<%-- 							${cliente.endPagRua} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endPagNum}"> --%>
<%-- 							${cliente.endPagNum} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endPagCompl}"> --%>
<%-- 							${cliente.endPagCompl} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endPagBair}"> --%>
<%-- 							${cliente.endPagBair} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.identPagCid}"> --%>
<%-- 							${cliente.identPagCid} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endPagCid}"> --%>
<%-- 							${cliente.endPagCid} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endPagEst}"> --%>
<%-- 							${cliente.endPagEst} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endPagCep}"> --%>
<%-- 							${cliente.endPagCep} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endPagPais}"> --%>
<%-- 							${cliente.endPagPais} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endPagDDI}"> --%>
<%-- 							${cliente.endPagDDI} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endPagDDD}"> --%>
<%-- 							${cliente.endPagDDD} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endPagTel}"> --%>
<%-- 							${cliente.endPagTel} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endPagFax}"> --%>
<%-- 							${cliente.endPagFax} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.endPagEmail}">  --%>
<%-- 							${cliente.endPagEmail}  --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.numCadRepre}"> --%>
<%-- 								${cliente.numCadRepre} --%>
<%-- 						</c:if></td>  --%>

<!-- 					DADOS BANCÁRIOS -->
<%-- 						<td><c:if test="${not empty cliente.numBanco}"> --%>
<%-- 							${cliente.numBanco} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.nomeBanco}"> --%>
<%-- 							${cliente.nomeBanco} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.numAgenciaBanco}"> --%>
<%-- 							${cliente.numAgenciaBanco} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.digAgenciaBanco}"> --%>
<%-- 							${cliente.digAgenciaBanco} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.nomeAgenciaBanco}"> --%>
<%-- 							${cliente.nomeAgenciaBanco} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.numContaBanco}"> --%>
<%-- 							${cliente.numContaBanco} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.digContaBanco}"> --%>
<%-- 							${cliente.digContaBanco} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.titularCtaBanco}"> --%>
<%-- 							${cliente.titularCtaBanco} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.numSuframa}"> --%>
<%-- 							${cliente.numSuframa} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.tipoCli}"> --%>
<%-- 							${cliente.tipoCli} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.pagamentos}"> --%>
<%-- 							${cliente.pagamentos} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.vencimentos}"> --%>
<%-- 							${cliente.vencimentos} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.restricao}"> --%>
<%-- 							${cliente.restricao} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.zfmAlcom}"> --%>
<%-- 							${cliente.zfmAlcom} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.teste}"> --%>
<%-- 							${cliente.teste} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.numTransp}"> --%>
<%-- 							${cliente.numTransp} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.calcIPI}"> --%>
<%-- 							${cliente.calcIPI} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.numMsgIPI}"> --%>
<%-- 							${cliente.numMsgIPI} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.calcICM}"> --%>
<%-- 							${cliente.calcICM} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.numMsgICM}"> --%>
<%-- 							${cliente.numMsgICM} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.nomeClienteBanco}"> --%>
<%-- 							${cliente.nomeClienteBanco} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.foraSemana}"> --%>
<%-- 							${cliente.foraSemana} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.vencEspecifico}"> --%>
<%-- 							${cliente.vencEspecifico} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.diaSemana}"> --%>
<%-- 							${cliente.diaSemana} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.numCadRepreEco}"> --%>
<%-- 							${cliente.numCadRepreEco} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.numCadRepreVazLog}"> --%>
<%-- 							${cliente.numCadRepreVazLog} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.quemAlterou}"> --%>
<%-- 							${cliente.quemAlterou} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.sujeitoCartorio}"> --%>
<%-- 							${cliente.sujeitoCartorio} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.notaUltFatura}"> --%>
<%-- 							${cliente.notaUltFatura} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.serieNotaUltFatura}"> --%>
<%-- 							${cliente.serieNotaUltFatura} --%>
<%-- 						</c:if></td> --%>
<%-- 						<td><c:if test="${not empty cliente.dataUltFatura}"> --%>
<%--  							<fmt:formatDate value="${cliente.dataUltFatura}" --%>
<%--  									pattern="dd/MM/yyyy" />   --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.valorUltFatura}">  --%>
<%--  							<fmt:formatNumber value="${cliente.valorUltFatura}" type="currency" />  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.limiteCredito}">  --%>
<%--  							<fmt:formatNumber value="${cliente.limiteCredito}" type="currency" />   --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.valorEmAberto}">  --%>
<%--  							<fmt:formatNumber value="${cliente.valorEmAberto}" type="currency" />   --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.saldo}">  --%>
<%--  							<fmt:formatNumber value="${cliente.saldo}" type="currency" />   --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.frete}">  --%>
<%--  							${cliente.frete}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.atividade}">  --%>
<%--  								${cliente.atividade}  --%>
<%--  							</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.comissaoFixa}">  --%>
<%--  							<fmt:formatNumber value="${cliente.comissaoFixa}" pattern="#,##0.00" />   --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.limiteCreditoFixo}">  --%>
<%--  							<fmt:formatNumber value="${cliente.limiteCreditoFixo}" type="currency" />   --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.desc7IcmsSufr}">  --%>
<%--  							${cliente.desc7IcmsSufr}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.isentoIcmsSubsTrib}">  --%>
<%--  							${cliente.isentoIcmsSubsTrib}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.observIcmsSubsTrib}">  --%>
<%--  							${cliente.observIcmsSubsTrib}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.tipoEntidade}">  --%>
<%--  							${cliente.tipoEntidade}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.vlrPedidosAbertos}">  --%>
<%--  							<fmt:formatNumber value="${cliente.vlrPedidosAbertos}" type="currency" />   --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.vlrDuplicatasAbertas}">  --%>
<%--  							${cliente.vlrDuplicatasAbertas}  --%>
<%--  							<fmt:formatNumber value="${cliente.vlrDuplicatasAbertas}" type="currency" />   --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.stsProtesto}">  --%>
<%--  							${cliente.stsProtesto}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.calcICMSubst}">  --%>
<%--  							${cliente.calcICMSubst}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.codPais}">  --%>
<%--  							${cliente.codPais}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.bloqAutomatico}">  --%>
<%--  							${cliente.bloqAutomatico}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.ncmExportacao}">  --%>
<%--  							${cliente.ncmExportacao}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.retorno}">  --%>
<%--  							${cliente.retorno}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.codigoInterno}">  --%>
<%--  							${cliente.codigoInterno}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.divisao}">  --%>
<%--  							${cliente.divisao}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.cfop}">  --%>
<%--  							${cliente.cfop}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.contrato}">  --%>
<%--  							${cliente.contrato}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.comercialBloq}">  --%>
<%--  							${cliente.comercialBloq}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.comercialObs}">  --%>
<%--  							${cliente.comercialObs}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.financeiroBloq}">  --%>
<%--  							${cliente.financeiroBloq}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.emailPackInList}">  --%>
<%--  							${cliente.emailPackInList}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.verificado}">  --%>
<%--  							${cliente.verificado}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.dataVerificado}">  --%>
<%--  							<fmt:formatDate value="${cliente.dataVerificado}"  --%>
<%--  									pattern="dd/MM/yyyy" />							  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.potencialVazCap}">  --%>
<%--  							<fmt:formatNumber value="${cliente.potencialVazCap}" type="currency" />   --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.potencialVazLog}">  --%>
<%--  							<fmt:formatNumber value="${cliente.potencialVazLog}" type="currency" />   --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.potencialEcoPads}">  --%>
<%--  							<fmt:formatNumber value="${cliente.potencialEcoPads}" type="currency" />   --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.potencialEco}">  --%>
<%--  							<fmt:formatNumber value="${cliente.potencialEco}" type="currency" />   --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.potencialEbf}">  --%>
<%--  							<fmt:formatNumber value="${cliente.potencialEbf}" type="currency" />   --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.ramalPrc}">  --%>
<%--  							${cliente.ramalPrc}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.descartado}">  --%>
<%--  							${cliente.descartado}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.perfil}">  --%>
<%--  							${cliente.perfil}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.compraDe}">  --%>
<%--  							${cliente.compraDe}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.keyAccount}">  --%>
<%--  							${cliente.keyAccount}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.gestorCliente}">   --%>
<%--  							${cliente.gestorCliente}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.observ}">  --%>
<%--  							${cliente.observ}  --%>
<%--  						</c:if></td>  --%>
<%--  						<td><c:if test="${not empty cliente.dataAlteracao}">  --%>
<%--  								<fmt:formatDate value="${cliente.dataAlteracao}"  --%>
<%--  									pattern="dd/MM/yyyy" />   --%>
<%--   							</c:if></td>   --%>
<%--   						<td><c:if test="${not empty cliente.userAlteracao}">   --%>
<%--   							${cliente.userAlteracao}   --%>
<%--   						</c:if></td>   --%>

						<td style="text-align: center"><a
							href="${linkTo[ClienteController].atualiza}?numCadastro=${cliente.numCadastro}"
							class="addSelecionaLista" title="Selecionar"> <i
								class="glyphicon glyphicon-log-in"></i>
						</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>

<c:import url="/WEB-INF/jsp/footer.jsp" />