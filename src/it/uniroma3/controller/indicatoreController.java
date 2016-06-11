package it.uniroma3.controller;


import java.util.List;

import javax.ejb.EJB;
import javax.ejb.EJBException;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import it.uniroma3.model.Esame;
import it.uniroma3.model.Indicatore;
import it.uniroma3.model.IndicatoreFacade;
import it.uniroma3.model.Prerequisito;

@ManagedBean
public class indicatoreController {

	private Long id;
	private String nome;
	private Esame esame;
	private String error;
	private Indicatore indicatore;
	private List<Indicatore> indicatori;

	@EJB
	private IndicatoreFacade indicatoreFacade;

	@ManagedProperty(value="#{esameController}")
	private esameController esameController;



	public String createIndicatore() {
		Indicatore a = null;
		
		try{
			a=findByName();
		}
		catch(EJBException e){
		}
		
		if(a==null){
			try {
				this.esame = esameController.findByCode();
				a=findByName();
			}
			catch (EJBException e) {
				this.setError("Esame non trovato nel database");
				return "newindicatore";
			}
			this.indicatore = indicatoreFacade.createIndicatore(nome,esame);
			return "indiok"; 
		}
		else {
			this.setError("Nome indicatore già esistente");
			return "newindicatore";
		}
	}

	public String listaIndicatori() {
		this.indicatori = indicatoreFacade.getAllIndicatori();
		return "###"; 
	}

	public String findIndicatore() {
		this.indicatore = indicatoreFacade.getIndicatore(id);
		return "indicatore";
	}

	public String findIndicatore(Long id) {
		this.indicatore = indicatoreFacade.getIndicatore(id);
		return "indicatore";
	}

	public Indicatore findByName() {
		this.indicatore = indicatoreFacade.getIndicatore(nome);
		return indicatore;
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

	public Esame getEsame() {
		return esame;
	}

	public void setEsame(Esame esame) {
		this.esame = esame;
	}

	public Indicatore getIndicatore() {
		return indicatore;
	}

	public void setIndicatore(Indicatore indicatore) {
		this.indicatore = indicatore;
	}

	public IndicatoreFacade getIndicatoreFacade() {
		return indicatoreFacade;
	}

	public void setIndicatoreFacade(IndicatoreFacade indicatoreFacade) {
		this.indicatoreFacade = indicatoreFacade;
	}

	public esameController getEsameController() {
		return esameController;
	}

	public void setEsameController(esameController esameController) {
		this.esameController = esameController;
	}

	public List<Indicatore> getIndicatori() {
		return indicatori;
	}

	public void setIndicatori(List<Indicatore> indicatori) {
		this.indicatori = indicatori;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}


}
