package com.amigo.controller.club;
import java.security.Principal;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.amigo.service.club.ClubService;
import com.amigo.util.file.FileUpLoad;


@Controller
@RequestMapping("/club")
public class ClubController {

	@Inject
	private ClubService service;
	
	
	/*select박스 아작스요청 DB에서 2번째 selectBox에 들어갈 값을 List반환*/
	@ResponseBody   
	@RequestMapping(value="/selectBox.amg",method=RequestMethod.POST)
	public List<String> selectBox(@RequestParam("area") String area) {

		return service.selectSubArea(area);
	}
	
	@RequestMapping(value="/clubMake.amg",method= {RequestMethod.GET,RequestMethod.POST})
	public String clubMake(Principal principal) {
		System.out.println("유저체크 :"+principal.getName());
		return "/club/club_make";
	}
	
	@RequestMapping(value="/insertClub.amg",method=RequestMethod.POST)
	public String insertClub(@RequestParam("cpic") MultipartFile file,
						   MultipartHttpServletRequest request,
						   RedirectAttributes rdr,
						   Authentication authencation,
						   @RequestParam Map<String,Object> map) {
		/*파일업로드후 경로반환*/
		FileUpLoad ful = new FileUpLoad();
		String picName = ful.fileForm(file,request);
		/*------------*/
		
		/*동호회 만드는 사람의 아이디 확인(동호회장)*/
		map.put("username", authencation.getName());
		
		/*업로드된 파일이 저장된 경로랑,사용자가입력한 정보를 저장한 map객체전달*/
		int ch = service.insertClub(map, picName);
		String redirectPath = "";
		
		if(ch > 0) {
			rdr.addAttribute("msg", "success" );
			rdr.addAttribute("picName", picName);
			/*동호회 이름저장*/
			rdr.addAttribute("cName",(String)map.get("cTitle"));
			redirectPath="/club/club.amg";
		}else {
			rdr.addAttribute("msg","fail");
			redirectPath="/club/clubMake.amg";
		}
		return "redirect:"+redirectPath;
	}
	
	@RequestMapping("/club.amg")
	public String club(@RequestParam(value="msg",defaultValue="") String msg,
					   @RequestParam(value="picName",defaultValue="") String picName,
					   @RequestParam(value="cName",defaultValue="") String cName,
					   Model model) {
		
		model.addAttribute("msg", msg);
		model.addAttribute("picName", picName);
		model.addAttribute("cName",cName);
		return "club/club";
	}
	
	
	@RequestMapping("/clubRead.amg/{num}")
	public String clubReead(@PathVariable("num") int num) {
		
		return "club/club";
	}
	
	@RequestMapping("/clubSearch.amg")
	public ModelAndView clubSearch(@RequestParam(value="keyword",defaultValue="") String keyword) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("keyword", keyword);
		mav.setViewName("club/club_serach");
		
		return mav;
	}

}
