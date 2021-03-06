package br.com.ebf.seguranca;

import javax.inject.Inject;

import br.com.caelum.vraptor.Accepts;
import br.com.caelum.vraptor.AroundCall;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.controller.ControllerMethod;
import br.com.caelum.vraptor.interceptor.SimpleInterceptorStack;
import br.com.ebf.controller.LoginController;
import br.com.ebf.modelo.UsuarioLogado;

@Intercepts
public class AutorizacaoInterceptor {

	private Result result;
	private ControllerMethod method;
	private UsuarioLogado usuarioLogado;

	public AutorizacaoInterceptor() {
	}

	@Inject
	public AutorizacaoInterceptor(UsuarioLogado usuarioLogado, Result result, ControllerMethod method) {
		this.usuarioLogado = usuarioLogado;
		this.result = result;
		this.method = method;
	}

	@Accepts
	public boolean accept() {
		return !method.containsAnnotation(Open.class);
	}

	@AroundCall
	public void intercept(SimpleInterceptorStack stack) {
		if (usuarioLogado.isLogado()) {
			stack.next();
		} else {
			result.redirectTo(LoginController.class).formularioLogin();
		}
	}

}