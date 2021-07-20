package br.com.ebf.controller;

import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.com.caelum.vraptor.validator.Validator;
import br.com.ebf.dao.CargoDao;
import br.com.ebf.dao.DepartamentoDao;
import br.com.ebf.dao.UsuarioDao;
import br.com.ebf.modelo.Cargo;
import br.com.ebf.modelo.Departamento;
import br.com.ebf.modelo.Usuario;

@Controller
public class UsuarioController {

	private UsuarioDao usuarioDao;
	private DepartamentoDao departamentoDao;
	private CargoDao cargoDao;
	private Result result;
	private Validator validator;

	@Inject
	public UsuarioController(UsuarioDao usuarioDao, DepartamentoDao departamentoDao, CargoDao cargoDao, Result result,
			Validator validator) {
		this.usuarioDao = usuarioDao;
		this.departamentoDao = departamentoDao;
		this.cargoDao = cargoDao;
		this.result = result;
		this.validator = validator;
	}

	// PARA USO DO CDI
	public UsuarioController() {
	}

	public void formulario() {
		listaNDepartamentos();
		listaNCargos();
	}

	@IncludeParameters
	public void salva(@Valid Usuario usuario) {
		validator.onErrorRedirectTo(this).formulario();
		usuarioDao.salva(usuario);
		result.redirectTo(this).lista();
	}

	public void atualiza(Integer id, Result result) {
		listaNDepartamentos();
		listaNCargos();
		Usuario usuario = usuarioDao.buscaPorId(id);
		result.include(usuario);
		result.of(this).formulario();
	}

	public void lista() {
		List<Usuario> usuarios = usuarioDao.lista();
		result.include("usuarios", usuarios);
	}

	public void listaNDepartamentos() {
		List<Departamento> nDepartamentos = departamentoDao.listaNDepartamento();
		result.include("nDepartamentos", nDepartamentos);
	}

	public void listaNCargos() {
		List<Cargo> nCargos = cargoDao.listaNCargo();
		result.include("nCargos", nCargos);
	}
}