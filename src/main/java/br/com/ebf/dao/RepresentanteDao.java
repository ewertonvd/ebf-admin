package br.com.ebf.dao;

import java.util.Date;
import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.caelum.vraptor.Result;
import br.com.ebf.modelo.Representante;

@RequestScoped
public class RepresentanteDao {

	private EntityManager manager;

	@Inject
	public RepresentanteDao(EntityManager manager) {
		this.manager = manager;
	}

	// PARA USO DO CDI
	public RepresentanteDao() {
	}

	public void salva(Representante representante) {
		manager.getTransaction().begin();
		if (representante.getNumCadastro() == null) {
			representante.setDataCadastro(new Date(System.currentTimeMillis()));
			manager.persist(representante);
		} else {
			manager.merge(representante);
		}
		manager.getTransaction().commit();
		manager.close();
	}

	public Representante atualiza(Integer numCadastro, Result result) {
		Representante representante = this.buscaPorNumCadastro(numCadastro);
		return representante;
	}

	public void remove(Representante representante) {
		manager.getTransaction().begin();
		manager.remove(manager.merge(Representante.class));
		manager.getTransaction().commit();
		manager.close();
	}

	public List<Representante> lista() {
		TypedQuery<Representante> query = manager.createQuery("Select r from Representante r", Representante.class);
		return query.getResultList();
	}

	public Representante buscaPorNumCadastro(Integer numCadastro) {
		try {
			TypedQuery<Representante> query = manager.createQuery(
					"Select r from Representante r Where r.numCadastro = :numCadastro", Representante.class);
			query.setParameter("numCadastro", numCadastro);
			return query.getSingleResult();
		} catch (Exception e) {
			return null;
		}
	}
}