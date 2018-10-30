package com.tzhu.ssh.entity;

/**
 * Userinfo entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class Userinfo implements java.io.Serializable {

	// Fields

	private Integer userId;
	private Role role;
	private String userName;
	private String userPassword;
	private String userFlag;

	// Constructors

	/** default constructor */
	public Userinfo() {
	}

	/** minimal constructor */
	public Userinfo(String userName, String userFlag) {
		this.userName = userName;
		this.userFlag = userFlag;
	}

	/** full constructor */
	public Userinfo(Role role, String userName, String userPassword,
			String userFlag) {
		this.role = role;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userFlag = userFlag;
	}

	
	
	
	// Property accessors

	@Override
	public String toString() {
		return "Userinfo [userId=" + userId + ", role=" + role + ", userName="
				+ userName + ", userPassword=" + userPassword + ", userFlag="
				+ userFlag + "]";
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Role getRole() {
		return this.role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserFlag() {
		return this.userFlag;
	}

	public void setUserFlag(String userFlag) {
		this.userFlag = userFlag;
	}

}