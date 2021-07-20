package br.com.ebf.controller;

import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.com.caelum.vraptor.validator.Validator;
import br.com.caelum.vraptor.view.Results;
import br.com.ebf.dao.DepartamentoDao;
import br.com.ebf.modelo.Departamento;

@Controller
public class DepartamentoController {

	private DepartamentoDao departamentoDao;
	private Result result;
	private Validator validator;

	@Inject
	public DepartamentoController(DepartamentoDao departamentoDao, Result result, Validator validator) {
		this.departamentoDao = departamentoDao;
		this.result = result;
		this.validator = validator;
	}

	// PARA USO DO CDI
	public DepartamentoController() {
	}

	public void formulario() {
		
	}

	@IncludeParameters
	public void salva(@Valid Departamento departamento) {
		validator.onErrorRedirectTo(this).formulario();
		departamentoDao.salva(departamento);
		result.redirectTo(this).lista();
	}

	public void atualiza(Integer id, Result result) {
		Departamento departamento = departamentoDao.buscaPorId(id);
		result.include(departamento);
		result.of(this).formulario();
	}

	public void lista() {
		List<Departamento> departamentos = departamentoDao.lista();
		result.include("departamentos", departamentos);
	}
	
	public void json() {
		this.result.use(Results.json()).from(this.departamentoDao.lista()).serialize();
	}
}