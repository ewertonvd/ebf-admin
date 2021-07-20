package br.com.ebf.dao;

import java.util.Date;
import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.caelum.vraptor.Result;
import br.com.ebf.modelo.Transportadora;

@RequestScoped
public class TransportadoraDao {

	private EntityManager manager;

	@Inject
	public TransportadoraDao(EntityManager manager) {
		this.manager = manager;
	}

	// PARA USO DO CDI
	public TransportadoraDao() {
	}

	public void salva(Transportadora transportadora) {
		manager.getTransaction().begin();
		if (transportadora.getNumCadastro() == null) {
			transportadora.setDataCadastro(new Date(System.currentTimeMillis()));
			manager.persist(transportadora);
		} else {
			manager.merge(transportadora);
		}
		manager.getTransaction().commit();
		manager.close();
	}

	public Transportadora atualiza(Integer numCadastro, Result result) {
		Transportadora transportadora = this.buscaPorNumCadastro(numCadastro);
		return transportadora;
	}

	public void remove(Transportadora transportadora) {
		manager.getTransaction().begin();
		manager.remove(manager.merge(Transportadora.class));
		manager.getTransaction().commit();
		manager.close();
	}

	public List<Transportadora> lista() {
		TypedQuery<Transportadora> query = manager.createQuery("Select t from Transportadora t ", Transportadora.class);
		return query.getResultList();
	}

	public Transportadora buscaPorNumCadastro(Integer numCadastro) {
		try {
			TypedQuery<Transportadora> query = manager.createQuery(
					"Select t from Transportadora t Where t.numCadastro = :numCadastro", Transportadora.class);
			query.setParameter("numCadastro", numCadastro);
			return query.getSingleResult();
		} catch (Exception e) {
			return null;
		}
	}
}