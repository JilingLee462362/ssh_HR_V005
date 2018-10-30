package com.tzhu.ssh.entity;

/**
 * ConfigMajorKind entity. @author MyEclipse Persistence Tools
 */

public class ConfigMajorKind implements java.io.Serializable {

	// Fields

	private Integer mfkId;
	private String majorKindId;
	private String majorKindName;

	// Constructors

	/** default constructor */
	public ConfigMajorKind() {
	}

	/** full constructor */
	public ConfigMajorKind(String majorKindId, String majorKindName) {
		this.majorKindId = majorKindId;
		this.majorKindName = majorKindName;
	}

	// Property accessors

	public Integer getMfkId() {
		return this.mfkId;
	}

	public void setMfkId(Integer mfkId) {
		this.mfkId = mfkId;
	}

	public String getMajorKindId() {
		return this.majorKindId;
	}

	public void setMajorKindId(String majorKindId) {
		this.majorKindId = majorKindId;
	}

	public String getMajorKindName() {
		return this.majorKindName;
	}

	public void setMajorKindName(String majorKindName) {
		this.majorKindName = majorKindName;
	}

}