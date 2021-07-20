package br.com.ebf.controller;

import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.com.caelum.vraptor.validator.Validator;
import br.com.caelum.vraptor.view.Results;
import br.com.ebf.dao.EstadoDao;
import br.com.ebf.modelo.Estado;

@Controller
public class EstadoController {

	private EstadoDao estadoDao;
	private Result result;
	private Validator validator;

	@Inject
	public EstadoController(EstadoDao estadoDao, Result result, Validator validator) {
		this.estadoDao = estadoDao;
		this.result = result;
		this.validator = validator;
	}

	// PARA USO DO CDI
	public EstadoController() {
	}

	public void formulario() {
	}

	@IncludeParameters
	public void salva(@Valid Estado estado) {
		validator.onErrorRedirectTo(this).formulario();
		estadoDao.salva(estado);
		result.redirectTo(this).lista();
	}

	public void atualiza(Integer id, Result result) {
		Estado estado = estadoDao.buscaPorId(id);
		result.include(estado);
		result.of(this).formulario();
	}

	public void lista() {
		List<Estado> estados = estadoDao.lista();
		result.include("estados", estados);
	}
	
	public void json() {
		this.result.use(Results.json()).from(this.estadoDao.lista()).serialize();
	}

	protected List<Estado> listaEstados() {
		return estadoDao.lista();
	}
}