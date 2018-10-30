package com.tzhu.ssh.entity;

/**
 * EngageAnswerDetails entity. @author MyEclipse Persistence Tools
 */

public class EngageAnswerDetails implements java.io.Serializable {

	// Fields

	private Integer andId;
	private String answerNumber;
	private Integer subjectId;
	private String answer;

	// Constructors

	/** default constructor */
	public EngageAnswerDetails() {
	}

	/** full constructor */
	public EngageAnswerDetails(String answerNumber, Integer subjectId,
			String answer) {
		this.answerNumber = answerNumber;
		this.subjectId = subjectId;
		this.answer = answer;
	}

	// Property accessors

	public Integer getAndId() {
		return this.andId;
	}

	public void setAndId(Integer andId) {
		this.andId = andId;
	}

	public String getAnswerNumber() {
		return this.answerNumber;
	}

	public void setAnswerNumber(String answerNumber) {
		this.answerNumber = answerNumber;
	}

	public Integer getSubjectId() {
		return this.subjectId;
	}

	public void setSubjectId(Integer subjectId) {
		this.subjectId = subjectId;
	}

	public String getAnswer() {
		return this.answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

}