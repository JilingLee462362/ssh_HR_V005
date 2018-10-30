package com.tzhu.ssh.entity;

/**
 * ConfigPrimaryKey entity. @author MyEclipse Persistence Tools
 */

public class ConfigPrimaryKey implements java.io.Serializable {

	// Fields

	private Integer prkId;
	private String primaryKeyTable;
	private String primaryKey;
	private String keyName;
	private Boolean primaryKeyStatus;

	// Constructors

	/** default constructor */
	public ConfigPrimaryKey() {
	}

	/** full constructor */
	public ConfigPrimaryKey(String primaryKeyTable, String primaryKey,
			String keyName, Boolean primaryKeyStatus) {
		this.primaryKeyTable = primaryKeyTable;
		this.primaryKey = primaryKey;
		this.keyName = keyName;
		this.primaryKeyStatus = primaryKeyStatus;
	}

	// Property accessors

	public Integer getPrkId() {
		return this.prkId;
	}

	public void setPrkId(Integer prkId) {
		this.prkId = prkId;
	}

	public String getPrimaryKeyTable() {
		return this.primaryKeyTable;
	}

	public void setPrimaryKeyTable(String primaryKeyTable) {
		this.primaryKeyTable = primaryKeyTable;
	}

	public String getPrimaryKey() {
		return this.primaryKey;
	}

	public void setPrimaryKey(String primaryKey) {
		this.primaryKey = primaryKey;
	}

	public String getKeyName() {
		return this.keyName;
	}

	public void setKeyName(String keyName) {
		this.keyName = keyName;
	}

	public Boolean getPrimaryKeyStatus() {
		return this.primaryKeyStatus;
	}

	public void setPrimaryKeyStatus(Boolean primaryKeyStatus) {
		this.primaryKeyStatus = primaryKeyStatus;
	}

}