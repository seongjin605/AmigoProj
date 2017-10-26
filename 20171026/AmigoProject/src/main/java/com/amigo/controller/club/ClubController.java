package com.amigo.controller.club;

import java.security.Principal;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView insertClub(@RequestParam("cpic") MultipartFile file,
						   MultipartHttpServletRequest request,
						   @RequestParam Map<String,Object> map) {
		/*파일업로드후 경로반환*/
		FileUpLoad ful = new FileUpLoad();
		String picName = ful.fileForm(file,request);
		/*------------*/
		
		/*업로드된 파일이 저장된 경로랑,사용자가입력한 정보를 저장한 map객체전달*/
		int ch = service.insertClub(map, picName);
	
		ModelAndView mav = new ModelAndView();
		
		if(ch > 0) {
			mav.setViewName("/club/club");
			mav.addObject("picName", picName);
			mav.addObject("success","축하합니다! "+map.get("cTitle")+"이(가) 개설되었습니다." );
		}else {
			mav.addObject("fail","오류가 발생하였습니다. 다시진행해주세요");
			mav.setViewName("/club/insertChub.amg");
		}
		
		return mav;
	}

}
