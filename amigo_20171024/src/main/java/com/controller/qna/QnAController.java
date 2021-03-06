package com.controller.qna;

import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.qna.dto.QnADTO;
import com.service.qna.QnaService;

@Controller
public class QnAController {

	private static final Logger logger=LoggerFactory.getLogger(QnAController.class);
	
	@Inject
	private QnaService service;
	
	@RequestMapping(value="qna", method=RequestMethod.GET)
	public ModelAndView qna() {
		
		logger.info("=================qna리스트 띄우기=====================");
		
		ArrayList<QnADTO> list = (ArrayList<QnADTO>) service.selectQna();
		logger.info("=================qna리스트 만들기=====================");
		
		ModelAndView mav = new ModelAndView();
		logger.info("=================qna리스트 항아리=====================");
		mav.addObject("list", list);		
		logger.info("=================qna리스트 담기=====================");
		mav.setViewName("qna");
		logger.info("=================qna리스트 어디로?=====================");
		return mav;
	}
	
	@RequestMapping(value="qna", method=RequestMethod.POST)
	public String writeQna(@ModelAttribute QnADTO qna) throws Exception{
		
		logger.info("=================QnA글쓰기=============");
		service.insertQna(qna);
		logger.info("==============QnA글쓰기끝=======================");
		
		return "redirect:qna";
		 
	}
	
//	
	
	@RequestMapping(value="qna_sub", method=RequestMethod.GET)
	public ModelAndView viewQna(@RequestParam("num") int num) throws Exception{
		
		if(logger.isDebugEnabled()) {
			logger.debug("num="+num);//-1
		}
		
		System.out.println("VIEW QNA num=========================="+num);
		logger.info("===================문의내역상세보기======================");
		QnADTO viewQna = (QnADTO)service.viewQna(num);
		logger.info("===================문의내역1======================");
		ModelAndView mav = new ModelAndView();
		logger.info("===================문의내역2======================");
		mav.addObject("viewQna",viewQna);
		logger.info("===================문의내역3======================");
		mav.setViewName("qna_sub");
		logger.info("===================보인다뿅!======================");
		
		return mav;
	}
	
	@RequestMapping("qna_delete")
	public String deleteQna(@RequestParam("num") int num) throws Exception{
		
		System.out.println("===================delete====================="+num);
		logger.info("===================삭제시작=========================");
		service.deleteQna(num);
		logger.info("===================끝===========================");
		
		return  "redirect:qna";
	}
	
	@RequestMapping(value="qna_upd", method=RequestMethod.GET)
	public ModelAndView updateQna(@RequestParam("num") int num) throws Exception{
		
		System.out.println("updateQna 수정하러 가자=========================="+num);
		logger.info("===================문의내역상세보기======================");
		QnADTO viewQna = (QnADTO)service.viewQna(num);
		logger.info("===================문의내역1======================");
		ModelAndView mav = new ModelAndView();
		logger.info("===================문의내역2======================");
		mav.addObject("viewQna",viewQna);
		logger.info("===================문의내역3======================");
		mav.setViewName("qna_upd");
		logger.info("===================보인다뿌잉!======================");
		 
		return mav;
	}
	
	@RequestMapping(value="qna_upd", method=RequestMethod.POST)
	public String updateForm(@ModelAttribute QnADTO qna) throws Exception{
		
		logger.info("=================QnA글수정 =============");
		System.out.println("updateForm메서드 호출=>"+qna);
		service.updateQna(qna);
		logger.info("==============QnA글수정끝=======================");
		
		return "redirect:qna";
	}
	


}
