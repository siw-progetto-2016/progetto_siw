package it.uniroma3.controller;

import java.util.List;

import javax.ejb.EJB;
import javax.ejb.EJBException;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import it.uniroma3.model.Esame;
import it.uniroma3.model.EsameFacade;
import it.uniroma3.model.Indicatore;
import it.uniroma3.model.Prerequisito;
import it.uniroma3.model.Utente;

@ManagedBean
public class esameController {
	@ManagedProperty(value="#{param.id}")
	private long id;
	private String codice;
	private String nome;
	private String descrizione;
	private float costo;
	private Esame esame;
	private Utente utente;
	private String error;
	private List<Esame> esami;
	private List<Prerequisito> prerequisiti;
	private List<Indicatore> indicatori;;

	@EJB
	private EsameFacade esameFacade;

	public String createEsame(){
		Esame a = null;
		try{
			a=findByCode();
		}
		catch(EJBException e){
		}
		
		if(a==null){
			this.esame = esameFacade.createEsame(codice,nome,descrizione,costo);
			return "esameok"; 
		}
		else{
			this.setError("Codice esame già esistente");
			return "newesame";
		}
	}
	public String listaEsami() {
		this.esami = esameFacade.getAllEsami();
		return "esami"; 
	}
	public List<Esame> testEsami() {
		this.esami = esameFacade.getAllEsami();
		return esami; 
	}


	public String findEsame() {
		this.esame = esameFacade.getEsame(id);
		this.prerequisiti = esame.getPrerequisiti();
		this.indicatori = esame.getIndicatori();
		return "esame";
	}

	public String findEsame(Long id) {
		this.esame = esameFacade.getEsame(id);
		this.prerequisiti = esame.getPrerequisiti();
		this.indicatori = esame.getIndicatori();
		return "esame";
	}

	public Esame findByCode() {
		this.esame = esameFacade.getEsame(codice);
		return esame;
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

	public List<Prerequisito> getPrerequisiti() {
		return prerequisiti;
	}

	public void setPrerequisiti(List<Prerequisito> prerequisiti) {
		this.prerequisiti = prerequisiti;
	}

	public List<Indicatore> getIndicatori() {
		return indicatori;
	}

	public void setIndicatori(List<Indicatore> indicatori) {
		this.indicatori = indicatori;
	}

	public EsameFacade getEsameFacade() {
		return esameFacade;
	}

	public void setEsameFacade(EsameFacade esameFacade) {
		this.esameFacade = esameFacade;
	}

	public Utente getUtente() {
		return utente;
	}

	public void setUtente(Utente utente) {
		this.utente = utente;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}


}
