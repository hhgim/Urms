package com.urms.log.vo;

public class LogVo {
	// FIELDS
	private String userId;
	private String userNm;
	private String userPw;
	private String accessYn;
	private String modDttm;
	
	public LogVo() {}

	public LogVo(String userId, String userNm, String userPw, String accessYn, String modDttm) {
		super();
		this.userId = userId;
		this.userNm = userNm;
		this.userPw = userPw;
		this.accessYn = accessYn;
		this.modDttm = modDttm;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserNm() {
		return userNm;
	}

	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getAccessYn() {
		return accessYn;
	}

	public void setAccessYn(String accessYn) {
		this.accessYn = accessYn;
	}

	public String getModDttm() {
		return modDttm;
	}

	public void setModDttm(String modDttm) {
		this.modDttm = modDttm;
	}

	@Override
	public String toString() {
		return "LogVo [userId=" + userId + ", userNm=" + userNm + ", userPw=" + userPw + ", accessYn=" + accessYn
				+ ", modDttm=" + modDttm + "]";
	}

	
	
}
