package br.com.ebf.controller;

import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.com.caelum.vraptor.validator.Validator;
import br.com.caelum.vraptor.view.Results;
import br.com.ebf.dao.PaisDao;
import br.com.ebf.modelo.Pais;

@Controller
public class PaisController {

	private PaisDao paisDao;
	private Result result;
	private Validator validator;

	@Inject
	public PaisController(PaisDao paisDao, Result result, Validator validator) {
		this.paisDao = paisDao;
		this.result = result;
		this.validator = validator;
	}

	// PARA USO DO CDI
	public PaisController() {
	}

	public void formulario() {
	}

	@IncludeParameters
	public void salva(@Valid Pais pais) {
		validator.onErrorRedirectTo(this).formulario();
		paisDao.salva(pais);
		result.redirectTo(this).lista();
	}

	public void atualiza(Integer numCodigo, Result result) {
		Pais pais = paisDao.buscaPorNumCodigo(numCodigo);
		result.include(pais);
		result.of(this).formulario();
	}

	public void lista() {
		List<Pais> paises = paisDao.lista();
		result.include("paises", paises);
	}
	
	public void json() {
		this.result.use(Results.json()).from(this.paisDao.lista()).serialize();
	}
}