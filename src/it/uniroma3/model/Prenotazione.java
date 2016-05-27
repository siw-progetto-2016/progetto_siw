package it.uniroma3.model;

import java.util.*;

public class Prenotazione {
	private long id;
	private String codice;
	private Paziente paziente;
	private Medico medico;
	private Date dataesame;
	private Date datapren;
	private Map<String,String> risultati;
	
	public Prenotazione(){
		
	}

	public Prenotazione(long id, Paziente paziente, Medico medico, Date datapren, Date dataesame,String codice) {
		this.id = id;
		this.paziente = paziente;
		this.medico = medico;
		this.datapren = datapren;
		this.dataesame = dataesame;
		this.codice = codice;
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

	public Paziente getPaziente() {
		return paziente;
	}

	public void setPaziente(Paziente paziente) {
		this.paziente = paziente;
	}

	public Medico getMedico() {
		return medico;
	}

	public void setMedico(Medico medico) {
		this.medico = medico;
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

	public Map<String, String> getRisultati() {
		return risultati;
	}
	
	public void setRisultati(Map<String, String> risultati) {
		this.risultati = risultati;
	}

}
