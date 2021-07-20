package br.com.ebf.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.caelum.vraptor.Result;
import br.com.ebf.modelo.Departamento;

@RequestScoped
public class DepartamentoDao {

	private EntityManager manager;

	@Inject
	public DepartamentoDao(EntityManager manager) {
		this.manager = manager;
	}

	// PARA USO DO CDI
	public DepartamentoDao() {
	}

	public void salva(Departamento departamento) {
		manager.getTransaction().begin();
		if (departamento.getId() == null) {
			manager.persist(departamento);
		} else {
			manager.merge(departamento);
		}
		manager.getTransaction().commit();
		manager.close();
	}

	public Departamento atualiza(Integer id, Result result) {
		Departamento departamento = this.buscaPorId(id);
		return departamento;
	}

	public void remove(Departamento departamento) {
		manager.getTransaction().begin();
		manager.remove(manager.merge(Departamento.class));
		manager.getTransaction().commit();
		manager.close();
	}

	public List<Departamento> lista() {
		TypedQuery<Departamento> query = manager.createQuery("Select d from Departamento d", Departamento.class);
		return query.getResultList();
	}

	public List<Departamento> listaNDepartamento() {
		TypedQuery<Departamento> query = manager.createQuery("Select d from Departamento d Order By nome",
				Departamento.class);
		return query.getResultList();
	}

	public Departamento buscaPorId(Integer id) {
		try {
			TypedQuery<Departamento> query = manager.createQuery("Select d from Departamento d Where d.id = :id",
					Departamento.class);
			query.setParameter("id", id);
			return query.getSingleResult();
		} catch (Exception e) {
			return null;
		}
	}
}