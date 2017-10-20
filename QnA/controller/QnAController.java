package com.controller.qna;

import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
		
		return "qna";
		
	}
	
	

}
