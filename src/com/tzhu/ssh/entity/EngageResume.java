package com.tzhu.ssh.entity;

import java.sql.Timestamp;

/**
 * EngageResume entity. @author MyEclipse Persistence Tools
 */

public class EngageResume implements java.io.Serializable {

	// Fields

	private Integer resId;//
	private String humanName;
	private String engageType;//
	private String humanAddress;
	private String humanPostcode;
	private String humanMajorKindId;//
	private String humanMajorKindName;//
	private String humanMajorId;//
	private String humanMajorName;//
	private String humanMobilephone;
	private String humanEmail;
	private String humanSex;
	private String humanParty;
	private String humanNationality;
	private String humanRace;
	private Integer humanAge;
	private String humanEducatedDegree;
	private String humanIdcard;
	private String demandSalaryStandard;
	private String humanHistoryRecords;
	private String remark;
	private String recomandation;
	private String humanPicture;
	private String attachmentName;
	private String register;
	private Timestamp registTime;
	private String checker;
	private Timestamp checkTime;
	private Float totalPoints;
	private Integer testAmount;
	private String testChecker;
	private Timestamp testCheckTime;
	private String passRegister;
	private Timestamp passRegistTime;
	private String passChecker;
	private Timestamp passCheckTime;
	private String passCheckComment;
	private String passPassComment;
	private Integer checkStatus;

	
	
	// Constructors

	@Override
	public String toString() {
		return "EngageResume [resId=" + resId + ", humanName=" + humanName
				+ ", engageType=" + engageType + ", humanAddress="
				+ humanAddress + ", humanPostcode=" + humanPostcode
				+ ", humanMajorKindId=" + humanMajorKindId
				+ ", humanMajorKindName=" + humanMajorKindName
				+ ", humanMajorId=" + humanMajorId + ", humanMajorName="
				+ humanMajorName + ", humanMobilephone=" + humanMobilephone
				+ ", humanEmail=" + humanEmail + ", humanSex=" + humanSex
				+ ", humanParty=" + humanParty + ", humanNationality="
				+ humanNationality + ", humanRace=" + humanRace + ", humanAge="
				+ humanAge + ", humanEducatedDegree=" + humanEducatedDegree
				+ ", humanIdcard=" + humanIdcard + ", demandSalaryStandard="
				+ demandSalaryStandard + ", humanHistoryRecords="
				+ humanHistoryRecords + ", remark=" + remark
				+ ", recomandation=" + recomandation + ", humanPicture="
				+ humanPicture + ", attachmentName=" + attachmentName
				+ ", register=" + register + ", registTime=" + registTime
				+ ", checker=" + checker + ", checkTime=" + checkTime
				+ ", totalPoints=" + totalPoints + ", testAmount=" + testAmount
				+ ", testChecker=" + testChecker + ", testCheckTime="
				+ testCheckTime + ", passRegister=" + passRegister
				+ ", passRegistTime=" + passRegistTime + ", passChecker="
				+ passChecker + ", passCheckTime=" + passCheckTime
				+ ", passCheckComment=" + passCheckComment
				+ ", passPassComment=" + passPassComment + ", checkStatus="
				+ checkStatus + "]";
	}

	/** default constructor */
	public EngageResume() {
	}

