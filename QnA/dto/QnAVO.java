package com.model.qna.dto;

import java.io.Serializable;

public class QnAVO implements Serializable { 
 
	String hi;
	String hello;
	
	public QnAVO() {
		// TODO Auto-generated constructor stub
	}

	public QnAVO(String hi, String hello) {
		this.hi = hi;
		this.hello = hello;
	}

	public String getHi() {
		return hi;
	}

	public void setHi(String hi) {
		this.hi = hi;
	}

	public String getHello() {
		return hello;
	}

	public void setHello(String hello) {
		this.hello = hello;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((hello == null) ? 0 : hello.hashCode());
		result = prime * result + ((hi == null) ? 0 : hi.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		QnAVO other = (QnAVO) obj;
		if (hello == null) {
			if (other.hello != null)
				return false;
		} else if (!hello.equals(other.hello))
			return false;
		if (hi == null) {
			if (other.hi != null)
				return false;
		} else if (!hi.equals(other.hi))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "QnAVO [hi=" + hi + ", hello=" + hello + "]";
	}
		
	
}
