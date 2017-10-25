package com.controller.java;

import java.util.ArrayList;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.qna.dto.QnADTO;
import com.service.qna.QnaService;

@Controller
public class ServiceCenterController {
	private static final Logger logger = LoggerFactory.getLogger(ServiceCenterController.class);

	@Inject
	private QnaService service;

	/*
	 * @RequestMapping("qna") public void qna() throws Exception{
	 * logger.info("check"); }
	 */

	@RequestMapping(value = "qna", method = RequestMethod.GET)
	public ModelAndView qna() {
		ArrayList<QnADTO> list = (ArrayList<QnADTO>) service.selectQna();

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("qna");
		
		return mav;
	}

	@RequestMapping(value = "qna", method = RequestMethod.POST)
	public String writeQna(@ModelAttribute QnADTO qna) throws Exception {
		service.insertQna(qna);
		return "redirect:qna";
	}

	@RequestMapping(value = "qna_sub", method = RequestMethod.GET)
	public ModelAndView viewQna(@RequestParam("num") int num) throws Exception {
		QnADTO viewQna = (QnADTO) service.viewQna(num);

		ModelAndView mav = new ModelAndView();
		mav.addObject("viewQna", viewQna);
		mav.setViewName("qna_sub");

		return mav;
	}

	@RequestMapping("qna_delete")
	public String deleteQna(@RequestParam("num") int num) throws Exception {
		service.deleteQna(num);

		return "redirect:qna";
	}

	@RequestMapping(value = "qna_upd", method = RequestMethod.GET)
	public ModelAndView updateQna(@RequestParam("num") int num) throws Exception {
		logger.info("================================updateQna===========================================");
		QnADTO viewQna = (QnADTO) service.viewQna(num);
		ModelAndView mav = new ModelAndView();
		mav.addObject("viewQna", viewQna);
		mav.setViewName("qna_upd");

		return mav;
	}

	@RequestMapping(value = "qna_upd", method = RequestMethod.POST)
	public String updateForm(@ModelAttribute QnADTO qna) throws Exception {
		logger.info("================================updateForm===========================================");
		service.updateQna(qna);
		
		return "redirect:qna";
	}

	/// ==========
	@RequestMapping("faq")
	public void faq() throws Exception {
		logger.info("check");
	}
}
