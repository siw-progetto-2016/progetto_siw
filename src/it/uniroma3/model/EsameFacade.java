package it.uniroma3.model;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;

@Stateless
public class EsameFacade {

	@PersistenceContext(unitName = "progetto-unit")
	private EntityManager em;

	public Esame createEsame(String codice, String nome, String descrizione, float costo) {
		Esame esame = new Esame(codice, nome, descrizione, costo);
		em.persist(esame);
		return esame;
	}

	public List<Esame> getAllEsami() {
		CriteriaQuery<Esame> cq = em.getCriteriaBuilder().createQuery(Esame.class);
		cq.select(cq.from(Esame.class));
		List<Esame> esami = em.createQuery(cq).getResultList();
		return esami;

	}

	public Esame getEsame(long id) {
		Esame esame = em.find(Esame.class, id);
		return esame;
	}

}
