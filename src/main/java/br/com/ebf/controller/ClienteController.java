package br.com.ebf.controller;

import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.com.caelum.vraptor.validator.Validator;
import br.com.ebf.dao.ClienteDao;
import br.com.ebf.modelo.Cliente;

@Controller
public class ClienteController {

	private ClienteDao clienteDao;
	private Result result;
	private Validator validator;

	@Inject
	public ClienteController(ClienteDao clienteDao, Result result, Validator validator) {
		this.clienteDao = clienteDao;
		this.result = result;
		this.validator = validator;
	}

	// PARA USO DO CDI
	public ClienteController() {
	}

	public void formulario() {
	}

	@IncludeParameters
	public void salva(@Valid Cliente cliente) {
		validator.onErrorRedirectTo(this).formulario();
		clienteDao.salva(cliente);
		result.redirectTo(this).lista();
	}

	public void atualiza(Integer numCadastro, Result result) {
		Cliente cliente = clienteDao.buscaPorNumCadastro(numCadastro);
		result.include(cliente);
		result.of(this).formulario();
	}

	public void lista() {
		List<Cliente> clientes = clienteDao.lista("Autopeça", "Comercial Exportador", "Motopeça", "Motopeça Montadora");
		result.include("clientes", clientes);
	}
}