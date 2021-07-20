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

@Entity
@Table(name = "EBF_CLIENTE")
public class Cliente {

	// DADOS PRINCIPAIS:
	@Id
	@Column(name = "num_cadastro", length = 7)
	@GeneratedValue(strategy = GenerationType.SEQUENCE) // ORACLE
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

	@Column(length = 14)
	private String cpf;

	@Column(length = 15)
	private String rg;

	@Column(name = "end_rua", length = 100)
	private String endRua;

	@Column(name = "end_num", length = 10)
	private String endNum;

	@Column(name = "end_compl", length = 50)
	private String endCompl;

	@Column(name = "end_bair", length = 50)
	private String endBair;

	// OBS.: Está escrito ERRADO no BD "IDEND_CID"
	@Column(name = "idend_cid", length = 7)
	private Integer identCid;

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

	@Column(name = "end_fax", length = 50)
	private String endFax;

	@Column(name = "end_email", length = 800)
	private String endEmail;

	// DADOS DE ENTREGA:
	@Column(name = "end_entg_rua", length = 100)
	private String endEntgRua;

	@Column(name = "end_entg_num", length = 10)
	private String endEntgNum;

	@Column(name = "end_entg_compl", length = 50)
	private String endEntgCompl;

	@Column(name = "end_entg_bair", length = 50)
	private String endEntgBair;

	// OBS.: Está escrito ERRADO no BD "IDEND_ENTG_CID"
	@Column(name = "idend_entg_cid", length = 7)
	private Integer identEntgCid;

	@Column(name = "end_entg_cid", length = 100)
	private String endEntgCid;

	@Column(name = "end_entg_est", length = 2)
	private String endEntgEst;

	@Column(name = "end_entg_cep", length = 10)
	private String endEntgCep;

	@Column(name = "end_entg_pais", length = 50)
	private String endEntgPais;

	@Column(name = "end_entg_ddi", length = 5)
	private String endEntgDDI;

	@Column(name = "end_entg_ddd", length = 5)
	private String endEntgDDD;

	@Column(name = "end_entg_tel", length = 50)
	private String endEntgTel;

	// OBS.: Está escrito ERRADO no BD "END_ENTG_FAZ"
	@Column(name = "end_entg_faz", length = 50)
	private String endEntgFax;

	@Column(name = "end_entg_email", length = 800)
	private String endEntgEmail;

	// DADOS DE PAGAMENTO:
	@Column(name = "end_pag_rua", length = 100)
	private String endPagRua;

	@Column(name = "end_pag_num", length = 10)
	private String endPagNum;

	@Column(name = "end_pag_compl", length = 50)
	private String endPagCompl;

	@Column(name = "end_pag_bair", length = 50)
	private String endPagBair;

	// OBS.: Está escrito ERRADO no BD "IDEND_CID"
	@Column(name = "idend_pag_cid", length = 7)
	private Integer identPagCid;

	@Column(name = "end_pag_cid", length = 100)
	private String endPagCid;

	@Column(name = "end_pag_est", length = 2)
	private String endPagEst;

	@Column(name = "end_pag_cep", length = 10)
	private String endPagCep;

	@Column(name = "end_pag_pais", length = 50)
	private String endPagPais;

	@Column(name = "end_pag_ddi", length = 5)
	private String endPagDDI;

	@Column(name = "end_pag_ddd", length = 5)
	private String endPagDDD;

	@Column(name = "end_pag_tel", length = 50)
	private String endPagTel;

	@Column(name = "end_pag_fax", length = 50)
	private String endPagFax;

	@Column(name = "end_pag_email", length = 800)
	private String endPagEmail;

	@Column(name = "num_cad_repre", length = 7)
	private Integer numCadRepre;

	// DADOS BANCÁRIOS:
	@Column(name = "num_banco", length = 10)
	private String numBanco;

	@Column(name = "nome_banco", length = 50)
	private String nomeBanco;

	// ESTÁ ESCRITO "ERRADO", NA TABELA DO BD => NUM_AGENNCIA_BANCO
	@Column(name = "num_agenncia_banco", length = 10)
	private String numAgenciaBanco;

	@Column(name = "dig_agencia_banco", length = 2)
	private String digAgenciaBanco;

