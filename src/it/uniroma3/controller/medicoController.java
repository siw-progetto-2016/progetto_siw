package it.uniroma3.controller;

import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;

import it.uniroma3.model.Medico;
import it.uniroma3.model.MedicoFacade;
import it.uniroma3.model.Prenotazione;

@ManagedBean
public class medicoController {
	private long id;
	private String nome;
	private String cognome;
	private String specializzazione;
	private String userName;
	private Medico medico;
	private List<Prenotazione> prenotazioni;

	@EJB
	private MedicoFacade medicoFacade;
	
	public Medico findByUsername() {
		 this.medico = medicoFacade.getMedico(userName);
		 return medico;
	}

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public String getSpecializzazione() {
		return specializzazione;
	}
	public void setSpecializzazione(String specializzazione) {
		this.specializzazione = specializzazione;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public MedicoFacade getMedicoFacade() {
		return medicoFacade;
	}
	public void setMedicoFacade(MedicoFacade medicoFacade) {
		this.medicoFacade = medicoFacade;
	}

	public Medico getMedico() {
		return medico;
	}

	public void setMedico(Medico medico) {
		this.medico = medico;
	}

	public List<Prenotazione> getPrenotazioni() {
		return prenotazioni;
	}

	public void setPrenotazioni(List<Prenotazione> prenotazioni) {
		this.prenotazioni = prenotazioni;
	}



}
