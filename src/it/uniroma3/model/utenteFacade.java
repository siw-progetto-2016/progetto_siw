package it.uniroma3.model;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;

@Stateless
public class utenteFacade {
	
	@PersistenceContext(unitName = "progetto-unit")
	private EntityManager em;

	public Utente convalida(String userName, String pwd) {
		Query q = em.createQuery("SELECT u FROM Utente u WHERE u.userName='"+ userName + "' AND u.pwd='"+pwd+"'");
		Utente u = (Utente)q.getSingleResult();
		return u;
	}

	public List<Prenotazione> getAllPrenotazioni() {
		CriteriaQuery<Prenotazione> cq = em.getCriteriaBuilder().createQuery(Prenotazione.class);
		cq.select(cq.from(Prenotazione.class));
		List<Prenotazione> prenotazioni = em.createQuery(cq).getResultList();
		return prenotazioni;
	}

	public Prenotazione getPrenotazione(long id) {
			Prenotazione pren = em.find(Prenotazione.class, id);
			return pren;
	}

}
