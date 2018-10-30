package com.tzhu.ssh.entity;

import java.sql.Timestamp;

/**
 * HumanFile entity. @author MyEclipse Persistence Tools
 */

public class HumanFile implements java.io.Serializable {

	// Fields

	private Integer hufId;
	private String humanId;
	private String firstKindId;
	private String firstKindName;
	private String secondKindId;
	private String secondKindName;
	private String thirdKindId;
	private String thirdKindName;
	private String humanName;
	private String humanAddress;
	private String humanPostcode;
	private String humanProDesignation;
	private String humanMajorKindId;
	private String humanMajorKindName;
	private String humanMajorId;
	private String hunmaMajorName;
	private String humanMobilephone;
	private String humanAccount;
	private String humanEmail;
	private String humanSex;
	private String humanParty;
	private String humanNationality;
	private String humanRace;
	private Integer humanAge;
	private String humanEducatedDegree;
	private String humanIdCard;
	private String remark;
	private String salaryStandardId;
	private String salaryStandardName;
	private Double salarySum;
	private Double demandSalaraySum;
	private Double paidSalarySum;
	private Integer majorChangeAmount;
	private Integer bonusAmount;
	private Integer trainingAmount;
	private Integer fileChangAmount;
	private String humanHistroyRecords;
	private String humanPicture;
	private String attachmentName;
	private String register;
	private String checker;
	private String changer;
	private Timestamp registTime;
	private Timestamp checkTime;
	private Timestamp changeTime;
	private Timestamp lastlyChangeTime;
	private Timestamp deleteTime;
	private Timestamp recoveryTime;
	private String humanFileStatus;

	// Constructors

	/** default constructor */
	public HumanFile() {
	}

	/** minimal constructor */
	public HumanFile(String humanIdCard) {
		this.humanIdCard = humanIdCard;
	}


	public String toString() {
		return "HumanFile [hufId=" + hufId + ", humanId=" + humanId
				+ ", firstKindId=" + firstKindId + ", firstKindName="
				+ firstKindName + ", secondKindId=" + secondKindId
				+ ", secondKindName=" + secondKindName + ", thirdKindId="
				+ thirdKindId + ", thirdKindName=" + thirdKindName
				+ ", humanName=" + humanName + ", humanAddress=" + humanAddress
				+ ", humanPostcode=" + humanPostcode + ", humanProDesignation="
				+ humanProDesignation + ", humanMajorKindId="
				+ humanMajorKindId + ", humanMajorKindName="
				+ humanMajorKindName + ", humanMajorId=" + humanMajorId
				+ ", hunmaMajorName=" + hunmaMajorName + ", humanMobilephone="
				+ humanMobilephone + ", humanAccount=" + humanAccount
				+ ", humanEmail=" + humanEmail + ", humanSex=" + humanSex
				+ ", humanParty=" + humanParty + ", humanNationality="
				+ humanNationality + ", humanRace=" + humanRace + ", humanAge="
				+ humanAge + ", humanEducatedDegree=" + humanEducatedDegree
				+ ", humanIdCard=" + humanIdCard + ", remark=" + remark
				+ ", salaryStandardId=" + salaryStandardId
				+ ", salaryStandardName=" + salaryStandardName + ", salarySum="
				+ salarySum + ", demandSalaraySum=" + demandSalaraySum
				+ ", paidSalarySum=" + paidSalarySum + ", majorChangeAmount="
				+ majorChangeAmount + ", bonusAmount=" + bonusAmount
				+ ", trainingAmount=" + trainingAmount + ", fileChangAmount="
				+ fileChangAmount + ", humanHistroyRecords="
				+ humanHistroyRecords + ", humanPicture=" + humanPicture
				+ ", attachmentName=" + attachmentName + ", register="
				+ register + ", checker=" + checker + ", changer=" + changer
				+ ", registTime=" + registTime + ", checkTime=" + checkTime
				+ ", changeTime=" + changeTime + ", lastlyChangeTime="
				+ lastlyChangeTime + ", deleteTime=" + deleteTime
				+ ", recoveryTime=" + recoveryTime + ", humanFileStatus="
				+ humanFileStatus + "]";
	}

