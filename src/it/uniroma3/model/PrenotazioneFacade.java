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
	
	@SuppressWarnings("unchecked")
	public List<Prenotazione> prenotazioniByMedico(Medico medico) {
		Query query=em.createQuery("SELECT o FROM Prenotazione o WHERE o.medico = :c", Prenotazione.class);
		query.setParameter("c", medico);
		return query.getResultList();
	}

	public Prenotazione getPrenotazione(long id) {
		Prenotazione pren = em.find(Prenotazione.class, id);
		return pren;
	}
	
	public Prenotazione getPrenotazione(String codice) {
		Query query=em.createQuery("SELECT p FROM Prenotazione p WHERE p.codice = :c", Prenotazione.class);
		query.setParameter("c", codice);
		return (Prenotazione) query.getSingleResult();
	}

	public Prenotazione createPrenotazione(Utente utente, Medico medico, Date dataesame,Date datapren,String codice,Esame esame) {
		Prenotazione pren = new Prenotazione(utente,medico,dataesame,datapren,codice,esame);
		em.persist(pren);
		return pren;
	}



}
