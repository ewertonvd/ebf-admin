package br.com.ebf.controller;

import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.com.caelum.vraptor.validator.Validator;
import br.com.caelum.vraptor.view.Results;
import br.com.ebf.dao.TransportadoraDao;
import br.com.ebf.modelo.Transportadora;

@Controller
public class TransportadoraController {

	private TransportadoraDao transportadoraDao;
	private Result result;
	private Validator validator;

	@Inject
	public TransportadoraController(TransportadoraDao transportadoraDao, Result result, Validator validator) {
		this.transportadoraDao = transportadoraDao;
		this.result = result;
		this.validator = validator;

	}

	// PARA USO DO CDI
	public TransportadoraController() {
	}

	public void formulario() {
	}

	@IncludeParameters
	public void salva(@Valid Transportadora transportadora) {
		validator.onErrorRedirectTo(this).formulario();
		transportadoraDao.salva(transportadora);
		result.redirectTo(this).lista();
	}

	public void atualiza(Integer numCadastro, Result result) {
		Transportadora transportadora = transportadoraDao.buscaPorNumCadastro(numCadastro);
		result.include(transportadora);
		result.of(this).formulario();
	}

	public void lista() {
		List<Transportadora> transportadoras = transportadoraDao.lista();
		result.include("transportadoras", transportadoras);
	}

	public void json() {
		this.result.use(Results.json()).from(this.transportadoraDao.lista()).serialize();
	}
}