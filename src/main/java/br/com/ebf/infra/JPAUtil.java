package br.com.ebf.infra;

import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.context.RequestScoped;
import javax.enterprise.inject.Disposes;
import javax.enterprise.inject.Produces;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

@ApplicationScoped
public class JPAUtil {

	private EntityManagerFactory factory = Persistence.createEntityManagerFactory("default");

	// @Produces => Para informar ao CDI que esse será o método utilizado para
	// criar as E.M.
	// @Produces => Para criar um E.M. por requisição WEB.
	@Produces
	@RequestScoped
	public EntityManager getEntityManager() {
		return factory.createEntityManager();
	}

	// @Disposes => Para informar ao CDI que esse será o método que fecha o E.M.
	public void close(@Disposes EntityManager manager) {
		manager.close();
	}
}