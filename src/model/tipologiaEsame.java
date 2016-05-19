package model;

import java.util.*;

public class tipologiaEsame {
	private long id;
	private String codice;
	private String nome;
	private String descrizione;
	private float costo;
	private Map<String,String> prerequisiti;
	private List<String> indicatori;
	
	public tipologiaEsame(){
		
	}

	public tipologiaEsame(String nome, long id, String descrizione, float costo,String codice) {
		this.nome = nome;
		this.id = id;
		this.descrizione = descrizione;
		this.costo = costo;
		this.codice = codice;
	}

	public String getCodice() {
		return codice;
	}

	public void setCodice(String codice) {
		this.codice = codice;
	}

	public void setPrerequisiti(Map<String, String> prerequisiti) {
		this.prerequisiti = prerequisiti;
	}

	public void setIndicatori(List<String> indicatori) {
		this.indicatori = indicatori;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
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

	public Map<String, String> getPrerequisiti() {
		return prerequisiti;
	}

	public List<String> getIndicatori() {
		return indicatori;
	}


}
