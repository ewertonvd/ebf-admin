package br.com.ebf.controller;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;
import br.com.ebf.dao.UsuarioDao;
import br.com.ebf.modelo.Usuario;
import br.com.ebf.modelo.UsuarioLogado;
import br.com.ebf.seguranca.Open;

@Controller
public class LoginController {

	private UsuarioDao usuarioDao;
	private UsuarioLogado usuarioLogado;
	private Result result;
	private Validator validator;

	@Inject
	public LoginController(UsuarioDao usuarioDao, UsuarioLogado usuarioLogado, Result result, Validator validator) {
		this.usuarioDao = usuarioDao;
		this.usuarioLogado = usuarioLogado;
		this.result = result;
		this.validator = validator;
	}

	public LoginController() {
	}

	@Open
	public void formularioLogin() {
	}

	@Open
	public void autentica(@Valid String login, String senha) {
		Usuario usuario = usuarioDao.busca(login, senha);
		if (usuario != null) {
			usuarioLogado.fazLogin(usuario);
			result.redirectTo(IndexController.class).index();
//			result.redirectTo(UsuarioController.class).lista();
		} else {
			validator.add(new SimpleMessage("login_invalido", "Usuário ou senha incorretos!"));
			validator.onErrorRedirectTo(this).formularioLogin();
		}
	}

	@Open
	public void desloga() {
		usuarioLogado.desloga();
		result.redirectTo(this).formularioLogin();
	}
}