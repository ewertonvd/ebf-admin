package br.com.ebf.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.caelum.vraptor.Result;
import br.com.ebf.modelo.Pais;

@RequestScoped
public class PaisDao {

	private EntityManager manager;

	@Inject
	public PaisDao(EntityManager manager) {
		this.manager = manager;
	}

	// PARA USO DO CDI
	public PaisDao() {
	}

	public void salva(Pais pais) {
		manager.getTransaction().begin();
		if (pais.getNumCodigo() == null) {
			manager.persist(pais);
		} else {
			manager.merge(pais);
		}
		manager.getTransaction().commit();
		manager.close();
	}

	public Pais atualiza(Integer numCodigo, Result result) {
		Pais pais = this.buscaPorNumCodigo(numCodigo);
		return pais;
	}

	public void remove(Pais pais) {
		manager.getTransaction().begin();
		manager.remove(manager.merge(Pais.class));
		manager.getTransaction().commit();
		manager.close();
	}

	public List<Pais> lista() {
		TypedQuery<Pais> query = manager.createQuery("Select p from Pais p", Pais.class);
		return query.getResultList();
	}

	public List<Pais> listaNPaises() {
		TypedQuery<Pais> query = manager.createQuery("Select p from Pais p Order By nome", Pais.class);
		return query.getResultList();
	}

	public Pais buscaPorNumCodigo(Integer numCodigo) {
		try {
			TypedQuery<Pais> query = manager.createQuery("Select p from Pais p Where p.numCodigo = :numCodigo",
					Pais.class);
			query.setParameter("numCodigo", numCodigo);
			return query.getSingleResult();
		} catch (Exception e) {
			return null;
		}
	}
}