	@Column(name = "nome_agencia_banco", length = 50)
	private String nomeAgenciaBanco;

	@Column(name = "num_conta_banco", length = 10)
	private String numContaBanco;

	@Column(name = "dig_conta_banco", length = 2)
	private String digContaBanco;

	// ESTÁ ESCRITO "ERRADO", NA TABELA DO BD => TITUTAL
	@Column(name = "titutal_cta_bco", length = 50)
	private String titularCtaBanco;

	@Column(name = "num_suframa", length = 50)
	private String numSuframa;

	// OBS.: Está escrito ERRADO no BD "TIPI_CLI"
	@Column(name = "tipi_cli", length = 20)
	private String tipoCli;

	@Column(length = 50)
	private String pagamentos;

	@Column(length = 50)
	private String vencimentos;

	@Column(length = 50)
	private String restricao;

	@Column(name = "zfm_alcom", columnDefinition = "Character(1)")
	private Character zfmAlcom;

	@Column(columnDefinition = "Character(1)")
	private Character teste;

	@Column(name = "num_transp", length = 7)
	private Integer numTransp;

	@Column(name = "calc_ipi", columnDefinition = "Character(1) default 'N'")
	private Character calcIPI;

	@Column(name = "num_msg_ipi", length = 7)
	private Integer numMsgIPI;

	@Column(name = "calc_icm", columnDefinition = "Character(1) default 'N'")
	private Character calcICM;

	@Column(name = "num_msg_icm", length = 7)
	private Integer numMsgICM;

	@Column(name = "nome_cliente_banco", length = 50)
	private String nomeClienteBanco;

	@Column(name = "fora_semana", columnDefinition = "Character(1)")
	private Character foraSemana;

	@Column(name = "venc_especifico", columnDefinition = "Character(1)")
	private Character vencEspecifico;

	@Column(name = "dia_semana", length = 3)
	private String diaSemana;

	@Column(name = "num_cad_repre_eco", length = 7)
	private Integer numCadRepreEco;

	@Column(name = "num_cad_repre_vazlog", length = 7)
	private Integer numCadRepreVazLog;

	@Column(name = "quem_alterou", length = 30)
	private String quemAlterou;

	@Column(name = "sujeito_cartorio", columnDefinition = "Character(1)")
	private Character sujeitoCartorio;

	@Column(name = "nota_ult_fatura", length = 11)
	private Integer notaUltFatura;

	@Column(name = "serie_nota_ult_fatura", length = 3)
	private Integer serieNotaUltFatura;

	@Temporal(TemporalType.DATE)
	@Column(name = "data_ult_fatura")
	private Date dataUltFatura;

	@Column(name = "valor_ult_fatura", columnDefinition = "Decimal(11,2)")
	private Double valorUltFatura;

	@Column(name = "limite_credito", columnDefinition = "Decimal(11,2)")
	private Double limiteCredito;

	@Column(name = "valor_em_aberto", columnDefinition = "Decimal(11,2)")
	private Double valorEmAberto;

	@Column(name = "saldo", columnDefinition = "Decimal(11,2)")
	private Double saldo;

	@Column(length = 10)
	private String frete;

	@Column(length = 10)
	private String atividade;

	@Column(name = "comissao_fixa")
	private Double comissaoFixa;

	@Column(name = "limite_credito_fixo", columnDefinition = "Decimal(11,2)")
	private Double limiteCreditoFixo;

	@Column(name = "desc7Icms_Sufr", length = 10)
	private String desc7IcmsSufr;

	@Column(name = "isento_icms_subs_trib", columnDefinition = "Character(1)")
	private Character isentoIcmsSubsTrib;

	@Column(name = "observ_icms_subs_trib", length = 200)
	private String observIcmsSubsTrib;

	@Column(name = "tipo_entidade", length = 20)
	private String tipoEntidade;

	@Column(name = "vlr_pedidos_abertos", columnDefinition = "Decimal(11,2)")
	private Double vlrPedidosAbertos;

	@Column(name = "vlr_duplicatas_abertas", columnDefinition = "Decimal(11,2)")
	private Double vlrDuplicatasAbertas;

	@Column(name = "sts_protesto", columnDefinition = "Character(1)")
	private Character stsProtesto;

