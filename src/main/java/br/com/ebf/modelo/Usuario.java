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
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "TWEB_USUARIO")
public class Usuario {

	@Id
	@Column(length = 5)
	@GeneratedValue(strategy = GenerationType.SEQUENCE) //ORACLE
	private Integer id;

	@Temporal(TemporalType.DATE)
	@Column(name = "data_cadastro")
	private Date dataCadastro;

	@NotEmpty
	@Column(length = 30)
	private String departamento;

	@NotEmpty
	@Column(length = 30)
	private String cargo;

	@NotEmpty
	@Column(length = 40)
	private String nome;

	@NotEmpty
	@Column(length = 20)
	private String login;

	@NotEmpty
	@Column(length = 12)
	private String senha;

	@Email
	@Column(length = 50)
	private String email;

	@Temporal(TemporalType.DATE)
	@Column(name = "data_login")
	private Date dataLogin;

	@Column(name = "altera_spl", columnDefinition = "Character(1)")
	private Character alteraSPL;

	@Column(columnDefinition = "Character(1) default 'S'")
	private Character ativo;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Date getDataCadastro() {
		return dataCadastro;
	}

	public void setDataCadastro(Date dataCadastro) {
		this.dataCadastro = dataCadastro;
	}

	public String getDepartamento() {
		return departamento;
	}

	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}

	public String getCargo() {
		return cargo;
	}

	public void setCargo(String cargo) {
		this.cargo = cargo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDataLogin() {
		return dataLogin;
	}

	public void setDataLogin(Date dataLogin) {
		this.dataLogin = dataLogin;
	}

	public Character getAlteraSPL() {
		return alteraSPL;
	}

	public void setAlteraSPL(Character alteraSPL) {
		this.alteraSPL = alteraSPL;
	}

	public Character getAtivo() {
		return ativo;
	}

	public void setAtivo(Character ativo) {
		this.ativo = ativo;
	}
}