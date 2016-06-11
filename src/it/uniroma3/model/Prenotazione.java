package it.uniroma3.model;

import java.util.*;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
@Table(name = "prenotazioni")
public class Prenotazione {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	@Column(nullable = false)
	private String codice;
	@Temporal(TemporalType.DATE)
	private Date dataesame;
	@Temporal(TemporalType.TIMESTAMP)
	private Date datapren;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="utente_id")
	private Utente utente;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="esame_id")
	private Esame esame;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="medico_id")
	private Medico medico;

	
	public Prenotazione(){
		
	}

	public Prenotazione(Utente utente, Medico medico, Date dataesame,Date datapren,String codice,Esame esame) {
		this.utente = utente;
		this.medico = medico;
		this.datapren = datapren;
		this.dataesame = dataesame;
		this.codice = codice;
		this.esame = esame;
	}


	public String getCodice() {
		return codice;
	}

	public void setCodice(String codice) {
		this.codice = codice;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Utente getUtente() {
		return utente;
	}

	public void setUtente(Utente utente) {
		this.utente = utente;
	}
	
	public Date getDatapren() {
		return datapren;
	}

	public void setDatapren(Date datapren) {
		this.datapren = datapren;
	}

	public Date getDataesame() {
		return dataesame;
	}

	public void setDataesame(Date dataesame) {
		this.dataesame = dataesame;
	}


	public Medico getMedico() {
		return medico;
	}

	public void setMedico(Medico medico) {
		this.medico = medico;
	}

	public Esame getEsame() {
		return esame;
	}

	public void setEsame(Esame esame) {
		this.esame = esame;
	}

}
