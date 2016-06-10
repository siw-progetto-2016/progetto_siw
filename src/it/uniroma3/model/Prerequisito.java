package it.uniroma3.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "prerequisiti")
public class Prerequisito {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	@Column(nullable = false)
	private String nome;
	@Column(nullable = false)
	private String valore;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="esame_id")
	private Esame reqesame;
	
	

	public Prerequisito(String nome, String valore,Esame esame) {
		this.nome = nome;
		this.valore = valore;
		this.reqesame = esame;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getValore() {
		return valore;
	}

	public void setValore(String valore) {
		this.valore = valore;
	}

	public Esame getReqesame() {
		return reqesame;
	}

	public void setReqesame(Esame reqesame) {
		this.reqesame = reqesame;
	}
	
	

}
