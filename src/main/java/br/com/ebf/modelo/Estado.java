package br.com.ebf.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "TAB_ESTADO")
public class Estado {
	@Id
	@Column(length = 7)
	@GeneratedValue(strategy = GenerationType.SEQUENCE) //ORACLE
	private Integer id;

	@NotEmpty
	@Column(length = 30)
	private String nome;

	@NotEmpty
	@Column(length = 2)
	private String sigla;

	@NotNull
	@Column(length = 11)
	private Integer capital;

	@NotEmpty
	@Column(length = 20)
	private String regiao;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSigla() {
		return sigla;
	}

	public void setSigla(String sigla) {
		this.sigla = sigla;
	}

	public Integer getCapital() {
		return capital;
	}

	public void setCapital(Integer capital) {
		this.capital = capital;
	}

	public String getRegiao() {
		return regiao;
	}

	public void setRegiao(String regiao) {
		this.regiao = regiao;
	}
}