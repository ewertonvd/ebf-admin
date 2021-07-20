package br.com.ebf.dao;

import java.util.Date;
import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.caelum.vraptor.Result;
import br.com.ebf.modelo.Cliente;

@RequestScoped
public class ClienteDao {

	private EntityManager manager;

	@Inject
	public ClienteDao(EntityManager manager) {
		this.manager = manager;
	}

	// PARA USO DO CDI
	public ClienteDao() {
	}

	public void salva(Cliente cliente) {
		manager.getTransaction().begin();
		if (cliente.getNumCadastro() == null) {
			cliente.setDataCadastro(new Date(System.currentTimeMillis()));
			manager.persist(cliente);
		} else {
			manager.merge(cliente);
		}
		manager.getTransaction().commit();
		manager.close();
	}

	public Cliente atualiza(Integer numCadastro, Result result) {
		Cliente cliente = this.buscaPorNumCadastro(numCadastro);
		return cliente;
	}

	public void remove(Cliente cliente) {
		manager.getTransaction().begin();
		manager.remove(manager.merge(Cliente.class));
		manager.getTransaction().commit();
		manager.close();
	}

	// @TransactionAttribute(TransactionAttributeType.NOT_SUPPORTED)
	public List<Cliente> lista(String tipoCli1, String tipoCli2, String tipoCli3, String tipoCli4) {
		TypedQuery<Cliente> query = manager.createQuery(
				"Select c from Cliente c Where c.tipoCli = :tipoCli1 or c.tipoCli = :tipoCli2 or c.tipoCli = :tipoCli3 or c.tipoCli = :tipoCli4",
				Cliente.class);
		query.setParameter("tipoCli1", tipoCli1);
		query.setParameter("tipoCli2", tipoCli2);
		query.setParameter("tipoCli3", tipoCli3);
		query.setParameter("tipoCli4", tipoCli4);
		return query.getResultList();
	}

	public Cliente buscaPorNumCadastro(Integer numCadastro) {
		try {
			TypedQuery<Cliente> query = manager
					.createQuery("Select c from Cliente c Where c.numCadastro = :numCadastro", Cliente.class);
			query.setParameter("numCadastro", numCadastro);
			return query.getSingleResult();
		} catch (Exception e) {
			return null;
		}
	}
}