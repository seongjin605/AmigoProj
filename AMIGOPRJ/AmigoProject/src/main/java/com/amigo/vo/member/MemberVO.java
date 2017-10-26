package com.amigo.vo.member;

import java.util.Collection;
import java.util.Date;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

/*시큐리티 적용 클래스*/
public class MemberVO implements UserDetails{
	/**
	 * 직렬화 코드추가
	 */
	private static final long serialVersionUID = 7605502655060729803L;
	
	private String username;
	private String password;
	private String mName;
	private String mTel;
	private String mEmail;
	private String mGender;
	private Date mRegedate;
	private int mAge;
	/*사용자가 가진 권한 전부 저장할 변수*/
	private Collection<? extends GrantedAuthority> authorities;
	
	
	public void setAuthorities(Collection<GrantedAuthority> authorities) {
		this.authorities = authorities;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return this.authorities;
	}
	
	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return this.username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return this.password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmTel() {
		return mTel;
	}
	public void setmTel(String mTel) {
		this.mTel = mTel;
	}
	public String getmEmail() {
		return mEmail;
	}
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	public String getmGender() {
		return mGender;
	}
	public void setmGender(String mGender) {
		this.mGender = mGender;
	}
	public Date getmRegedate() {
		return mRegedate;
	}
	public void setmRegedate(Date mRegedate) {
		this.mRegedate = mRegedate;
	}
	public int getmAge() {
		return mAge;
	}
	public void setmAge(int mAge) {
		this.mAge = mAge;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public String toString() {
		return "MemberVO [username=" + username + ", password=" + password + ", mName=" + mName + ", mTel=" + mTel
				+ ", mEmail=" + mEmail + ", mGender=" + mGender + ", mRegedate=" + mRegedate + ", mAge=" + mAge
				+ ", authorities=" + authorities + "]";
	}
	
	
}
