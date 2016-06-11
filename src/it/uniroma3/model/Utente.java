package it.uniroma3.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "utenti")
public class Utente {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	@Column(nullable = false)
	private String nome;
	@Column(nullable = false)
	private String cf;
	@Column(nullable = false)
	private String sesso;
	@Column(nullable = false)
	private String email;
	@Column(nullable = false)
	private String cognome;
	@Column(nullable = false,unique = true)
	private String userName;
	@Column(nullable = false)
	private String pwd;
	@Column(nullable = false)
	private String ruolo;
	@Temporal(TemporalType.DATE)
	private Date datadinascita;
	@OneToMany(mappedBy = "utente",fetch=FetchType.EAGER)
	private List<Prenotazione> prenotazioni;

	public Utente(){

	}
    
	
	public Utente(String nome, String cf, String sesso, String email, String cognome, String userName, String pwd,
			String ruolo, Date datadinascita) {
		this.nome = nome;
		this.cf = cf;
		this.sesso = sesso;
		this.email = email;
		this.cognome = cognome;
		this.userName = userName;
		this.pwd = pwd;
		this.ruolo = ruolo;
		this.datadinascita = datadinascita;
		this.prenotazioni = new ArrayList<Prenotazione>();
	}


	public List<Prenotazione> getPrenotazioni() {
		return prenotazioni;
	}

	public void setPrenotazioni(List<Prenotazione> prenotazioni) {
		this.prenotazioni = prenotazioni;
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

	public String getCodiceFiscale() {
		return userName;
	}

	public void setCodiceFiscale(String codiceFiscale) {
		this.userName = codiceFiscale;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getRuolo() {
		return ruolo;
	}

	public void setRuolo(String ruolo) {
		this.ruolo = ruolo;
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


}
