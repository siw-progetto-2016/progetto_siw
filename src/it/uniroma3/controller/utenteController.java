package it.uniroma3.controller;

import java.util.List;

import javax.ejb.EJB;
import javax.ejb.EJBException;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import it.uniroma3.model.Prenotazione;
import it.uniroma3.model.Utente;
import it.uniroma3.model.utenteFacade;

@ManagedBean
@SessionScoped
public class utenteController {
	private long id;
	private String nome;
	private String cognome;
	private String userName;
	private String pwd;
	private Utente utente;
	private String error;
	private Prenotazione prenotazione;
	private List<Prenotazione> prenotazioni;

	@EJB
	private utenteFacade utenteFacade;

	public String convalida() {
		try {
			this.utente=utenteFacade.convalida(userName, pwd);
		}
		catch (EJBException e) {
			this.setError("Username o password non corretti");
			return "login";
		} 
		this.prenotazioni=this.utente.getPrenotazioni();
		return "paziente";
	}




	public Utente getUtente() {
		return utente;
	}


	public void setUtente(Utente utente) {
		this.utente = utente;
	}


	public utenteFacade getUtenteFacade() {
		return utenteFacade;
	}


	public void setUtenteFacade(utenteFacade utenteFacade) {
		this.utenteFacade = utenteFacade;
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

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public List<Prenotazione> getPrenotazioni() {
		return prenotazioni;
	}

	public void setPrenotazioni(List<Prenotazione> prenotazioni) {
		this.prenotazioni = prenotazioni;
	}


	public String getError() {
		return error;
	}


	public void setError(String error) {
		this.error = error;
	}

	public Prenotazione getPrenotazione() {
		return prenotazione;
	}

	public void setPrenotazione(Prenotazione prenotazione) {
		this.prenotazione = prenotazione;
	}



}
