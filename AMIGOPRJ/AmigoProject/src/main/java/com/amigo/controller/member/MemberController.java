package com.amigo.controller.member;

import java.security.Principal;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.amigo.service.member.MemberService;
import com.amigo.vo.member.MemberVO;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Inject
	private MemberService service;

	/*로그인폼*/
	@RequestMapping("/login.amg")
	public String login(HttpServletRequest request,	Model model,
						@RequestParam(value="state",defaultValue="success") String state) {
		System.out.println("리퍼:"+request.getHeader("referer"));
		
		model.addAttribute("state", state);
		
		if(state.equals("success"))
			request.getSession().setAttribute("prevpage", request.getHeader("referer"));
		return "login";
	}
	
	/*첫번째 회원가입폼(약관동의)*/
	@RequestMapping("/joinFirst.amg")
	public String joinFirst() {
		return "join/join_first";
	}
	
	/*두번째 정보 입력*/
	@RequestMapping("/joinSecond.amg")
	public String joinSecond() {
		return "join/join_second";
	}
	
	/*로그인 성공했을떄 띄워주는 페이지*/
	@RequestMapping(value = "/joinSuccess.amg",method=RequestMethod.POST)
	public String joinSuccess(@RequestParam("authority") String authority,MemberVO member) {
		service.insertMember(member, authority);
		return "join/join_success";
	}
	
	/*회원정보보기*/
	@RequestMapping(value ="/myPage.amg", method=RequestMethod.GET)
	public String myPage(Principal principal,Model model ) {
		MemberVO member = service.selectMember(principal.getName());
		model.addAttribute("member", member);
		return "user_page";
	}

}
