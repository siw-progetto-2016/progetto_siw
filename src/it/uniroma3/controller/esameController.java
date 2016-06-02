package it.uniroma3.controller;

import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import it.uniroma3.model.Esame;
import it.uniroma3.model.EsameFacade;

@ManagedBean
public class esameController {
	@ManagedProperty(value="#{param.id}")
	private long id;
	private String codice;
	private String nome;
	private String descrizione;
	private float costo;
	private Esame esame;
	private List<Esame> esami;

	@EJB
	private EsameFacade esameFacade;

	public String createEsame() {
		this.esame = esameFacade.createEsame(codice,nome,descrizione,costo);
		return "esame"; 
	}

	public String listaEsami() {
		this.esami = esameFacade.getAllEsami();
		return "esami"; 
	}

	public String findEsame() {
		this.esame = esameFacade.getEsame(id);
		return "esame";
	}

	public String findEsame(Long id) {
		this.esame = esameFacade.getEsame(id);
		return "esame";
	}


	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public String getCodice() {
		return codice;
	}
	
	public void setCodice(String codice) {
		this.codice = codice;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getDescrizione() {
		return descrizione;
	}
	
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	
	public float getCosto() {
		return costo;
	}
	
	public void setCosto(float costo) {
		this.costo = costo;
	}
	
	public List<Esame> getEsami() {
		return esami;
	}
	
	public void setEsami(List<Esame> esami) {
		this.esami = esami;
	}

	public Esame getEsame() {
		return esame;
	}

	public void setEsame(Esame esame) {
		this.esame = esame;
	}


}
