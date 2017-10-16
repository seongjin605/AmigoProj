package com.model.member.dto;

import java.sql.Date;

public class MemberDTO {
	private String mid;
	private String mpwd;
	private String mname;
	private String mtel;
	private String memail;
	private String mgender;
	private Date date;
	private int mage;

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMpwd() {
		return mpwd;
	}

	public void setMpwd(String mpwd) {
		this.mpwd = mpwd;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMtel() {
		return mtel;
	}

	public void setMtel(String mtel) {
		this.mtel = mtel;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public String getMgender() {
		return mgender;
	}

	public void setMgender(String mgender) {
		this.mgender = mgender;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getMage() {
		return mage;
	}

	public void setMage(int mage) {
		this.mage = mage;
	}

	@Override
	public String toString() {
		return "MemberDTO [mid=" + mid + ", mpwd=" + mpwd + ", mname=" + mname + ", mtel=" + mtel + ", memail=" + memail
				+ ", mgender=" + mgender + ", date=" + date + ", mage=" + mage + "]";
	}

}
