package it.uniroma3.model;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;
@Stateless
public class IndicatoreFacade {

	@PersistenceContext(unitName = "progetto-unit")
	private EntityManager em;

	public Indicatore createIndicatore(String nome, Esame esame) {
		Indicatore indicatore = new Indicatore(nome,esame);
		em.persist(indicatore);
		return indicatore;
	}

	public  List<Indicatore> getAllIndicatori() {
		CriteriaQuery<Indicatore> cq = em.getCriteriaBuilder().createQuery(Indicatore.class);
		cq.select(cq.from(Indicatore.class));
		List<Indicatore> indicatori = em.createQuery(cq).getResultList();
		return indicatori;
	}

	public Indicatore getIndicatore(Long id) {
		Indicatore indicatore = em.find(Indicatore.class, id);
		return indicatore;
	}
	
	public Indicatore getIndicatore(String nome) {
		Indicatore indicatore = em.find(Indicatore.class, nome);
		return indicatore;
	}

}
