package br.com.ebf.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.caelum.vraptor.Result;
import br.com.ebf.modelo.Cidade;

@RequestScoped
public class CidadeDao {

	private EntityManager manager;

	@Inject
	public CidadeDao(EntityManager manager) {
		this.manager = manager;
	}

	// PARA USO DO CDI
	public CidadeDao() {
	}

	public void salva(Cidade cidade) {
		manager.getTransaction().begin();
		if (cidade.getId() == null) {
			manager.persist(cidade);
		} else {
			manager.merge(cidade);
		}
		manager.getTransaction().commit();
		manager.close();
	}

	public Cidade atualiza(Integer id, Result result) {
		Cidade cidade = this.buscaPorId(id);
		return cidade;
	}

	public void remove(Cidade cidade) {
		manager.getTransaction().begin();
		manager.remove(manager.merge(Cidade.class));
		manager.getTransaction().commit();
		manager.close();
	}

	public List<Cidade> lista() {
		TypedQuery<Cidade> query = manager.createQuery("Select c from Cidade c", Cidade.class);
		return query.getResultList();
	}

	public List<Cidade> listaNCidade() {
		TypedQuery<Cidade> query = manager.createQuery("Select c from Cidade c Order By nome", Cidade.class);
		return query.getResultList();
	}

	public Cidade buscaPorId(Integer id) {
		try {
			TypedQuery<Cidade> query = manager.createQuery("Select c from Cidade c Where c.id = :id", Cidade.class);
			query.setParameter("id", id);
			return query.getSingleResult();
		} catch (Exception e) {
			return null;
		}
	}
}