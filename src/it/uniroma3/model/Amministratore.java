package it.uniroma3.model;

public class Amministratore {
	private long id;
	private String username;
	private String nome;
	private String cognome;
	private String pwd;

	public Amministratore(){

	}

	public Amministratore(String nome, String cognome, long id,String pwd,String username) {
		this.nome = nome;
		this.cognome = cognome;
		this.id = id;
		this.pwd = pwd;
		this.username = username;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

}
