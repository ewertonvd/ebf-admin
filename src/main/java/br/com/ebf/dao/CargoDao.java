package br.com.ebf.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.caelum.vraptor.Result;
import br.com.ebf.modelo.Cargo;

@RequestScoped
public class CargoDao {

	private EntityManager manager;

	@Inject
	public CargoDao(EntityManager manager) {
		this.manager = manager;
	}

	// PARA USO DO CDI
	public CargoDao() {
	}

	public void salva(Cargo cargo) {
		manager.getTransaction().begin();
		if (cargo.getId() == null) {
			manager.persist(cargo);
		} else {
			manager.merge(cargo);
		}
		manager.getTransaction().commit();
		manager.close();
	}

	public Cargo atualiza(Integer id, Result result) {
		Cargo cargo = this.buscaPorId(id);
		return cargo;
	}

	public void remove(Cargo cargo) {
		manager.getTransaction().begin();
		manager.remove(manager.merge(Cargo.class));
		manager.getTransaction().commit();
		manager.close();
	}

	public List<Cargo> lista() {
		TypedQuery<Cargo> query = manager.createQuery("Select c from Cargo c", Cargo.class);
		return query.getResultList();
	}

	public List<Cargo> listaNCargo() {
		TypedQuery<Cargo> query = manager.createQuery("Select c from Cargo c Order By nome", Cargo.class);
		return query.getResultList();
	}

	public Cargo buscaPorId(Integer id) {
		try {
			TypedQuery<Cargo> query = manager.createQuery("Select c from Cargo c Where c.id = :id", Cargo.class);
			query.setParameter("id", id);
			return query.getSingleResult();
		} catch (Exception e) {
			return null;
		}
	}
}