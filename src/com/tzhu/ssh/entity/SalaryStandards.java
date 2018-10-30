package com.tzhu.ssh.entity;

import java.sql.Timestamp;

/**
 * SalaryStandards entity. @author MyEclipse Persistence Tools
 */

public class SalaryStandards implements java.io.Serializable {

	// Fields

	private Integer ssdId;
	private String standardId;//薪酬标准编号
	private String standardName;//薪酬标准名称
	private String designer;//制定人
	private String register;//登记人
	private Timestamp registTime;//登记时间
	private Integer basicSalary;//基本工资
	private Integer stationSalary;//岗位补贴
	private Integer educationSalary;//学历补贴
	private Integer ensureSalary;//五险一金
	private Integer trafficSalary;//交通补贴
	private Integer houseSalary;//住房补贴
	private String checker;//复核人
	private String changer;
	private Timestamp checkTime;//复核时间
	private Timestamp changeTime;
	private Double salarySum;//薪酬总额
	private Integer checkStatus;//删除状态（0:存在1：删除）
	private Integer changeStatus;//状态（0：申请中 1：重新申请 2：审核通过 ）
	private String checkComment;//复核人意见
	private String remark;//申请备注

	// Constructors

	/** default constructor */
	public SalaryStandards() {
	}

	/** full constructor */
	public SalaryStandards(String standardId, String standardName,
			String designer, String register, Timestamp registTime,
			Integer basicSalary, Integer stationSalary,
			Integer educationSalary, Integer ensureSalary,
			Integer trafficSalary, Integer houseSalary, String checker,
			String changer, Timestamp checkTime, Timestamp changeTime,
			Double salarySum, Integer checkStatus, Integer changeStatus,
			String checkComment, String remark) {
		this.standardId = standardId;
		this.standardName = standardName;
		this.designer = designer;
		this.register = register;
		this.registTime = registTime;
		this.basicSalary = basicSalary;
		this.stationSalary = stationSalary;
		this.educationSalary = educationSalary;
		this.ensureSalary = ensureSalary;
		this.trafficSalary = trafficSalary;
		this.houseSalary = houseSalary;
		this.checker = checker;
		this.changer = changer;
		this.checkTime = checkTime;
		this.changeTime = changeTime;
		this.salarySum = salarySum;
		this.checkStatus = checkStatus;
		this.changeStatus = changeStatus;
		this.checkComment = checkComment;
		this.remark = remark;
	}

	// Property accessors

	public Integer getSsdId() {
		return this.ssdId;
	}

	public void setSsdId(Integer ssdId) {
		this.ssdId = ssdId;
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

	public String getDesigner() {
		return this.designer;
	}

	public void setDesigner(String designer) {
		this.designer = designer;
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

	public Integer getBasicSalary() {
		return this.basicSalary;
	}

	public void setBasicSalary(Integer basicSalary) {
		this.basicSalary = basicSalary;
	}

	public Integer getStationSalary() {
		return this.stationSalary;
	}

	public void setStationSalary(Integer stationSalary) {
		this.stationSalary = stationSalary;
	}

	public Integer getEducationSalary() {
		return this.educationSalary;
	}

	public void setEducationSalary(Integer educationSalary) {
		this.educationSalary = educationSalary;
	}

	public Integer getEnsureSalary() {
		return this.ensureSalary;
	}

	public void setEnsureSalary(Integer ensureSalary) {
		this.ensureSalary = ensureSalary;
	}

	public Integer getTrafficSalary() {
		return this.trafficSalary;
	}

	public void setTrafficSalary(Integer trafficSalary) {
		this.trafficSalary = trafficSalary;
	}

	public Integer getHouseSalary() {
		return this.houseSalary;
	}

	public void setHouseSalary(Integer houseSalary) {
		this.houseSalary = houseSalary;
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

	public Double getSalarySum() {
		return this.salarySum;
	}

	public void setSalarySum(Double salarySum) {
		this.salarySum = salarySum;
	}

	public Integer getCheckStatus() {
		return this.checkStatus;
	}

	public void setCheckStatus(Integer checkStatus) {
		this.checkStatus = checkStatus;
	}

	public Integer getChangeStatus() {
		return this.changeStatus;
	}

	public void setChangeStatus(Integer changeStatus) {
		this.changeStatus = changeStatus;
	}

	public String getCheckComment() {
		return this.checkComment;
	}

	public void setCheckComment(String checkComment) {
		this.checkComment = checkComment;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "SalaryStandards [ssdId=" + ssdId + ", standardId=" + standardId
				+ ", standardName=" + standardName + ", designer=" + designer
				+ ", register=" + register + ", registTime=" + registTime
				+ ", basicSalary=" + basicSalary + ", stationSalary="
				+ stationSalary + ", educationSalary=" + educationSalary
				+ ", ensureSalary=" + ensureSalary + ", trafficSalary="
				+ trafficSalary + ", houseSalary=" + houseSalary + ", checker="
				+ checker + ", changer=" + changer + ", checkTime=" + checkTime
				+ ", changeTime=" + changeTime + ", salarySum=" + salarySum
				+ ", checkStatus=" + checkStatus + ", changeStatus="
				+ changeStatus + ", checkComment=" + checkComment + ", remark="
				+ remark + "]";
	}

}