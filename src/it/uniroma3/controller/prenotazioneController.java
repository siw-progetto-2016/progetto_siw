package it.uniroma3.controller;

import java.util.Date;
import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import it.uniroma3.model.Esame;
import it.uniroma3.model.Medico;
import it.uniroma3.model.Prenotazione;
import it.uniroma3.model.Utente;
import it.uniroma3.model.PrenotazioneFacade;

@ManagedBean
public class prenotazioneController {	
	@ManagedProperty(value="#{param.id}")
	private long id;
	private String codice;
	private Medico medico;
	private Esame esame;
	private Date dataesame;
	private Date datapren;
	private Utente utente;
	private Prenotazione prenotazione;
	private List<Prenotazione> prenotazioni;

	@EJB
	private PrenotazioneFacade prenotazioneFacade;
	
	public String createPrenotazione() {
		this.prenotazione = prenotazioneFacade.createPrenotazione(utente,medico,dataesame,codice);
		return "prenotazione"; 
	}

	public String listaPrenotazioni(Utente utente) {
		this.prenotazioni = prenotazioneFacade.getAllPrenotazioni(utente);
		return "prenotazioni"; 
	}

	public String findPrenotazione(Long id) {
		this.prenotazione = prenotazioneFacade.getPrenotazione(id);
		this.esame = prenotazione.getEsame();
		this.medico = prenotazione.getMedico();
		return "prenotazione";
	}
	public String findPrenotazione() {
		this.prenotazione = prenotazioneFacade.getPrenotazione(id);
		this.esame = prenotazione.getEsame();
		this.medico = prenotazione.getMedico();
		return "prenotazione";
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
	public Medico getMedico() {
		return medico;
	}
	public void setMedico(Medico medico) {
		this.medico = medico;
	}
	public Date getDataesame() {
		return dataesame;
	}
	public void setDataesame(Date dataesame) {
		this.dataesame = dataesame;
	}
	public Date getDatapren() {
		return datapren;
	}
	public void setDatapren(Date datapren) {
		this.datapren = datapren;
	}
	public Prenotazione getPrenotazione() {
		return prenotazione;
	}
	public void setPrenotazione(Prenotazione prenotazione) {
		this.prenotazione = prenotazione;
	}
	public List<Prenotazione> getPrenotazioni() {
		return prenotazioni;
	}
	public void setPrenotazioni(List<Prenotazione> prenotazioni) {
		this.prenotazioni = prenotazioni;
	}

	public Esame getEsame() {
		return esame;
	}

	public void setEsame(Esame esame) {
		this.esame = esame;
	}

	public PrenotazioneFacade getPrenotazioneFacade() {
		return prenotazioneFacade;
	}

	public void setPrenotazioneFacade(PrenotazioneFacade prenotazioneFacade) {
		this.prenotazioneFacade = prenotazioneFacade;
	}

	public Utente getUtente() {
		return utente;
	}

	public void setUtente(Utente utente) {
		this.utente = utente;
	}
	


}
