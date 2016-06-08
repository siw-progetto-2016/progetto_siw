package it.uniroma3.model;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;
@Stateless
public class PrerequisitoFacade {
	@PersistenceContext(unitName = "progetto-unit")
	private EntityManager em;

	public Prerequisito createPrerequisito(String nome, String valore) {
		Prerequisito prereq = new Prerequisito(nome,valore);
		em.persist(prereq);
		return prereq;
	}

	public List<Prerequisito> getAllPrerequisiti() {
		CriteriaQuery<Prerequisito> cq = em.getCriteriaBuilder().createQuery(Prerequisito.class);
		cq.select(cq.from(Prerequisito.class));
		List<Prerequisito> prerequisiti = em.createQuery(cq).getResultList();
		return prerequisiti;
	}

	public Prerequisito getPrerequisito(Long id) {
		Prerequisito prereq = em.find(Prerequisito.class, id);
		return prereq;
	}

}
