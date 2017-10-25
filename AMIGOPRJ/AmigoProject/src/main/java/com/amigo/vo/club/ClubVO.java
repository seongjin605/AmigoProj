package com.amigo.vo.club;

import java.util.Date;

public class ClubVO {

	private int cNum;
	private String cTitle;
	private String cContent;
	private String cPic;
	private String cMaster;
	private Date cRegdate;
	private int cArea;
	private int cHoby;
	
	public ClubVO() {}
	public int getcNum() {
		return cNum;
	}
	public void setcNum(int cNum) {
		this.cNum = cNum;
	}
	public String getcTitle() {
		return cTitle;
	}
	public void setcTitle(String cTitle) {
		this.cTitle = cTitle;
	}
	public String getcContent() {
		return cContent;
	}
	public void setcContent(String cContent) {
		this.cContent = cContent;
	}
	public String getcPic() {
		return cPic;
	}
	public void setcPic(String cPic) {
		this.cPic = cPic;
	}
	public String getcMaster() {
		return cMaster;
	}
	public void setcMaster(String cMaster) {
		this.cMaster = cMaster;
	}
	public Date getcRegdate() {
		return cRegdate;
	}
	public void setcRegdate(Date cRegdate) {
		this.cRegdate = cRegdate;
	}
	public int getcArea() {
		return cArea;
	}
	public void setcArea(int cArea) {
		this.cArea = cArea;
	}
	public int getcHoby() {
		return cHoby;
	}
	public void setcHoby(int cHoby) {
		this.cHoby = cHoby;
	}
	@Override
	public String toString() {
		return "ClubVO [cNum=" + cNum + ", cTitle=" + cTitle + ", cContent=" + cContent + ", cPic=" + cPic
				+ ", cMaster=" + cMaster + ", cRegdate=" + cRegdate + ", cArea=" + cArea + ", cHoby=" + cHoby + "]";
	}

}
