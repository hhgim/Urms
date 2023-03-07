package com.urms.log.vo;

public class LogVo {
	// FIELDS
	private String user_Id;
	private String user_Nm;
	private String user_Pw;
	private String access_Yn;
	private String mod_Dttm;
	
	public LogVo() {}

	public LogVo(String user_Id, String user_Nm, String user_Pw, String access_Yn, String mod_Dttm) {
		super();
		this.user_Id = user_Id;
		this.user_Nm = user_Nm;
		this.user_Pw = user_Pw;
		this.access_Yn = access_Yn;
		this.mod_Dttm = mod_Dttm;
	}

	public String getUser_Id() {
		return user_Id;
	}

	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}

	public String getUser_Nm() {
		return user_Nm;
	}

	public void setUser_Nm(String user_Nm) {
		this.user_Nm = user_Nm;
	}

	public String getUser_Pw() {
		return user_Pw;
	}

	public void setUser_Pw(String user_Pw) {
		this.user_Pw = user_Pw;
	}

	public String getAccess_Yn() {
		return access_Yn;
	}

	public void setAccess_Yn(String access_Yn) {
		this.access_Yn = access_Yn;
	}

	public String getMod_Dttm() {
		return mod_Dttm;
	}

	public void setMod_Dttm(String mod_Dttm) {
		this.mod_Dttm = mod_Dttm;
	}

	@Override
	public String toString() {
		return "LogVo [user_Id=" + user_Id + ", user_Nm=" + user_Nm + ", user_Pw=" + user_Pw + ", access_Yn="
				+ access_Yn + ", mod_Dttm=" + mod_Dttm + "]";
	}
	
	
}
