package edu.infnet.gestao.modelo;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Patrimonio implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private Integer id;
	
	private String descricao;
	private String localizacao;
	
	public Patrimonio(Integer id, String descricao, String localizacao) {
		this.id = id;
		this.descricao = descricao;
		this.localizacao = localizacao;
	}

	public Patrimonio(String descricao, String localizacao) {
		this.descricao = descricao;
		this.localizacao = localizacao;
	}

	public Patrimonio(Integer id) {
		this.id = id;
	}
	
	public Patrimonio() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getLocalizacao() {
		return localizacao;
	}

	public void setLocalizacao(String localizacao) {
		this.localizacao = localizacao;
	}

	@Override
	public String toString() {
		return "Patrimonio [id=" + id + ", descricao=" + descricao + ", localizacao=" + localizacao + "]";
	}
}