	/** full constructor */
	public EngageResume(String humanName, String engageType,
			String humanAddress, String humanPostcode, String humanMajorKindId,
			String humanMajorKindName, String humanMajorId,
			String humanMajorName, String humanMobilephone, String humanEmail,
			String humanSex, String humanParty, String humanNationality,
			String humanRace, Integer humanAge, String humanEducatedDegree,
			String humanIdcard, String demandSalaryStandard,
			String humanHistoryRecords, String remark, String recomandation,
			String humanPicture, String attachmentName, String register,
			Timestamp registTime, String checker, Timestamp checkTime,
			Float totalPoints, Integer testAmount, String testChecker,
			Timestamp testCheckTime, String passRegister,
			Timestamp passRegistTime, String passChecker,
			Timestamp passCheckTime, String passCheckComment,
			String passPassComment, Integer checkStatus) {
		this.humanName = humanName;
		this.engageType = engageType;
		this.humanAddress = humanAddress;
		this.humanPostcode = humanPostcode;
		this.humanMajorKindId = humanMajorKindId;
		this.humanMajorKindName = humanMajorKindName;
		this.humanMajorId = humanMajorId;
		this.humanMajorName = humanMajorName;
		this.humanMobilephone = humanMobilephone;
		this.humanEmail = humanEmail;
		this.humanSex = humanSex;
		this.humanParty = humanParty;
		this.humanNationality = humanNationality;
		this.humanRace = humanRace;
		this.humanAge = humanAge;
		this.humanEducatedDegree = humanEducatedDegree;
		this.humanIdcard = humanIdcard;
		this.demandSalaryStandard = demandSalaryStandard;
		this.humanHistoryRecords = humanHistoryRecords;
		this.remark = remark;
		this.recomandation = recomandation;
		this.humanPicture = humanPicture;
		this.attachmentName = attachmentName;
		this.register = register;
		this.registTime = registTime;
		this.checker = checker;
		this.checkTime = checkTime;
		this.totalPoints = totalPoints;
		this.testAmount = testAmount;
		this.testChecker = testChecker;
		this.testCheckTime = testCheckTime;
		this.passRegister = passRegister;
		this.passRegistTime = passRegistTime;
		this.passChecker = passChecker;
		this.passCheckTime = passCheckTime;
		this.passCheckComment = passCheckComment;
		this.passPassComment = passPassComment;
		this.checkStatus = checkStatus;
	}

	// Property accessors

	public Integer getResId() {
		return this.resId;
	}

	public void setResId(Integer resId) {
		this.resId = resId;
	}

	public String getHumanName() {
		return this.humanName;
	}

	public void setHumanName(String humanName) {
		this.humanName = humanName;
	}

	public String getEngageType() {
		return this.engageType;
	}

	public void setEngageType(String engageType) {
		this.engageType = engageType;
	}

	public String getHumanAddress() {
		return this.humanAddress;
	}

	public void setHumanAddress(String humanAddress) {
		this.humanAddress = humanAddress;
	}

	public String getHumanPostcode() {
		return this.humanPostcode;
	}

	public void setHumanPostcode(String humanPostcode) {
		this.humanPostcode = humanPostcode;
	}

	public String getHumanMajorKindId() {
		return this.humanMajorKindId;
	}

	public void setHumanMajorKindId(String humanMajorKindId) {
		this.humanMajorKindId = humanMajorKindId;
	}

	public String getHumanMajorKindName() {
		return this.humanMajorKindName;
	}

	public void setHumanMajorKindName(String humanMajorKindName) {
		this.humanMajorKindName = humanMajorKindName;
	}

	public String getHumanMajorId() {
		return this.humanMajorId;
	}

	public void setHumanMajorId(String humanMajorId) {
		this.humanMajorId = humanMajorId;
	}

	public String getHumanMajorName() {
		return this.humanMajorName;
	}

	public void setHumanMajorName(String humanMajorName) {
		this.humanMajorName = humanMajorName;
	}

	public String getHumanMobilephone() {
		return this.humanMobilephone;
	}

	public void setHumanMobilephone(String humanMobilephone) {
		this.humanMobilephone = humanMobilephone;
	}

	public String getHumanEmail() {
		return this.humanEmail;
	}

	public void setHumanEmail(String humanEmail) {
		this.humanEmail = humanEmail;
	}

	public String getHumanSex() {
		return this.humanSex;
	}

	public void setHumanSex(String humanSex) {
		this.humanSex = humanSex;
	}

	public String getHumanParty() {
		return this.humanParty;
	}

	public void setHumanParty(String humanParty) {
		this.humanParty = humanParty;
	}

	public String getHumanNationality() {
		return this.humanNationality;
	}

	public void setHumanNationality(String humanNationality) {
		this.humanNationality = humanNationality;
	}

	public String getHumanRace() {
		return this.humanRace;
	}