	@Column(name = "calc_icm_subst", columnDefinition = "Character(1)")
	private Character calcICMSubst;

	@Column(name = "cod_pais", columnDefinition = "Integer default 1058")
	private Integer codPais;

	@Column(name = "bloq_automatico", columnDefinition = "Character(1)")
	private Character bloqAutomatico;

	@Column(name = "ncm_exportacao", columnDefinition = "Character(1) default 'N'")
	private Character ncmExportacao;

	@Column(columnDefinition = "Character(1) default 'S'")
	private Character retorno;

	@Column(name = "codigo_interno", length = 5)
	private String codigoInterno;

	@Column(length = 2)
	private String divisao;

	@Column(length = 5)
	private String cfop;

	@Column(columnDefinition = "Character(1) default 'N'")
	private Character contrato;

	@Column(name = "comercial_bloq", columnDefinition = "Character(1) default 'N'")
	private Character comercialBloq;

	@Column(name = "comercial_obs", length = 200)
	private String comercialObs;

	@Column(name = "financeiro_bloq", columnDefinition = "Character(1) default'N'")
	private Character financeiroBloq;

	@Column(name = "email_packinlist", length = 1500)
	private String emailPackInList;

	@Column(columnDefinition = "Character(1) default 'S'")
	private Character verificado;

	@Column(name = "potencial_vazcap", columnDefinition = "Double(11,2)default'0'")
	private Double potencialVazCap;

	@Column(name = "potencial_vazlog", columnDefinition = "Double(11,2)default'0'")
	private Double potencialVazLog;

	@Column(name = "potencial_ecopads", columnDefinition = "Double(11,2)default'0'")
	private Double potencialEcoPads;

	@Column(name = "potencial_eco", columnDefinition = "Double(11,2) default'0'")
	private Double potencialEco;

	@Column(name = "potencial_ebf", columnDefinition = "Double(11,2) default'0'")
	private Double potencialEbf;

	@Column(name = "ramal_prc", columnDefinition = "varCharacter(5) default'null'")
	private String ramalPrc;

	@Column(length = 3)
	private String descartado;

	@Column(length = 30)
	private String perfil;

	@Column(name = "compra_de", length = 7)
	private Integer compraDe;

	@Temporal(TemporalType.DATE)
	@Column(name = "data_verificado")
	private Date dataVerificado;

	@Column(name = "key_account", length = 3)
	private String keyAccount;

	@Column(name = "gestor_cliente", length = 100)
	private String gestorCliente;

	@Column(length = 200)
	private String observ;

	@Temporal(TemporalType.DATE)
	@Column(name = "data_alteracao")
	private Date dataAlteracao;

	@Column(name = "user_alteracao", length = 30)
	private String userAlteracao;

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

	public Integer getIdentCid() {
		return identCid;
	}

