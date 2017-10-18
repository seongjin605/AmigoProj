package com.controller.login;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.member.dto.MemberDTO;
import com.service.login.LoginService;
@Controller
public class LoginController {
	private static final Logger logger=LoggerFactory.getLogger(LoginController.class);
	
	@Inject 
	private LoginService memberService;
	
	//로그인 페이지
	@RequestMapping("login")
	public String login() throws Exception{
		logger.info("login.jsp 요청");
		return "login";
	}

	//로그인 처리
	@RequestMapping(value="loginCheck",method=RequestMethod.POST)
	public ModelAndView loginCheck(@ModelAttribute MemberDTO memberDTO,HttpSession session) {
		
		logger.info("loginCheck.jsp 호출");
		boolean result=memberService.loginCheck(memberDTO, session);
		logger.info("result",result);
		ModelAndView mav=new ModelAndView();
		
		if(result==true) {
			logger.info("Login Success");
			mav.setViewName("index");
		}else {
		logger.info("Login failure");
			mav.setViewName("login");
		}
		return mav;
	}
	
	//로그아웃 처리
	@RequestMapping("logout")
	public ModelAndView logout(HttpSession session) {
		memberService.logout(session);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("login");
		mav.addObject("msg","logout");
		return mav;
	}
	@RequestMapping("register")
	public void register() throws Exception{
		logger.info("check");
	}
}
