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
	
	
	/*select�ڽ� ���۽���û DB���� 2��° selectBox�� �� ���� List��ȯ*/
	@ResponseBody   
	@RequestMapping(value="/selectBox.amg",method=RequestMethod.POST)
	public List<String> selectBox(@RequestParam("area") String area) {

		return service.selectSubArea(area);
	}
	
	@RequestMapping(value="/clubMake.amg",method= {RequestMethod.GET,RequestMethod.POST})
	public String clubMake(Principal principal) {
		System.out.println("����üũ :"+principal.getName());
		return "/club/club_make";
	}
	
	@RequestMapping(value="/insertClub.amg",method=RequestMethod.POST)
	public ModelAndView insertClub(@RequestParam("cpic") MultipartFile file,
						   MultipartHttpServletRequest request,
						   @RequestParam Map<String,Object> map) {
		/*���Ͼ��ε��� ��ι�ȯ*/
		FileUpLoad ful = new FileUpLoad();
		String picName = ful.fileForm(file,request);
		/*------------*/
		
		/*���ε�� ������ ����� ��ζ�,����ڰ��Է��� ������ ������ map��ü����*/
		int ch = service.insertClub(map, picName);
	
		ModelAndView mav = new ModelAndView();
		
		if(ch > 0) {
			mav.setViewName("/club/club");
			mav.addObject("picName", picName);
			mav.addObject("success","�����մϴ�! "+map.get("cTitle")+"��(��) �����Ǿ����ϴ�." );
		}else {
			mav.addObject("fail","������ �߻��Ͽ����ϴ�. �ٽ��������ּ���");
			mav.setViewName("/club/insertChub.amg");
		}
		
		return mav;
	}

}
