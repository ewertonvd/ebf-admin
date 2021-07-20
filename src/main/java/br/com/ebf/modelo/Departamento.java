package br.com.ebf.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "TWEB_DEPARTAMENTO")
public class Departamento {

	@Id
	@Column(length = 3)
	@GeneratedValue(strategy = GenerationType.SEQUENCE) //ORACLE
	private Integer id;

	@NotEmpty
	@Column(length = 30)
	private String nome;

	@NotEmpty
	@Column(length = 5)
	private String cdc;

	@Column(columnDefinition = "Character(1) default 'S'")
	private Character ativo;

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

	public String getCdc() {
		return cdc;
	}

	public void setCdc(String cdc) {
		this.cdc = cdc;
	}

	public Character getAtivo() {
		return ativo;
	}

	public void setAtivo(Character ativo) {
		this.ativo = ativo;
	}
}