	/** full constructor */
	public HumanFile(String humanId, String firstKindId, String firstKindName,
			String secondKindId, String secondKindName, String thirdKindId,
			String thirdKindName, String humanName, String humanAddress,
			String humanPostcode, String humanProDesignation,
			String humanMajorKindId, String humanMajorKindName,
			String humanMajorId, String hunmaMajorName,
			String humanMobilephone, String humanAccount, String humanEmail,
			String humanSex, String humanParty, String humanNationality,
			String humanRace, Integer humanAge, String humanEducatedDegree,
			String humanIdCard, String remark, String salaryStandardId,
			String salaryStandardName, Double salarySum,
			Double demandSalaraySum, Double paidSalarySum,
			Integer majorChangeAmount, Integer bonusAmount,
			Integer trainingAmount, Integer fileChangAmount,
			String humanHistroyRecords, String humanPicture,
			String attachmentName, String register, String checker,
			String changer, Timestamp registTime, Timestamp checkTime,
			Timestamp changeTime, Timestamp lastlyChangeTime,
			Timestamp deleteTime, Timestamp recoveryTime, String humanFileStatus) {
		this.humanId = humanId;
		this.firstKindId = firstKindId;
		this.firstKindName = firstKindName;
		this.secondKindId = secondKindId;
		this.secondKindName = secondKindName;
		this.thirdKindId = thirdKindId;
		this.thirdKindName = thirdKindName;
		this.humanName = humanName;
		this.humanAddress = humanAddress;
		this.humanPostcode = humanPostcode;
		this.humanProDesignation = humanProDesignation;
		this.humanMajorKindId = humanMajorKindId;
		this.humanMajorKindName = humanMajorKindName;
		this.humanMajorId = humanMajorId;
		this.hunmaMajorName = hunmaMajorName;
		this.humanMobilephone = humanMobilephone;
		this.humanAccount = humanAccount;
		this.humanEmail = humanEmail;
		this.humanSex = humanSex;
		this.humanParty = humanParty;
		this.humanNationality = humanNationality;
		this.humanRace = humanRace;
		this.humanAge = humanAge;
		this.humanEducatedDegree = humanEducatedDegree;
		this.humanIdCard = humanIdCard;
		this.remark = remark;
		this.salaryStandardId = salaryStandardId;
		this.salaryStandardName = salaryStandardName;
		this.salarySum = salarySum;
		this.demandSalaraySum = demandSalaraySum;
		this.paidSalarySum = paidSalarySum;
		this.majorChangeAmount = majorChangeAmount;
		this.bonusAmount = bonusAmount;
		this.trainingAmount = trainingAmount;
		this.fileChangAmount = fileChangAmount;
		this.humanHistroyRecords = humanHistroyRecords;
		this.humanPicture = humanPicture;
		this.attachmentName = attachmentName;
		this.register = register;
		this.checker = checker;
		this.changer = changer;
		this.registTime = registTime;
		this.checkTime = checkTime;
		this.changeTime = changeTime;
		this.lastlyChangeTime = lastlyChangeTime;
		this.deleteTime = deleteTime;
		this.recoveryTime = recoveryTime;
		this.humanFileStatus = humanFileStatus;
	}

	// Property accessors

	public Integer getHufId() {
		return this.hufId;
	}

	public void setHufId(Integer hufId) {
		this.hufId = hufId;
	}

	public String getHumanId() {
		return this.humanId;
	}

