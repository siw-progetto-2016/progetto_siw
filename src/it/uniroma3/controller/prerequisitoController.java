package it.uniroma3.controller;

import java.util.List;

import javax.ejb.EJB;
import javax.ejb.EJBException;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import it.uniroma3.model.Esame;
import it.uniroma3.model.Prerequisito;
import it.uniroma3.model.PrerequisitoFacade;

@ManagedBean
public class prerequisitoController {
	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String nome;
	private String valore;
	private Prerequisito prereq;
	private Esame esame;
	private String error;


	private List<Prerequisito> prerequisiti;
	
	@ManagedProperty(value="#{esameController}")
	private esameController esameController;
	
	@EJB
	private PrerequisitoFacade prerequisitoFacade;
	
	
	public String createPrerequisito() {
		Prerequisito a = null;
		
		try{
			a=findByName();
		}
		catch(EJBException e){
		}
		
		if(a==null){
			try {
				this.esame = esameController.findByCode();
			}
			catch (EJBException e) {
				this.setError("Esame non trovato nel database");
				return "newprerequisito";
			}
			this.prereq = prerequisitoFacade.createPrerequisito(nome,valore,esame);
			return "prereqok"; 
		}
		else {
			this.setError("Nome prerequisito già esistente");
			return "newprerequisito";
		}
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

	public Prerequisito findByName() {
		this.prereq = prerequisitoFacade.getPrerequisito(nome);
		return prereq;
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
	public Esame getEsame() {
		return esame;
	}

	public void setEsame(Esame esame) {
		this.esame = esame;
	}

	public esameController getEsameController() {
		return esameController;
	}

	public void setEsameController(esameController esameController) {
		this.esameController = esameController;
	}
	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	
}
