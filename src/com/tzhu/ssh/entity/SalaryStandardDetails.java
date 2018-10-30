package com.tzhu.ssh.entity;

/**
 * SalaryStandardDetails entity. @author MyEclipse Persistence Tools
 */

public class SalaryStandardDetails implements java.io.Serializable {

	// Fields

	private Integer sdtId;
	private String standardId;
	private String standardName;
	private Integer itemId;
	private String itemName;
	private Double salary;

	// Constructors

	/** default constructor */
	public SalaryStandardDetails() {
	}

	/** full constructor */
	public SalaryStandardDetails(String standardId, String standardName,
			Integer itemId, String itemName, Double salary) {
		this.standardId = standardId;
		this.standardName = standardName;
		this.itemId = itemId;
		this.itemName = itemName;
		this.salary = salary;
	}

	// Property accessors

	public Integer getSdtId() {
		return this.sdtId;
	}

	public void setSdtId(Integer sdtId) {
		this.sdtId = sdtId;
	}

	public String getStandardId() {
		return this.standardId;
	}

	public void setStandardId(String standardId) {
		this.standardId = standardId;
	}

	public String getStandardName() {
		return this.standardName;
	}

	public void setStandardName(String standardName) {
		this.standardName = standardName;
	}

	public Integer getItemId() {
		return this.itemId;
	}

	public void setItemId(Integer itemId) {
		this.itemId = itemId;
	}

	public String getItemName() {
		return this.itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public Double getSalary() {
		return this.salary;
	}

	public void setSalary(Double salary) {
		this.salary = salary;
	}

	@Override
	public String toString() {
		return "SalaryStandardDetails [sdtId=" + sdtId + ", standardId="
				+ standardId + ", standardName=" + standardName + ", itemId="
				+ itemId + ", itemName=" + itemName + ", salary=" + salary
				+ "]";
	}

}