package it.uniroma3.model;

import java.util.Date;
import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

@Stateless
public class PrenotazioneFacade {
	@PersistenceContext(unitName = "progetto-unit")
	private EntityManager em;


	@SuppressWarnings("unchecked")
	public List<Prenotazione> getAllPrenotazioni(Utente utente) {
		Query query=em.createQuery("SELECT o FROM Prenotazione o WHERE o.utente = :c", Prenotazione.class);
		query.setParameter("c", utente);
		return query.getResultList();
	}

	public Prenotazione getPrenotazione(long id) {
		Prenotazione pren = em.find(Prenotazione.class, id);
		return pren;
	}

	public Prenotazione createPrenotazione(Utente utente, Medico medico, Date dataesame, String codice) {
		Prenotazione pren = new Prenotazione(utente,medico,dataesame,codice);
		em.persist(pren);
		return pren;
	}



}
