package com.amigo.vo.board;

import java.util.Date;

public class BoardVO {
	private int bNum;
	private int bLike;
	private int bCategory;
	private int cNum;
	private int bReadcnt;
	
	private String bTitle;
	private String bContent;
	private String bWriter;
	
	private Date bRegdate;
	private Date bUpdate;
	
	public int getbNum() {
		return bNum;
	}
	public void setbNum(int bNum) {
		this.bNum = bNum;
	}
	public int getbLike() {
		return bLike;
	}
	public void setbLike(int bLike) {
		this.bLike = bLike;
	}
	public int getcNum() {
		return cNum;
	}
	public void setcNum(int cNum) {
		this.cNum = cNum;
	}
	public int getbCategory() {
		return bCategory;
	}
	public void setbCategory(int bCategory) {
		this.bCategory = bCategory;
	}
	public int getbReadcnt() {
		return bReadcnt;
	}
	public void setbReadcnt(int bReadcnt) {
		this.bReadcnt = bReadcnt;
	}
	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	public String getbWriter() {
		return bWriter;
	}
	public void setbWriter(String bWriter) {
		this.bWriter = bWriter;
	}
	public Date getbRegdate() {
		return bRegdate;
	}
	public void setbRegdate(Date bRegdate) {
		this.bRegdate = bRegdate;
	}
	public Date getbUpdate() {
		return bUpdate;
	}
	public void setbUpdate(Date bUpdate) {
		this.bUpdate = bUpdate;
	}
	@Override
	public String toString() {
		return "BoardVO [bNum=" + bNum + ", bLike=" + bLike + ", bCategory=" + bCategory + ", cNum=" + cNum
				+ ", bReadcnt=" + bReadcnt + ", bTitle=" + bTitle + ", bContent=" + bContent + ", bWriter=" + bWriter
				+ ", bRegdate=" + bRegdate + ", bUpdate=" + bUpdate + "]";
	}
}
