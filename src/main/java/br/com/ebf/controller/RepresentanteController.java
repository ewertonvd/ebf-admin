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
import br.com.ebf.dao.EstadoDao;
import br.com.ebf.dao.PaisDao;
import br.com.ebf.dao.RepresentanteDao;
import br.com.ebf.modelo.Cidade;
import br.com.ebf.modelo.Estado;
import br.com.ebf.modelo.Pais;
import br.com.ebf.modelo.Representante;

@Controller
public class RepresentanteController {

	private RepresentanteDao representanteDao;
	private PaisDao paisDao;
	private EstadoDao estadoDao;
	private CidadeDao cidadeDao;

	private Result result;
	private Validator validator;

	@Inject
	public RepresentanteController(RepresentanteDao representanteDao, PaisDao paisDao, EstadoDao estadoDao,
			CidadeDao cidadeDao, Result result, Validator validator) {
		this.representanteDao = representanteDao;
		this.paisDao = paisDao;
		this.estadoDao = estadoDao;
		this.cidadeDao = cidadeDao;
		this.result = result;
		this.validator = validator;
	}

	// PARA USO DO CDI
	public RepresentanteController() {
	}

	public void formulario() {
		listaNPaises();
		listaSEstados();
		listaNCidades();
	}

	@IncludeParameters
	public void salva(@Valid Representante representante) {
		validator.onErrorRedirectTo(this).formulario();
		representanteDao.salva(representante);
		result.redirectTo(this).lista();
	}

	public void atualiza(Integer numCadastro, Result result) {
		listaNPaises();
		listaSEstados();
		listaNCidades();
		Representante representante = representanteDao.buscaPorNumCadastro(numCadastro);
		result.include(representante);
		result.of(this).formulario();
	}

	public void lista() {
		List<Representante> representantes = representanteDao.lista();
		result.include("representantes", representantes);
	}

	public void listaSEstados() {
		List<Estado> siglaEstados = estadoDao.listaSEstados();
		result.include("siglaEstados", siglaEstados);
	}

	public void listaNCidades() {
		List<Cidade> nCidades = cidadeDao.listaNCidade();
		result.include("nCidades", nCidades);
	}

	public void listaNPaises() {
		List<Pais> nPaises = paisDao.listaNPaises();
		result.include("nPaises", nPaises);
	}

	public void json() {
		this.result.use(Results.json()).from(this.representanteDao.lista()).serialize();
	}
}