package br.com.ebf.dao;

import java.util.Date;
import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.caelum.vraptor.Result;
import br.com.ebf.modelo.Usuario;

@RequestScoped
public class UsuarioDao {

	private EntityManager manager;

	@Inject
	public UsuarioDao(EntityManager manager) {
		this.manager = manager;
	}

	// PARA USO DO CDI
	public UsuarioDao() {
	}

	public void salva(Usuario usuario) {
		manager.getTransaction().begin();
		if (usuario.getId() == null) {
			usuario.setDataCadastro(new Date(System.currentTimeMillis()));
			manager.persist(usuario);
		} else {
			manager.merge(usuario);
		}
		manager.getTransaction().commit();
		manager.close();
	}

	public Usuario atualiza(Integer id, Result result) {
		Usuario usuario = this.buscaPorId(id);
		return usuario;
	}

	public Usuario buscaPorId(Integer id) {
		return manager.find(Usuario.class, id);
	}

	public void remove(Usuario usuario) {
		manager.getTransaction().begin();
		manager.remove(manager.merge(Usuario.class));
		manager.getTransaction().commit();
		manager.close();
	}

	public List<Usuario> lista() {
		TypedQuery<Usuario> query = manager.createQuery("Select u from Usuario u", Usuario.class);
		return query.getResultList();
	}
	
	public Usuario busca(String login, String senha) {
		try {
			TypedQuery<Usuario> query = manager
					.createQuery("select u from Usuario u where u.login = :login and u.senha = :senha", Usuario.class);
			query.setParameter("login", login);
			query.setParameter("senha", senha);
			return query.getSingleResult();

		} catch (Exception e) {
			return null;
		}
	}
}