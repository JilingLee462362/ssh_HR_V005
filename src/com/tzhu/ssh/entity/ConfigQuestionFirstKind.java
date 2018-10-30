package com.tzhu.ssh.entity;

/**
 * ConfigQuestionFirstKind entity. @author MyEclipse Persistence Tools
 */

public class ConfigQuestionFirstKind implements java.io.Serializable {

	// Fields

	private Integer qfkId;
	private String firstKindId;
	private String firstKindName;

	// Constructors

	/** default constructor */
	public ConfigQuestionFirstKind() {
	}

	/** full constructor */
	public ConfigQuestionFirstKind(String firstKindId, String firstKindName) {
		this.firstKindId = firstKindId;
		this.firstKindName = firstKindName;
	}

	// Property accessors

	public Integer getQfkId() {
		return this.qfkId;
	}

	public void setQfkId(Integer qfkId) {
		this.qfkId = qfkId;
	}

	public String getFirstKindId() {
		return this.firstKindId;
	}

	public void setFirstKindId(String firstKindId) {
		this.firstKindId = firstKindId;
	}

	public String getFirstKindName() {
		return this.firstKindName;
	}

	public void setFirstKindName(String firstKindName) {
		this.firstKindName = firstKindName;
	}

}