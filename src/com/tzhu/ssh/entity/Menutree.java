package com.tzhu.ssh.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Menutree entity. @author MyEclipse Persistence Tools
 */

public class Menutree implements java.io.Serializable  {

	// Fields

	private Integer rightCode;
	private Integer rightParentCode;
	private String rightText;
	private String rightUrl;
	private String rightTarget;
	private String rightIco;
	 

	// Constructors

	/** default constructor */
	public Menutree() {
	}

	/** full constructor */
	public Menutree(Integer rightParentCode, String rightText, String rightUrl,
			String rightTarget, String rightIco) {
		this.rightParentCode = rightParentCode;
		this.rightText = rightText;
		this.rightUrl = rightUrl;
		this.rightTarget = rightTarget;
		this.rightIco = rightIco;
	 
	}

	// Property accessors

	@Override
	public String toString() {
		return "Menutree [rightCode=" + rightCode + ", rightParentCode="
				+ rightParentCode + ", rightText=" + rightText + ", rightUrl="
				+ rightUrl + ", rightTarget=" + rightTarget + ", rightIco="
				+ rightIco + " ";
	}

	public Integer getRightCode() {
		return this.rightCode;
	}

	public void setRightCode(Integer rightCode) {
		this.rightCode = rightCode;
	}

	public Integer getRightParentCode() {
		return this.rightParentCode;
	}

	public void setRightParentCode(Integer rightParentCode) {
		this.rightParentCode = rightParentCode;
	}

	public String getRightText() {
		return this.rightText;
	}

	public void setRightText(String rightText) {
		this.rightText = rightText;
	}

	public String getRightUrl() {
		return this.rightUrl;
	}

	public void setRightUrl(String rightUrl) {
		this.rightUrl = rightUrl;
	}

	public String getRightTarget() {
		return this.rightTarget;
	}

	public void setRightTarget(String rightTarget) {
		this.rightTarget = rightTarget;
	}

	public String getRightIco() {
		return this.rightIco;
	}

	public void setRightIco(String rightIco) {
		this.rightIco = rightIco;
	}
 
 

}