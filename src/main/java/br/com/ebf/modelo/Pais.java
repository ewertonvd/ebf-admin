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
@Table(name = "TAB_PAISES")
public class Pais {

	@Id
	@Column(name = "num_codigo")
	@GeneratedValue(strategy = GenerationType.SEQUENCE) //ORACLE
	private Integer numCodigo;

	@NotEmpty
	private String iso;

	@NotEmpty
	private String iso3;

	@NotEmpty
	private String nome;

	@NotNull
	private Integer ddi;

	public Integer getNumCodigo() {
		return numCodigo;
	}

	public void setNumCodigo(Integer numCodigo) {
		this.numCodigo = numCodigo;
	}

	public String getIso() {
		return iso;
	}

	public void setIso(String iso) {
		this.iso = iso;
	}

	public String getIso3() {
		return iso3;
	}

	public void setIso3(String iso3) {
		this.iso3 = iso3;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Integer getDdi() {
		return ddi;
	}

	public void setDdi(Integer ddi) {
		this.ddi = ddi;
	}
}