package br.com.ebf.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.caelum.vraptor.Result;
import br.com.ebf.modelo.Estado;

@RequestScoped
public class EstadoDao {

	private EntityManager manager;

	@Inject
	public EstadoDao(EntityManager manager) {
		this.manager = manager;
	}

	// PARA USO DO CDI
	public EstadoDao() {
	}

	public void salva(Estado estado) {
		manager.getTransaction().begin();
		if (estado.getId() == null) {
			manager.persist(estado);
		} else {
			manager.merge(estado);
		}
		manager.getTransaction().commit();
		manager.close();
	}

	public Estado atualiza(Integer id, Result result) {
		Estado estado = this.buscaPorId(id);
		return estado;
	}

	public void remove(Estado estado) {
		manager.getTransaction().begin();
		manager.remove(manager.merge(Estado.class));
		manager.getTransaction().commit();
		manager.close();
	}

	public List<Estado> lista() {
		TypedQuery<Estado> query = manager.createQuery("Select e from Estado e", Estado.class);
		return query.getResultList();
	}

	public List<Estado> listaSEstados() {
		TypedQuery<Estado> query = manager.createQuery("Select e from Estado e Order By sigla", Estado.class);
		return query.getResultList();
	}

	public Estado buscaPorId(Integer id) {
		try {
			TypedQuery<Estado> query = manager.createQuery("Select e from Estado e Where e.id = :id", Estado.class);
			query.setParameter("id", id);
			return query.getSingleResult();
		} catch (Exception e) {
			return null;
		}
	}
}