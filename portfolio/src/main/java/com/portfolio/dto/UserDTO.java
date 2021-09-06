package com.portfolio.dto;

public class UserDTO {

	private String userID;
	private String userPassword;
	private String userName;
	private String userGender;
	private String userEmail;
	private String userAddress;
	private int authority;
	
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getAddress() {
		return userAddress;
	}
	public void setAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public int getAuthority() {
		return authority;
	}
	public void setAuthority(int authority) {
		this.authority = authority;
	}

	@Override
	public String toString() {
		return "UserDTO [userID=" + userID + ", userPassword=" + userPassword + ", userName=" + userName + ", userEmail=" + userEmail
				+ ", userAddress=" + userAddress + ", authority=" + authority + "]";
	}
}
