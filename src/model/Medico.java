package model;

public class Medico {
	private long id;
	private String nome;
	private String cognome;
	private String specializzazione;

	
	public Medico(){
		
	}
	
	public Medico(String nome,String cognome,String spec,long id){
		this.nome = nome;
		this.cognome = cognome;
		this.specializzazione = spec;
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

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}



}
