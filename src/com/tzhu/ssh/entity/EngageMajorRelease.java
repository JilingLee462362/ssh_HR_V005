package com.tzhu.ssh.entity;

import java.sql.Timestamp;

/**
 * EngageMajorRelease entity. @author MyEclipse Persistence Tools
 */

public class EngageMajorRelease implements java.io.Serializable {

	// Fields

	//注释作者：张思贤
	private Integer mreId; //职位发布id
	private String firstKindId;//一级机构id
	private String firstKindName;//一级机构名称
	private String secondKindId;//二级机构id
	private String secondKindName;//二级机构名称
	private String thirdKindId;//三级机构id
	private String thirdKindName;//三级机构名称
	private String majorKindId;//招聘类型id
	private String majorKindName;//招聘id名称
	private String majorId;//职位id
	private String majorName;//职位名称
	private Integer humanAmount;//招聘人数
	private String engageType;//招聘类型
	private Timestamp deadline;//截止日期
	private String register;//登记人
	private String changer;//变更人
	private Timestamp registTime;//等级日期
	private Timestamp changeTime;//变更日期
	private String majorDescribe;//职位描述
	private String engageRequired;//职位需求

	// Constructors

	/** default constructor */
	public EngageMajorRelease() {
	}

	/** full constructor */
	public EngageMajorRelease(String firstKindId, String firstKindName,
			String secondKindId, String secondKindName, String thirdKindId,
			String thirdKindName, String majorKindId, String majorKindName,
			String majorId, String majorName, Integer humanAmount,
			String engageType, Timestamp deadline, String register,
			String changer, Timestamp registTime, Timestamp changeTime,
			String majorDescribe, String engageRequired) {
		this.firstKindId = firstKindId;
		this.firstKindName = firstKindName;
		this.secondKindId = secondKindId;
		this.secondKindName = secondKindName;
		this.thirdKindId = thirdKindId;
		this.thirdKindName = thirdKindName;
		this.majorKindId = majorKindId;
		this.majorKindName = majorKindName;
		this.majorId = majorId;
		this.majorName = majorName;
		this.humanAmount = humanAmount;
		this.engageType = engageType;
		this.deadline = deadline;
		this.register = register;
		this.changer = changer;
		this.registTime = registTime;
		this.changeTime = changeTime;
		this.majorDescribe = majorDescribe;
		this.engageRequired = engageRequired;
	}

	// Property accessors

	public Integer getMreId() {
		return this.mreId;
	}

	public void setMreId(Integer mreId) {
		this.mreId = mreId;
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

	public String getThirdKindId() {
		return this.thirdKindId;
	}

	public void setThirdKindId(String thirdKindId) {
		this.thirdKindId = thirdKindId;
	}

	public String getThirdKindName() {
		return this.thirdKindName;
	}

	public void setThirdKindName(String thirdKindName) {
		this.thirdKindName = thirdKindName;
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

	public Integer getHumanAmount() {
		return this.humanAmount;
	}

	public void setHumanAmount(Integer humanAmount) {
		this.humanAmount = humanAmount;
	}

	public String getEngageType() {
		return this.engageType;
	}

	public void setEngageType(String engageType) {
		this.engageType = engageType;
	}

	public Timestamp getDeadline() {
		return this.deadline;
	}

	public void setDeadline(Timestamp deadline) {
		this.deadline = deadline;
	}

	public String getRegister() {
		return this.register;
	}

	public void setRegister(String register) {
		this.register = register;
	}

	public String getChanger() {
		return this.changer;
	}

	public void setChanger(String changer) {
		this.changer = changer;
	}

	public Timestamp getRegistTime() {
		return this.registTime;
	}

	public void setRegistTime(Timestamp registTime) {
		this.registTime = registTime;
	}

	public Timestamp getChangeTime() {
		return this.changeTime;
	}

	public void setChangeTime(Timestamp changeTime) {
		this.changeTime = changeTime;
	}

	public String getMajorDescribe() {
		return this.majorDescribe;
	}

	public void setMajorDescribe(String majorDescribe) {
		this.majorDescribe = majorDescribe;
	}

	public String getEngageRequired() {
		return this.engageRequired;
	}

	public void setEngageRequired(String engageRequired) {
		this.engageRequired = engageRequired;
	}

	@Override
	public String toString() {
		return "EngageMajorRelease [mreId=" + mreId + ", firstKindId="
				+ firstKindId + ", firstKindName=" + firstKindName
				+ ", secondKindId=" + secondKindId + ", secondKindName="
				+ secondKindName + ", thirdKindId=" + thirdKindId
				+ ", thirdKindName=" + thirdKindName + ", majorKindId="
				+ majorKindId + ", majorKindName=" + majorKindName
				+ ", majorId=" + majorId + ", majorName=" + majorName
				+ ", humanAmount=" + humanAmount + ", engageType=" + engageType
				+ ", deadline=" + deadline + ", register=" + register
				+ ", changer=" + changer + ", registTime=" + registTime
				+ ", changeTime=" + changeTime + ", majorDescribe="
				+ majorDescribe + ", engageRequired=" + engageRequired + "]";
	}

}