package br.com.ebf.modelo;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

@Named
@SessionScoped
public class UsuarioLogado implements Serializable {

	private static final long serialVersionUID = 1L;

	private Usuario usuario;

	public void fazLogin(Usuario usuario) {
		this.usuario = usuario;
	}

	public void desloga() {
		this.usuario = null;
	}

	public boolean isLogado() {
		return this.usuario != null;
	}
}