	public void setIdentCid(Integer identCid) {
		this.identCid = identCid;
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

	public String getEndEntgRua() {
		return endEntgRua;
	}

	public void setEndEntgRua(String endEntgRua) {
		this.endEntgRua = endEntgRua;
	}

	public String getEndEntgNum() {
		return endEntgNum;
	}

	public void setEndEntgNum(String endEntgNum) {
		this.endEntgNum = endEntgNum;
	}

	public String getEndEntgCompl() {
		return endEntgCompl;
	}

	public void setEndEntgCompl(String endEntgCompl) {
		this.endEntgCompl = endEntgCompl;
	}

	public String getEndEntgBair() {
		return endEntgBair;
	}

	public void setEndEntgBair(String endEntgBair) {
		this.endEntgBair = endEntgBair;
	}

	public Integer getIdentEntgCid() {
		return identEntgCid;
	}

	public void setIdentEntgCid(Integer identEntgCid) {
		this.identEntgCid = identEntgCid;
	}

	public String getEndEntgCid() {
		return endEntgCid;
	}

	public void setEndEntgCid(String endEntgCid) {
		this.endEntgCid = endEntgCid;
	}

	public String getEndEntgEst() {
		return endEntgEst;
	}

	public void setEndEntgEst(String endEntgEst) {
		this.endEntgEst = endEntgEst;
	}

	public String getEndEntgCep() {
		return endEntgCep;
	}

	public void setEndEntgCep(String endEntgCep) {
		this.endEntgCep = endEntgCep;
	}

	public String getEndEntgPais() {
		return endEntgPais;
	}

	public void setEndEntgPais(String endEntgPais) {
		this.endEntgPais = endEntgPais;
	}

	public String getEndEntgDDI() {
		return endEntgDDI;
	}

	public void setEndEntgDDI(String endEntgDDI) {
		this.endEntgDDI = endEntgDDI;
	}

	public String getEndEntgDDD() {
		return endEntgDDD;
	}

	public void setEndEntgDDD(String endEntgDDD) {
		this.endEntgDDD = endEntgDDD;
	}

	public String getEndEntgTel() {
		return endEntgTel;
	}

	public void setEndEntgTel(String endEntgTel) {
		this.endEntgTel = endEntgTel;
	}

	public String getEndEntgFax() {
		return endEntgFax;
	}

	public void setEndEntgFax(String endEntgFax) {
		this.endEntgFax = endEntgFax;
	}

	public String getEndEntgEmail() {
		return endEntgEmail;
	}

	public void setEndEntgEmail(String endEntgEmail) {
		this.endEntgEmail = endEntgEmail;
	}

	public String getEndPagRua() {
		return endPagRua;
	}

	public void setEndPagRua(String endPagRua) {
		this.endPagRua = endPagRua;
	}

	public String getEndPagNum() {
		return endPagNum;
	}

	public void setEndPagNum(String endPagNum) {
		this.endPagNum = endPagNum;
	}

	public String getEndPagCompl() {
		return endPagCompl;
	}

	public void setEndPagCompl(String endPagCompl) {
		this.endPagCompl = endPagCompl;
	}

	public String getEndPagBair() {
		return endPagBair;
	}

	public void setEndPagBair(String endPagBair) {
		this.endPagBair = endPagBair;
	}

	public Integer getIdentPagCid() {
		return identPagCid;
	}

	public void setIdentPagCid(Integer identPagCid) {
		this.identPagCid = identPagCid;
	}

	public String getEndPagCid() {
		return endPagCid;
	}

	public void setEndPagCid(String endPagCid) {
		this.endPagCid = endPagCid;
	}

	public String getEndPagEst() {
		return endPagEst;
	}

	public void setEndPagEst(String endPagEst) {
		this.endPagEst = endPagEst;
	}

	public String getEndPagCep() {
		return endPagCep;
	}

	public void setEndPagCep(String endPagCep) {
		this.endPagCep = endPagCep;
	}

	public String getEndPagPais() {
		return endPagPais;
	}

	public void setEndPagPais(String endPagPais) {
		this.endPagPais = endPagPais;
	}

	public String getEndPagDDI() {
		return endPagDDI;
	}

	public void setEndPagDDI(String endPagDDI) {
		this.endPagDDI = endPagDDI;
	}

	public String getEndPagDDD() {
		return endPagDDD;
	}

	public void setEndPagDDD(String endPagDDD) {
		this.endPagDDD = endPagDDD;
	}

	public String getEndPagTel() {
		return endPagTel;
	}

	public void setEndPagTel(String endPagTel) {
		this.endPagTel = endPagTel;
	}

	public String getEndPagFax() {
		return endPagFax;
	}

	public void setEndPagFax(String endPagFax) {
		this.endPagFax = endPagFax;
	}

	public String getEndPagEmail() {
		return endPagEmail;
	}

	public void setEndPagEmail(String endPagEmail) {
		this.endPagEmail = endPagEmail;
	}

	public Integer getNumCadRepre() {
		return numCadRepre;
	}

	public void setNumCadRepre(Integer numCadRepre) {
		this.numCadRepre = numCadRepre;
	}

	public String getNumBanco() {
		return numBanco;
	}

	public void setNumBanco(String numBanco) {
		this.numBanco = numBanco;
	}

	public String getNomeBanco() {
		return nomeBanco;
	}

	public void setNomeBanco(String nomeBanco) {
		this.nomeBanco = nomeBanco;
	}

	public String getNumAgenciaBanco() {
		return numAgenciaBanco;
	}

	public void setNumAgenciaBanco(String numAgenciaBanco) {
		this.numAgenciaBanco = numAgenciaBanco;
	}

	public String getDigAgenciaBanco() {
		return digAgenciaBanco;
	}

	public void setDigAgenciaBanco(String digAgenciaBanco) {
		this.digAgenciaBanco = digAgenciaBanco;
	}

	public String getNomeAgenciaBanco() {
		return nomeAgenciaBanco;
	}

	public void setNomeAgenciaBanco(String nomeAgenciaBanco) {
		this.nomeAgenciaBanco = nomeAgenciaBanco;
	}

	public String getNumContaBanco() {
		return numContaBanco;
	}

	public void setNumContaBanco(String numContaBanco) {
		this.numContaBanco = numContaBanco;
	}

	public String getDigContaBanco() {
		return digContaBanco;
	}

	public void setDigContaBanco(String digContaBanco) {
		this.digContaBanco = digContaBanco;
	}

	public String getTitularCtaBanco() {
		return titularCtaBanco;
	}

	public void setTitularCtaBanco(String titularCtaBanco) {
		this.titularCtaBanco = titularCtaBanco;
	}

	public String getNumSuframa() {
		return numSuframa;
	}

	public void setNumSuframa(String numSuframa) {
		this.numSuframa = numSuframa;
	}

	public String getTipoCli() {
		return tipoCli;
	}

	public void setTipoCli(String tipoCli) {
		this.tipoCli = tipoCli;
	}

	public String getPagamentos() {
		return pagamentos;
	}

	public void setPagamentos(String pagamentos) {
		this.pagamentos = pagamentos;
	}

	public String getVencimentos() {
		return vencimentos;
	}

	public void setVencimentos(String vencimentos) {
		this.vencimentos = vencimentos;
	}

	public String getRestricao() {
		return restricao;
	}

	public void setRestricao(String restricao) {
		this.restricao = restricao;
	}

	public Character getZfmAlcom() {
		return zfmAlcom;
	}

	public void setZfmAlcom(Character zfmAlcom) {
		this.zfmAlcom = zfmAlcom;
	}

	public Character getTeste() {
		return teste;
	}

	public void setTeste(Character teste) {
		this.teste = teste;
	}

	public Integer getNumTransp() {
		return numTransp;
	}

	public void setNumTransp(Integer numTransp) {
		this.numTransp = numTransp;
	}

	public Character getCalcIPI() {
		return calcIPI;
	}

	public void setCalcIPI(Character calcIPI) {
		this.calcIPI = calcIPI;
	}

	public Integer getNumMsgIPI() {
		return numMsgIPI;
	}

	public void setNumMsgIPI(Integer numMsgIPI) {
		this.numMsgIPI = numMsgIPI;
	}

	public Character getCalcICM() {
		return calcICM;
	}

	public void setCalcICM(Character calcICM) {
		this.calcICM = calcICM;
	}

	public Integer getNumMsgICM() {
		return numMsgICM;
	}

	public void setNumMsgICM(Integer numMsgICM) {
		this.numMsgICM = numMsgICM;
	}

	public String getNomeClienteBanco() {
		return nomeClienteBanco;
	}

	public void setNomeClienteBanco(String nomeClienteBanco) {
		this.nomeClienteBanco = nomeClienteBanco;
	}

	public Character getForaSemana() {
		return foraSemana;
	}

	public void setForaSemana(Character foraSemana) {
		this.foraSemana = foraSemana;
	}

	public Character getVencEspecifico() {
		return vencEspecifico;
	}

	public void setVencEspecifico(Character vencEspecifico) {
		this.vencEspecifico = vencEspecifico;
	}

	public String getDiaSemana() {
		return diaSemana;
	}

	public void setDiaSemana(String diaSemana) {
		this.diaSemana = diaSemana;
	}

	public Integer getNumCadRepreEco() {
		return numCadRepreEco;
	}

	public void setNumCadRepreEco(Integer numCadRepreEco) {
		this.numCadRepreEco = numCadRepreEco;
	}

	public Integer getNumCadRepreVazLog() {
		return numCadRepreVazLog;
	}

	public void setNumCadRepreVazLog(Integer numCadRepreVazLog) {
		this.numCadRepreVazLog = numCadRepreVazLog;
	}

	public String getQuemAlterou() {
		return quemAlterou;
	}

	public void setQuemAlterou(String quemAlterou) {
		this.quemAlterou = quemAlterou;
	}

	public Character getSujeitoCartorio() {
		return sujeitoCartorio;
	}

	public void setSujeitoCartorio(Character sujeitoCartorio) {
		this.sujeitoCartorio = sujeitoCartorio;
	}

	public Integer getNotaUltFatura() {
		return notaUltFatura;
	}

	public void setNotaUltFatura(Integer notaUltFatura) {
		this.notaUltFatura = notaUltFatura;
	}

	public Integer getSerieNotaUltFatura() {
		return serieNotaUltFatura;
	}

	public void setSerieNotaUltFatura(Integer serieNotaUltFatura) {
		this.serieNotaUltFatura = serieNotaUltFatura;
	}

	public Date getDataUltFatura() {
		return dataUltFatura;
	}

	public void setDataUltFatura(Date dataUltFatura) {
		this.dataUltFatura = dataUltFatura;
	}

	public Double getValorUltFatura() {
		return valorUltFatura;
	}

	public void setValorUltFatura(Double valorUltFatura) {
		this.valorUltFatura = valorUltFatura;
	}

	public Double getLimiteCredito() {
		return limiteCredito;
	}

	public void setLimiteCredito(Double limiteCredito) {
		this.limiteCredito = limiteCredito;
	}

	public Double getValorEmAberto() {
		return valorEmAberto;
	}

	public void setValorEmAberto(Double valorEmAberto) {
		this.valorEmAberto = valorEmAberto;
	}

	public Double getSaldo() {
		return saldo;
	}

	public void setSaldo(Double saldo) {
		this.saldo = saldo;
	}

	public String getFrete() {
		return frete;
	}

	public void setFrete(String frete) {
		this.frete = frete;
	}

	public String getAtividade() {
		return atividade;
	}

	public void setAtividade(String atividade) {
		this.atividade = atividade;
	}

	public Double getComissaoFixa() {
		return comissaoFixa;
	}

	public void setComissaoFixa(Double comissaoFixa) {
		this.comissaoFixa = comissaoFixa;
	}

	public Double getLimiteCreditoFixo() {
		return limiteCreditoFixo;
	}

	public void setLimiteCreditoFixo(Double limiteCreditoFixo) {
		this.limiteCreditoFixo = limiteCreditoFixo;
	}

	public String getDesc7IcmsSufr() {
		return desc7IcmsSufr;
	}

	public void setDesc7IcmsSufr(String desc7IcmsSufr) {
		this.desc7IcmsSufr = desc7IcmsSufr;
	}

	public Character getIsentoIcmsSubsTrib() {
		return isentoIcmsSubsTrib;
	}

	public void setIsentoIcmsSubsTrib(Character isentoIcmsSubsTrib) {
		this.isentoIcmsSubsTrib = isentoIcmsSubsTrib;
	}

	public String getObservIcmsSubsTrib() {
		return observIcmsSubsTrib;
	}

	public void setObservIcmsSubsTrib(String observIcmsSubsTrib) {
		this.observIcmsSubsTrib = observIcmsSubsTrib;
	}

	public String getTipoEntidade() {
		return tipoEntidade;
	}

	public void setTipoEntidade(String tipoEntidade) {
		this.tipoEntidade = tipoEntidade;
	}

	public Double getVlrPedidosAbertos() {
		return vlrPedidosAbertos;
	}

	public void setVlrPedidosAbertos(Double vlrPedidosAbertos) {
		this.vlrPedidosAbertos = vlrPedidosAbertos;
	}

	public Double getVlrDuplicatasAbertas() {
		return vlrDuplicatasAbertas;
	}

	public void setVlrDuplicatasAbertas(Double vlrDuplicatasAbertas) {
		this.vlrDuplicatasAbertas = vlrDuplicatasAbertas;
	}

	public Character getStsProtesto() {
		return stsProtesto;
	}

	public void setStsProtesto(Character stsProtesto) {
		this.stsProtesto = stsProtesto;
	}

	public Character getCalcICMSubst() {
		return calcICMSubst;
	}

	public void setCalcICMSubst(Character calcICMSubst) {
		this.calcICMSubst = calcICMSubst;
	}

	public Integer getCodPais() {
		return codPais;
	}

	public void setCodPais(Integer codPais) {
		this.codPais = codPais;
	}

	public Character getBloqAutomatico() {
		return bloqAutomatico;
	}

	public void setBloqAutomatico(Character bloqAutomatico) {
		this.bloqAutomatico = bloqAutomatico;
	}

	public Character getNcmExportacao() {
		return ncmExportacao;
	}

	public void setNcmExportacao(Character ncmExportacao) {
		this.ncmExportacao = ncmExportacao;
	}

	public Character getRetorno() {
		return retorno;
	}

	public void setRetorno(Character retorno) {
		this.retorno = retorno;
	}

	public String getCodigoInterno() {
		return codigoInterno;
	}

	public void setCodigoInterno(String codigoInterno) {
		this.codigoInterno = codigoInterno;
	}

	public String getDivisao() {
		return divisao;
	}

	public void setDivisao(String divisao) {
		this.divisao = divisao;
	}

	public String getCfop() {
		return cfop;
	}

	public void setCfop(String cfop) {
		this.cfop = cfop;
	}

	public Character getContrato() {
		return contrato;
	}

	public void setContrato(Character contrato) {
		this.contrato = contrato;
	}

	public Character getComercialBloq() {
		return comercialBloq;
	}

	public void setComercialBloq(Character comercialBloq) {
		this.comercialBloq = comercialBloq;
	}

	public String getComercialObs() {
		return comercialObs;
	}

	public void setComercialObs(String comercialObs) {
		this.comercialObs = comercialObs;
	}

	public Character getFinanceiroBloq() {
		return financeiroBloq;
	}

	public void setFinanceiroBloq(Character financeiroBloq) {
		this.financeiroBloq = financeiroBloq;
	}

	public String getEmailPackInList() {
		return emailPackInList;
	}

	public void setEmailPackInList(String emailPackInList) {
		this.emailPackInList = emailPackInList;
	}

	public Character getVerificado() {
		return verificado;
	}

	public void setVerificado(Character verificado) {
		this.verificado = verificado;
	}

	public Double getPotencialVazCap() {
		return potencialVazCap;
	}

	public void setPotencialVazCap(Double potencialVazCap) {
		this.potencialVazCap = potencialVazCap;
	}

	public Double getPotencialVazLog() {
		return potencialVazLog;
	}

	public void setPotencialVazLog(Double potencialVazLog) {
		this.potencialVazLog = potencialVazLog;
	}

	public Double getPotencialEcoPads() {
		return potencialEcoPads;
	}

	public void setPotencialEcoPads(Double potencialEcoPads) {
		this.potencialEcoPads = potencialEcoPads;
	}

	public Double getPotencialEco() {
		return potencialEco;
	}

	public void setPotencialEco(Double potencialEco) {
		this.potencialEco = potencialEco;
	}

	public Double getPotencialEbf() {
		return potencialEbf;
	}

	public void setPotencialEbf(Double potencialEbf) {
		this.potencialEbf = potencialEbf;
	}

	public String getRamalPrc() {
		return ramalPrc;
	}

	public void setRamalPrc(String ramalPrc) {
		this.ramalPrc = ramalPrc;
	}

	public String getDescartado() {
		return descartado;
	}

	public void setDescartado(String descartado) {
		this.descartado = descartado;
	}

	public String getPerfil() {
		return perfil;
	}

	public void setPerfil(String perfil) {
		this.perfil = perfil;
	}

	public Integer getCompraDe() {
		return compraDe;
	}

	public void setCompraDe(Integer compraDe) {
		this.compraDe = compraDe;
	}

	public Date getDataVerificado() {
		return dataVerificado;
	}

	public void setDataVerificado(Date dataVerificado) {
		this.dataVerificado = dataVerificado;
	}

	public String getKeyAccount() {
		return keyAccount;
	}

	public void setKeyAccount(String keyAccount) {
		this.keyAccount = keyAccount;
	}

	public String getGestorCliente() {
		return gestorCliente;
	}

	public void setGestorCliente(String gestorCliente) {
		this.gestorCliente = gestorCliente;
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
}