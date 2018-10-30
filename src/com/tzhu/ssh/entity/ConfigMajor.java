package com.tzhu.ssh.entity;

/**
 * ConfigMajor entity. @author MyEclipse Persistence Tools
 */

public class ConfigMajor implements java.io.Serializable {

	// Fields

	private Integer makId;
	private String majorKindId;
	private String majorKindName;
	private String majorId;
	private String majorName;
	private Integer testAmount;

	// Constructors

	/** default constructor */
	public ConfigMajor() {
	}

	/** full constructor */
	public ConfigMajor(String majorKindId, String majorKindName,
			String majorId, String majorName, Integer testAmount) {
		this.majorKindId = majorKindId;
		this.majorKindName = majorKindName;
		this.majorId = majorId;
		this.majorName = majorName;
		this.testAmount = testAmount;
	}

	// Property accessors

	public Integer getMakId() {
		return this.makId;
	}

	public void setMakId(Integer makId) {
		this.makId = makId;
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

	public String getMajorId() {
		return this.majorId;
	}

	public void setMajorId(String majorId) {
		this.majorId = majorId;
	}

	public String getMajorName() {
		return this.majorName;
	}

	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}

	public Integer getTestAmount() {
		return this.testAmount;
	}

	public void setTestAmount(Integer testAmount) {
		this.testAmount = testAmount;
	}

}