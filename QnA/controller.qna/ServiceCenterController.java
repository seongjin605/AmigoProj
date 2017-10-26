package com.amigo.controller.qna;

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

import com.amigo.service.qna.QnaService;
import com.amigo.vo.qna.QnADTO;


@Controller
@RequestMapping("/qna")
public class ServiceCenterController {
	private static final Logger logger = LoggerFactory.getLogger(ServiceCenterController.class);

	@Inject
	private QnaService service;

	/*
	 * @RequestMapping("qna") public void qna() throws Exception{
	 * logger.info("check"); }
	 */

	@RequestMapping(value = "/qna.amg", method = RequestMethod.GET)
	public ModelAndView qna() {
		ArrayList<QnADTO> list = (ArrayList<QnADTO>) service.selectQna();

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("/qna/qna");	
		
		return mav;
	}

	@RequestMapping(value = "/qna.amg", method = RequestMethod.POST)
	public String writeQna(@ModelAttribute QnADTO qna) throws Exception {
		System.out.println("==========================writeQna===========================");
		service.insertQna(qna);
		return "redirect:/qna/qna";
	}

	@RequestMapping(value = "/qna_sub.amg", method = RequestMethod.GET)
	public ModelAndView viewQna(@RequestParam("num") int num) throws Exception {
		QnADTO viewQna = (QnADTO) service.viewQna(num);

		ModelAndView mav = new ModelAndView();
		mav.addObject("viewQna", viewQna);
		mav.setViewName("/qna/qna_sub");

		return mav;
	}

	@RequestMapping("/qna_delete.amg")
	public String deleteQna(@RequestParam("num") int num) throws Exception {
		service.deleteQna(num);

		return "redirect:qna/qna";
	}

	@RequestMapping(value = "/qna_upd.amg", method = RequestMethod.GET)
	public ModelAndView updateQna(@RequestParam("num") int num) throws Exception {
		logger.info("================================updateQna===========================================");
		QnADTO viewQna = (QnADTO) service.viewQna(num);
		ModelAndView mav = new ModelAndView();
		mav.addObject("viewQna", viewQna);
		mav.setViewName("/qna/qna_upd");

		return mav;
	}

	@RequestMapping(value = "/qna_upd.amg", method = RequestMethod.POST)
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
