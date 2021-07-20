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
@Table(name = "TWEB_CARGO")
public class Cargo {

	@Id
	@Column(length = 4)
	@GeneratedValue(strategy = GenerationType.SEQUENCE) //ORACLE
	private Integer id;

	@NotEmpty
	@Column(length = 30)
	private String nome;

	@NotNull
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

	public Character getAtivo() {
		return ativo;
	}

	public void setAtivo(Character ativo) {
		this.ativo = ativo;
	}
}