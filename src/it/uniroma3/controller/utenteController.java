package it.uniroma3.controller;

import java.util.Date;
import java.util.List;

import javax.ejb.EJB;
import javax.ejb.EJBException;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import it.uniroma3.model.Prenotazione;
import it.uniroma3.model.Utente;
import it.uniroma3.model.UtenteFacade;

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
	private String cf;
	private String sesso;
	private String email;
	private Date datadinascita;
	private String ruolo;
	private Prenotazione prenotazione;
	private List<Prenotazione> prenotazioni;

	@EJB
	private UtenteFacade utenteFacade;

	public String convalida() {
		try {
			this.utente = utenteFacade.convalida(userName, pwd);
			this.ruolo = utente.getRuolo();
		}
		catch (EJBException e) {
			this.setError("Username o password non corretti");
			return "login";
		} 
		if(this.ruolo.equals("admin"))
		{
			this.error = null;
			return "amministratore";
		}
		else
		if(this.ruolo.equals("user"))
		{
			this.error = null;
			return "paziente";
		}
		return "login";
	}
	
	public Utente findByUsername() {
		 return utenteFacade.getUtente(userName);
	}


	public Utente getUtente() {
		return utente;
	}


	public void setUtente(Utente utente) {
		this.utente = utente;
	}


	public UtenteFacade getUtenteFacade() {
		return utenteFacade;
	}


	public void setUtenteFacade(UtenteFacade utenteFacade) {
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


	public String getCf() {
		return cf;
	}


	public void setCf(String cf) {
		this.cf = cf;
	}


	public String getSesso() {
		return sesso;
	}


	public void setSesso(String sesso) {
		this.sesso = sesso;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public Date getDatadinascita() {
		return datadinascita;
	}


	public void setDatadinascita(Date datadinascita) {
		this.datadinascita = datadinascita;
	}


	public String getRuolo() {
		return ruolo;
	}


	public void setRuolo(String ruolo) {
		this.ruolo = ruolo;
	}



}
