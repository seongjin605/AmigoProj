package com.amigo.vo.qna.QnADTO;

import java.sql.Date;

public class QnADTO {

	private String category, q_subject, q_content, writer;
	private int num;
	private Date regdate;
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getQ_subject() {
		return q_subject;
	}
	public void setQ_subject(String q_subject) {
		this.q_subject = q_subject;
	}
	public String getQ_content() {
		return q_content;
	}
	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "QnADTO [category=" + category + ", q_subject=" + q_subject + ", q_content=" + q_content + ", writer="
				+ writer + ", num=" + num + ", regdate=" + regdate + "]";
	}	
	
}
