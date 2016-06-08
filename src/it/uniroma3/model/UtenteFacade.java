package it.uniroma3.model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;


@Stateless
public class UtenteFacade {
	
	@PersistenceContext(unitName = "progetto-unit")
	private EntityManager em;

	public Utente convalida(String userName, String pwd) {
		Query q = em.createQuery("SELECT u FROM Utente u WHERE u.userName='"+ userName + "' AND u.pwd='"+pwd+"'");
		Utente u = (Utente)q.getSingleResult();
		return u;
	}



}
