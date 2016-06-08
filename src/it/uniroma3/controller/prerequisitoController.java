package it.uniroma3.controller;

import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import it.uniroma3.model.Prerequisito;
import it.uniroma3.model.PrerequisitoFacade;

@ManagedBean
public class prerequisitoController {
	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String nome;
	private String valore;
	private Prerequisito prereq;
	private List<Prerequisito> prerequisiti;
	
	@EJB
	private PrerequisitoFacade prerequisitoFacade;
	
	
	public String createPrerequisito() {
		this.prereq = prerequisitoFacade.createPrerequisito(nome,valore);
		return "###"; 
	}

	public String listaPrerequisiti() {
		this.prerequisiti = prerequisitoFacade.getAllPrerequisiti();
		return "###"; 
	}

	public String findPrerequisito() {
		this.prereq = prerequisitoFacade.getPrerequisito(id);
		return "prerequisito";
	}

	public String Prerequisito(Long id) {
		this.prereq = prerequisitoFacade.getPrerequisito(id);
		return "prerequisito";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getValore() {
		return valore;
	}

	public void setValore(String valore) {
		this.valore = valore;
	}

	public Prerequisito getPrereq() {
		return prereq;
	}

	public void setPrereq(Prerequisito prereq) {
		this.prereq = prereq;
	}

	public List<Prerequisito> getPrerequisiti() {
		return prerequisiti;
	}

	public void setPrerequisiti(List<Prerequisito> prerequisiti) {
		this.prerequisiti = prerequisiti;
	}

	public PrerequisitoFacade getPrerequisitoFacade() {
		return prerequisitoFacade;
	}

	public void setPrerequisitoFacade(PrerequisitoFacade prerequisitoFacade) {
		this.prerequisitoFacade = prerequisitoFacade;
	}
	

	
}
