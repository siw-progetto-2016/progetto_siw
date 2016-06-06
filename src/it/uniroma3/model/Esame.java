package it.uniroma3.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name = "esami")
public class Esame {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	@Column(nullable = false)
	private String codice;
	@Column(nullable = false)
	private String nome;
	@Column(length = 2000)
	private String descrizione;
	@Column(nullable = false)
	private float costo;
	
	@OneToMany(mappedBy = "esame", fetch=FetchType.EAGER)
    private List<Prenotazione> prenotazioni;

	
	public Esame(){
		
	}

	public Esame(String codice,String nome, String descrizione, float costo) {
		this.nome = nome;
		this.descrizione = descrizione;
		this.costo = costo;
		this.codice = codice;
		this.prenotazioni = new ArrayList<Prenotazione>();
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



}