	public void setHumanRace(String humanRace) {
		this.humanRace = humanRace;
	}

	public Integer getHumanAge() {
		return this.humanAge;
	}

	public void setHumanAge(Integer humanAge) {
		this.humanAge = humanAge;
	}

	public String getHumanEducatedDegree() {
		return this.humanEducatedDegree;
	}

	public void setHumanEducatedDegree(String humanEducatedDegree) {
		this.humanEducatedDegree = humanEducatedDegree;
	}

	public String getHumanIdcard() {
		return this.humanIdcard;
	}

	public void setHumanIdcard(String humanIdcard) {
		this.humanIdcard = humanIdcard;
	}

	public String getDemandSalaryStandard() {
		return this.demandSalaryStandard;
	}

	public void setDemandSalaryStandard(String demandSalaryStandard) {
		this.demandSalaryStandard = demandSalaryStandard;
	}

	public String getHumanHistoryRecords() {
		return this.humanHistoryRecords;
	}

	public void setHumanHistoryRecords(String humanHistoryRecords) {
		this.humanHistoryRecords = humanHistoryRecords;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getRecomandation() {
		return this.recomandation;
	}

	public void setRecomandation(String recomandation) {
		this.recomandation = recomandation;
	}

	public String getHumanPicture() {
		return this.humanPicture;
	}

	public void setHumanPicture(String humanPicture) {
		this.humanPicture = humanPicture;
	}

	public String getAttachmentName() {
		return this.attachmentName;
	}

	public void setAttachmentName(String attachmentName) {
		this.attachmentName = attachmentName;
	}

	public String getRegister() {
		return this.register;
	}

	public void setRegister(String register) {
		this.register = register;
	}

	public Timestamp getRegistTime() {
		return this.registTime;
	}

	public void setRegistTime(Timestamp registTime) {
		this.registTime = registTime;
	}

	public String getChecker() {
		return this.checker;
	}

	public void setChecker(String checker) {
		this.checker = checker;
	}

	public Timestamp getCheckTime() {
		return this.checkTime;
	}

	public void setCheckTime(Timestamp checkTime) {
		this.checkTime = checkTime;
	}

	public Float getTotalPoints() {
		return this.totalPoints;
	}

	public void setTotalPoints(Float totalPoints) {
		this.totalPoints = totalPoints;
	}

	public Integer getTestAmount() {
		return this.testAmount;
	}

	public void setTestAmount(Integer testAmount) {
		this.testAmount = testAmount;
	}

	public String getTestChecker() {
		return this.testChecker;
	}

	public void setTestChecker(String testChecker) {
		this.testChecker = testChecker;
	}

	public Timestamp getTestCheckTime() {
		return this.testCheckTime;
	}

	public void setTestCheckTime(Timestamp testCheckTime) {
		this.testCheckTime = testCheckTime;
	}

	public String getPassRegister() {
		return this.passRegister;
	}

	public void setPassRegister(String passRegister) {
		this.passRegister = passRegister;
	}

	public Timestamp getPassRegistTime() {
		return this.passRegistTime;
	}

	public void setPassRegistTime(Timestamp passRegistTime) {
		this.passRegistTime = passRegistTime;
	}

	public String getPassChecker() {
		return this.passChecker;
	}

	public void setPassChecker(String passChecker) {
		this.passChecker = passChecker;
	}

	public Timestamp getPassCheckTime() {
		return this.passCheckTime;
	}

	public void setPassCheckTime(Timestamp passCheckTime) {
		this.passCheckTime = passCheckTime;
	}

	public String getPassCheckComment() {
		return this.passCheckComment;
	}

	public void setPassCheckComment(String passCheckComment) {
		this.passCheckComment = passCheckComment;
	}

	public String getPassPassComment() {
		return this.passPassComment;
	}

	public void setPassPassComment(String passPassComment) {
		this.passPassComment = passPassComment;
	}

	public Integer getCheckStatus() {
		return this.checkStatus;
	}

	public void setCheckStatus(Integer checkStatus) {
		this.checkStatus = checkStatus;
	}

}