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
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;

@Entity
@Table(name = "EBF_CAD_REPRESENTANTE")
public class Representante {

	@Id
	@Column(name = "num_cadastro", length = 7)
	@GeneratedValue(strategy = GenerationType.SEQUENCE) //ORACLE
	private Integer numCadastro;

	@Column(name = "num_cad_antigo", length = 50)
	private String numCadAntigo;

	@Temporal(TemporalType.DATE)
	@Column(name = "data_cadastro")
	private Date dataCadastro;

	@Column(name = "nome_razao", length = 50)
	private String nomeRazao;

	@Column(name = "nome_fantasia", length = 40)
	private String nomeFantasia;

	@Column(length = 20)
	private String cnpj;

	@Column(name = "insc_est", length = 20)
	private String inscEst;

	@Column(length = 20)
	private String cpf;

	@Column(length = 20)
	private String rg;

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

	@Column(name = "end_ddi", length = 5)
	private String endDDI;

	@Column(name = "end_ddd", length = 5)
	private String endDDD;

	@Column(name = "end_tel", length = 50)
	private String endTel;

	@Column(name = "end_tel2", length = 50)
	private String endTel2;

	@Column(name = "end_ddd_cel", length = 5)
	private String endDDDCel;

	@Column(name = "end_cel", length = 50)
	private String endCel;

	@Column(name = "end_ddd_fax", length = 5)
	private String endDDDFax;

	@Column(name = "end_fax", length = 50)
	private String endFax;

	@Email
	@Column(name = "end_email", length = 200)
	private String endEmail;

	@Email
	@Column(name = "end_email2", length = 200)
	private String endEmail2;

	@Column(length = 20)
	private String empresa;

	@Column(columnDefinition = "Character(1) default 'N'")
	private Character marca;

	@Column(name = "comissao_maxima", columnDefinition = "Float default 0")
	private Float comissaoMaxima;

	@Column(name = "calcula_comissao", columnDefinition = "Character(1) default 'S'")
	private Character calculaComissao;

	@Column(name = "calcular_ir", columnDefinition = "Character(1) default 'S'")
	private Character calcularIR;

	@Column(name = "bo_atrasoduplicata", columnDefinition = "Character(1) default 'S'")
	private Character boAtrasoDuplicata;

	@NotNull
	@Column(length = 5)
	private Integer grupo;

	@Column(columnDefinition = "Character(1) default 'N'")
	private Character televendas;

	@Column(length = 50)
	private String regiao;

	@Column(length = 50)
	private String gerencia;

	@Column(length = 100)
	private String restricao;

	@Column(length = 200)
	private String observ;

	@Column(name = "data_alteracao")
	@Temporal(TemporalType.DATE)
	private Date dataAlteracao;

	@Column(name = "user_alteracao", length = 4)
	private Integer userAlteracao;

	public Integer getNumCadastro() {
		return numCadastro;
	}

	public void setNumCadastro(Integer numCadastro) {
		this.numCadastro = numCadastro;
	}

	public String getNumCadAntigo() {
		return numCadAntigo;
	}

	public void setNumCadAntigo(String numCadAntigo) {
		this.numCadAntigo = numCadAntigo;
	}

	public Date getDataCadastro() {
		return dataCadastro;
	}

	public void setDataCadastro(Date dataCadastro) {
		this.dataCadastro = dataCadastro;
	}

	public String getNomeRazao() {
		return nomeRazao;
	}

	public void setNomeRazao(String nomeRazao) {
		this.nomeRazao = nomeRazao;
	}

	public String getNomeFantasia() {
		return nomeFantasia;
	}

	public void setNomeFantasia(String nomeFantasia) {
		this.nomeFantasia = nomeFantasia;
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

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getRg() {
		return rg;
	}

	public void setRg(String rg) {
		this.rg = rg;
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

	public String getEndDDI() {
		return endDDI;
	}

	public void setEndDDI(String endDDI) {
		this.endDDI = endDDI;
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

	public String getEndTel2() {
		return endTel2;
	}

	public void setEndTel2(String endTel2) {
		this.endTel2 = endTel2;
	}

	public String getEndDDDCel() {
		return endDDDCel;
	}

	public void setEndDDDCel(String endDDDCel) {
		this.endDDDCel = endDDDCel;
	}

	public String getEndCel() {
		return endCel;
	}

	public void setEndCel(String endCel) {
		this.endCel = endCel;
	}

	public String getEndDDDFax() {
		return endDDDFax;
	}

	public void setEndDDDFax(String endDDDFax) {
		this.endDDDFax = endDDDFax;
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

	public String getEndEmail2() {
		return endEmail2;
	}

	public void setEndEmail2(String endEmail2) {
		this.endEmail2 = endEmail2;
	}

	public String getEmpresa() {
		return empresa;
	}

	public void setEmpresa(String empresa) {
		this.empresa = empresa;
	}

	public Character getMarca() {
		return marca;
	}

	public void setMarca(Character marca) {
		this.marca = marca;
	}

	public Float getComissaoMaxima() {
		return comissaoMaxima;
	}

	public void setComissaoMaxima(Float comissaoMaxima) {
		this.comissaoMaxima = comissaoMaxima;
	}

	public Character getCalculaComissao() {
		return calculaComissao;
	}

	public void setCalculaComissao(Character calculaComissao) {
		this.calculaComissao = calculaComissao;
	}

	public Character getCalcularIR() {
		return calcularIR;
	}

	public void setCalcularIR(Character calcularIR) {
		this.calcularIR = calcularIR;
	}

	public Character getBoAtrasoDuplicata() {
		return boAtrasoDuplicata;
	}

	public void setBoAtrasoDuplicata(Character boAtrasoDuplicata) {
		this.boAtrasoDuplicata = boAtrasoDuplicata;
	}

	public Integer getGrupo() {
		return grupo;
	}

	public void setGrupo(Integer grupo) {
		this.grupo = grupo;
	}

	public Character getTelevendas() {
		return televendas;
	}

	public void setTelevendas(Character televendas) {
		this.televendas = televendas;
	}

	public String getRegiao() {
		return regiao;
	}

	public void setRegiao(String regiao) {
		this.regiao = regiao;
	}

	public String getGerencia() {
		return gerencia;
	}

	public void setGerencia(String gerencia) {
		this.gerencia = gerencia;
	}

	public String getRestricao() {
		return restricao;
	}

	public void setRestricao(String restricao) {
		this.restricao = restricao;
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

	public Integer getUserAlteracao() {
		return userAlteracao;
	}

	public void setUserAlteracao(Integer userAlteracao) {
		this.userAlteracao = userAlteracao;
	}
}