	public void setHumanId(String humanId) {
		this.humanId = humanId;
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

	public String getHumanName() {
		return this.humanName;
	}

	public void setHumanName(String humanName) {
		this.humanName = humanName;
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

	public String getHumanProDesignation() {
		return this.humanProDesignation;
	}

	public void setHumanProDesignation(String humanProDesignation) {
		this.humanProDesignation = humanProDesignation;
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

	public String getHunmaMajorName() {
		return this.hunmaMajorName;
	}

	public void setHunmaMajorName(String hunmaMajorName) {
		this.hunmaMajorName = hunmaMajorName;
	}

	public String getHumanMobilephone() {
		return this.humanMobilephone;
	}

	public void setHumanMobilephone(String humanMobilephone) {
		this.humanMobilephone = humanMobilephone;
	}

	public String getHumanAccount() {
		return this.humanAccount;
	}

	public void setHumanAccount(String humanAccount) {
		this.humanAccount = humanAccount;
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

	public String getHumanIdCard() {
		return this.humanIdCard;
	}

	public void setHumanIdCard(String humanIdCard) {
		this.humanIdCard = humanIdCard;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getSalaryStandardId() {
		return this.salaryStandardId;
	}

	public void setSalaryStandardId(String salaryStandardId) {
		this.salaryStandardId = salaryStandardId;
	}

	public String getSalaryStandardName() {
		return this.salaryStandardName;
	}

	public void setSalaryStandardName(String salaryStandardName) {
		this.salaryStandardName = salaryStandardName;
	}

	public Double getSalarySum() {
		return this.salarySum;
	}

	public void setSalarySum(Double salarySum) {
		this.salarySum = salarySum;
	}

	public Double getDemandSalaraySum() {
		return this.demandSalaraySum;
	}

	public void setDemandSalaraySum(Double demandSalaraySum) {
		this.demandSalaraySum = demandSalaraySum;
	}

	public Double getPaidSalarySum() {
		return this.paidSalarySum;
	}

	public void setPaidSalarySum(Double paidSalarySum) {
		this.paidSalarySum = paidSalarySum;
	}

	public Integer getMajorChangeAmount() {
		return this.majorChangeAmount;
	}

	public void setMajorChangeAmount(Integer majorChangeAmount) {
		this.majorChangeAmount = majorChangeAmount;
	}

	public Integer getBonusAmount() {
		return this.bonusAmount;
	}

	public void setBonusAmount(Integer bonusAmount) {
		this.bonusAmount = bonusAmount;
	}

	public Integer getTrainingAmount() {
		return this.trainingAmount;
	}

	public void setTrainingAmount(Integer trainingAmount) {
		this.trainingAmount = trainingAmount;
	}

	public Integer getFileChangAmount() {
		return this.fileChangAmount;
	}

	public void setFileChangAmount(Integer fileChangAmount) {
		this.fileChangAmount = fileChangAmount;
	}

	public String getHumanHistroyRecords() {
		return this.humanHistroyRecords;
	}

	public void setHumanHistroyRecords(String humanHistroyRecords) {
		this.humanHistroyRecords = humanHistroyRecords;
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

	public String getChecker() {
		return this.checker;
	}

	public void setChecker(String checker) {
		this.checker = checker;
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

	public Timestamp getCheckTime() {
		return this.checkTime;
	}

	public void setCheckTime(Timestamp checkTime) {
		this.checkTime = checkTime;
	}

	public Timestamp getChangeTime() {
		return this.changeTime;
	}

	public void setChangeTime(Timestamp changeTime) {
		this.changeTime = changeTime;
	}

	public Timestamp getLastlyChangeTime() {
		return this.lastlyChangeTime;
	}

	public void setLastlyChangeTime(Timestamp lastlyChangeTime) {
		this.lastlyChangeTime = lastlyChangeTime;
	}

	public Timestamp getDeleteTime() {
		return this.deleteTime;
	}

	public void setDeleteTime(Timestamp deleteTime) {
		this.deleteTime = deleteTime;
	}

	public Timestamp getRecoveryTime() {
		return this.recoveryTime;
	}

	public void setRecoveryTime(Timestamp recoveryTime) {
		this.recoveryTime = recoveryTime;
	}

	public String getHumanFileStatus() {
		return this.humanFileStatus;
	}

	public void setHumanFileStatus(String humanFileStatus) {
		this.humanFileStatus = humanFileStatus;
	}

}