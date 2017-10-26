package com.amigo.util.security;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

/*로그인 성공후 실행되는 핸들러*/
public class LoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

	private static final Logger logger = LoggerFactory.getLogger(LoginSuccessHandler.class);
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		logger.info("Login Success");
		logger.info("유저 아이디 : {}",authentication.getName());
		logger.info("유저 권한: {}",authentication.getAuthorities().toString());
		logger.info("유저 Details : {}",authentication.getDetails());
		logger.info("유저 Principal : {}",authentication.getPrincipal());
		
		
		System.out.println("uri확인:"+request.getRequestURI());
		for(GrantedAuthority a : authentication.getAuthorities()){
			logger.info(a.getAuthority());
		}

		HttpSession session = request.getSession();
		
		if(session != null) {
			String path = (String) session.getAttribute("prevpage");
			
			if(path != null) {
				session.removeAttribute("prevpage");
				getRedirectStrategy().sendRedirect(request, response, path);
			}else {
				super.onAuthenticationSuccess(request, response, authentication);
			}
		} else {
			super.onAuthenticationSuccess(request, response, authentication);
		}
	}

}
