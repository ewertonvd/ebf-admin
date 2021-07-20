package br.com.ebf.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TAB_CIDADE")
public class Cidade {

	@Id
	@Column(length = 11)
	@GeneratedValue(strategy = GenerationType.SEQUENCE) //ORACLE
	private Integer id;

	@Column(length = 100)
	private String nome;

	@Column(length = 7)
	private Integer estado;

	@Column(name = "cod_correios", length = 11)
	private Integer codCorreios;

	@Column(name = "desc_suframa", columnDefinition = "Character(1)")
	private Character descSuframa;

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

	public Integer getEstado() {
		return estado;
	}

	public void setEstado(Integer estado) {
		this.estado = estado;
	}

	public Integer getCodCorreios() {
		return codCorreios;
	}

	public void setCodCorreios(Integer codCorreios) {
		this.codCorreios = codCorreios;
	}

	public Character getDescSuframa() {
		return descSuframa;
	}

	public void setDescSuframa(Character descSuframa) {
		this.descSuframa = descSuframa;
	}
}