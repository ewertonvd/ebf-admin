package br.com.ebf.modelo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.validator.constraints.Email;

@Entity
@Table(name = "TAB_TRANSPORTADORA")
public class Transportadora {

	@Id
	@Column(name = "num_cadastro", length = 7)
	@GeneratedValue(strategy = GenerationType.SEQUENCE) //ORACLE
	private Integer numCadastro;

	@Column(name = "num_cad_antigo", length = 50)
	private Integer numCadAntigo;

	@Temporal(TemporalType.DATE)
	@Column(name = "data_cadastro")
	private Date dataCadastro;

	@Column(length = 40)
	private String nome;

	@Column(length = 20)
	private String cnpj;

	@Column(name = "insc_est", length = 20)
	private String inscEst;

	@Column(name = "end_rua", length = 100)
	private String endRua;

	@Column(name = "end_num", length = 10)
	private String endNum;

	@Column(name = "end_compl", length = 50)
	private String endCompl;

	@Column(name = "end_bair", length = 50)
	private String endBair;

	@Column(name = "end_cid", length = 100)
	private String endCid;

	@Column(name = "end_est", length = 2)
	private String endEst;

	@Column(name = "end_cep", length = 10)
	private String endCep;

	@Column(name = "end_pais", length = 50)
	private String endPais;

	@Column(name = "end_ddd", length = 5)
	private String endDDD;

	@Column(name = "end_tel", length = 50)
	private String endTel;

	@Column(name = "end_fax", length = 50)
	private String endFax;

	@Email
	@Column(name = "end_email", length = 100)
	private String endEmail;

	@Column(length = 200)
	private String observ;

	@Temporal(TemporalType.DATE)
	@Column(name = "data_alteracao")
	private Date dataAlteracao;

	@Column(name = "user_alteracao", length = 4)
	private String userAlteracao;

	@Column(columnDefinition = "Character(1) default 'S'")
	private Character ativo;

	public Integer getNumCadastro() {
		return numCadastro;
	}

	public void setNumCadastro(Integer numCadastro) {
		this.numCadastro = numCadastro;
	}

	public Integer getNumCadAntigo() {
		return numCadAntigo;
	}

	public void setNumCadAntigo(Integer numCadAntigo) {
		this.numCadAntigo = numCadAntigo;
	}

	public Date getDataCadastro() {
		return dataCadastro;
	}

	public void setDataCadastro(Date dataCadastro) {
		this.dataCadastro = dataCadastro;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public String getInscEst() {
		return inscEst;
	}

	public void setInscEst(String inscEst) {
		this.inscEst = inscEst;
	}

	public String getEndRua() {
		return endRua;
	}

	public void setEndRua(String endRua) {
		this.endRua = endRua;
	}

	public String getEndNum() {
		return endNum;
	}

	public void setEndNum(String endNum) {
		this.endNum = endNum;
	}

	public String getEndCompl() {
		return endCompl;
	}

	public void setEndCompl(String endCompl) {
		this.endCompl = endCompl;
	}

	public String getEndBair() {
		return endBair;
	}

	public void setEndBair(String endBair) {
		this.endBair = endBair;
	}

	public String getEndCid() {
		return endCid;
	}

	public void setEndCid(String endCid) {
		this.endCid = endCid;
	}

	public String getEndEst() {
		return endEst;
	}

	public void setEndEst(String endEst) {
		this.endEst = endEst;
	}

	public String getEndCep() {
		return endCep;
	}

	public void setEndCep(String endCep) {
		this.endCep = endCep;
	}

	public String getEndPais() {
		return endPais;
	}

	public void setEndPais(String endPais) {
		this.endPais = endPais;
	}

	public String getEndDDD() {
		return endDDD;
	}

	public void setEndDDD(String endDDD) {
		this.endDDD = endDDD;
	}

	public String getEndTel() {
		return endTel;
	}

	public void setEndTel(String endTel) {
		this.endTel = endTel;
	}

	public String getEndFax() {
		return endFax;
	}

	public void setEndFax(String endFax) {
		this.endFax = endFax;
	}

	public String getEndEmail() {
		return endEmail;
	}

	public void setEndEmail(String endEmail) {
		this.endEmail = endEmail;
	}

	public String getObserv() {
		return observ;
	}

	public void setObserv(String observ) {
		this.observ = observ;
	}

	public Date getDataAlteracao() {
		return dataAlteracao;
	}

	public void setDataAlteracao(Date dataAlteracao) {
		this.dataAlteracao = dataAlteracao;
	}

	public String getUserAlteracao() {
		return userAlteracao;
	}

	public void setUserAlteracao(String userAlteracao) {
		this.userAlteracao = userAlteracao;
	}

	public Character getAtivo() {
		return ativo;
	}

	public void setAtivo(Character ativo) {
		this.ativo = ativo;
	}
}