package com.amigo.util.security;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;

/*인증되지 않은 유저가 접근하고자 할떄 실행되는 핸들러*/
public class InterceptFailureHandler implements AuthenticationEntryPoint {

	@Override
	public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException arg2)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html; charset=EUC-KR");
		PrintWriter out = response.getWriter();
		
		out.println("<script>alert('로그인을 하셔야 이용가능합니다.'); history.go(-1);</script>");

		out.flush();

	}

}
