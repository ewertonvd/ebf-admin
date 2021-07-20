package br.com.ebf.controller;

import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.com.caelum.vraptor.validator.Validator;
import br.com.caelum.vraptor.view.Results;
import br.com.ebf.dao.CargoDao;
import br.com.ebf.modelo.Cargo;

@Controller
public class CargoController {

	private CargoDao cargoDao;
	private Result result;
	private Validator validator;

	@Inject
	public CargoController(CargoDao cargoDao, Result result, Validator validator) {
		this.cargoDao = cargoDao;
		this.result = result;
		this.validator = validator;
	}

	// PARA USO DO CDI
	public CargoController() {
	}

	public void formulario() {
	}

	@IncludeParameters
	public void salva(@Valid Cargo cargo) {
		validator.onErrorRedirectTo(this).formulario();
		cargoDao.salva(cargo);
		result.redirectTo(this).lista();
	}

	public void atualiza(Integer id, Result result) {
		Cargo cargo = cargoDao.buscaPorId(id);
		result.include(cargo);
		result.of(this).formulario();
	}

	public void lista() {
		List<Cargo> cargos = cargoDao.lista();
		result.include("cargos", cargos);
	}

	public void listaNCargos() {
		List<Cargo> nCargos = cargoDao.listaNCargo();
		result.include("nCargos", nCargos);
	}

	public void json() {
		this.result.use(Results.json()).from(this.cargoDao.lista()).serialize();
	}

}