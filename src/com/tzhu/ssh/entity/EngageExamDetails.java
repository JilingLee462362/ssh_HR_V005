package com.tzhu.ssh.entity;

/**
 * EngageExamDetails entity. @author MyEclipse Persistence Tools
 */

public class EngageExamDetails implements java.io.Serializable {

	// Fields

	private Integer exdId;
	private String examNumber;
	private String firstKindId;
	private String firstKindName;
	private String secondKindId;
	private String secondKindName;
	private Integer questionAmount;

	// Constructors

	/** default constructor */
	public EngageExamDetails() {
	}

	/** full constructor */
	public EngageExamDetails(String examNumber, String firstKindId,
			String firstKindName, String secondKindId, String secondKindName,
			Integer questionAmount) {
		this.examNumber = examNumber;
		this.firstKindId = firstKindId;
		this.firstKindName = firstKindName;
		this.secondKindId = secondKindId;
		this.secondKindName = secondKindName;
		this.questionAmount = questionAmount;
	}

	// Property accessors

	public Integer getExdId() {
		return this.exdId;
	}

	public void setExdId(Integer exdId) {
		this.exdId = exdId;
	}

	public String getExamNumber() {
		return this.examNumber;
	}

	public void setExamNumber(String examNumber) {
		this.examNumber = examNumber;
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

	public String getSecondKindId() {
		return this.secondKindId;
	}

	public void setSecondKindId(String secondKindId) {
		this.secondKindId = secondKindId;
	}

	public String getSecondKindName() {
		return this.secondKindName;
	}

	public void setSecondKindName(String secondKindName) {
		this.secondKindName = secondKindName;
	}

	public Integer getQuestionAmount() {
		return this.questionAmount;
	}

	public void setQuestionAmount(Integer questionAmount) {
		this.questionAmount = questionAmount;
	}

}