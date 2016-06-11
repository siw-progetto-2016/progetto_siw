package it.uniroma3.model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

@Stateless
public class MedicoFacade {
	
	@PersistenceContext(unitName = "progetto-unit")
	private EntityManager em;

	public Medico getMedico(String userName) {
		Query q = em.createQuery("SELECT m FROM Medico m WHERE m.userName='"+ userName + "'");
		Medico m = (Medico)q.getSingleResult();
		return m;
	}
	

}
