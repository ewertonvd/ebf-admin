package br.com.ebf.controller;

import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.com.caelum.vraptor.validator.Validator;
import br.com.caelum.vraptor.view.Results;
import br.com.ebf.dao.CidadeDao;
import br.com.ebf.modelo.Cidade;

@Controller
public class CidadeController {

	private CidadeDao cidadeDao;
	private Result result;
	private Validator validator;

	@Inject
	public CidadeController(CidadeDao cidadeDao, Result result, Validator validator) {
		this.cidadeDao = cidadeDao;
		this.result = result;
		this.validator = validator;
	}

	// PARA USO DO CDI
	public CidadeController() {
	}

	public void formulario() {
	}

	@IncludeParameters
	public void salva(@Valid Cidade cidade) {
		validator.onErrorRedirectTo(this).formulario();
		cidadeDao.salva(cidade);
		result.redirectTo(this).lista();
	}

	public void atualiza(Integer id, Result result) {
		Cidade cidade = cidadeDao.buscaPorId(id);
		result.include(cidade);
		result.of(this).formulario();
	}

	public void lista() {
		List<Cidade> cidades = cidadeDao.lista();
		result.include("cidades", cidades);
	}
	
	public void json() {
		this.result.use(Results.json()).from(this.cidadeDao.lista()).serialize();
	}
}