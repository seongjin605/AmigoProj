package com.controller.member;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.member.dto.MemberDTO;
import com.service.member.MemberService;

@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Inject
	private MemberService memberService;
	SqlSession sqlSession;
	
	//회원 가입 페이지 이동
	@RequestMapping("join_first")
	public void joinFirst() {
		logger.info("join_first.jsp 요청");
	}
	
	//회원 등록
	@RequestMapping(value="join_second",method=RequestMethod.GET)
	public String joinSecond() throws Exception {
		logger.info("join_Second.jsp 요청");
		return "join_second";
		/*return "redirect:join_success";*/
	}
	@RequestMapping(value="join_success",method=RequestMethod.POST)
	public String joinSuccess(MemberDTO memberDTO) {
		memberService.register(memberDTO);
		logger.info("join_success.jsp 요청");
		return "join_success";
	}
	@RequestMapping(value="memberInfo",method=RequestMethod.GET)
	public String memberInfo(MemberDTO memberDTO) throws Exception {
		logger.info("memberInfo.jsp 요청");
		
		return "memberInfo";
	}
	@RequestMapping(value="memberInfoCheck",method=RequestMethod.POST)
	public ModelAndView memberInfoCheck(MemberDTO memberDTO,HttpSession session) throws Exception {
		logger.info("memberInfoCheck() 요청");
		
		ModelAndView mav=new ModelAndView();
		
		if(session!=null) {
			memberService.passwordCheck(memberDTO);
			logger.info("마이페이지 비밀번호 일치");
			mav.setViewName("memberInfo");
		}
		return mav;
	}
}
