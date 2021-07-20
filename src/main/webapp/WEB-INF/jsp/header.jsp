<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Sistema EBFVaz</title>

<link href="<c:url value='/css/bootstrap.css'/>" rel="stylesheet" />
</head>

<body>
	<nav>
		<ul class="nav nav-tabs">
			<li>
				<a href="${linkTo[DepartamentoController].formulario()}">Departamentos</a>
				<a href="${linkTo[CargoController].formulario()}">Cargos</a>
			</li>
			
			<li>
				<a href="${linkTo[PaisController].formulario()}">Paises</a>
				<a href="${linkTo[EstadoController].formulario()}">Estados</a>
				<a href="${linkTo[CidadeController].formulario()}">Cidades</a>
			</li>
			
			<li><a href="${linkTo[UsuarioController].formulario()}">Usuários</a></li>
			
			<li><a href="${linkTo[RepresentanteController].formulario()}">Representantes</a></li>
			
			<li><a href="${linkTo[TransportadoraController].formulario()}">Transportadoras</a></li>
			
			<li><a href="${linkTo[ClienteController].formulario()}">Clientes</a></li>
			
			<c:if test="${usuarioLogado.logado}">
				<li><a href="${linkTo[LoginController].desloga()}">Deslogar</a></li>
			</c:if>
			
			<c:if test="${!usuarioLogado.logado}">
				<li><a href="${linkTo[LoginController].formularioLogin()}">Autenticar</a></li>
			</c:if>

		</ul>
	</nav>
	<br/>
	<div class="container">
		<main class="col-sm-8">