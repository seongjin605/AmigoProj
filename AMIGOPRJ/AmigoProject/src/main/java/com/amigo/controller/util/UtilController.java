package com.amigo.controller.util;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UtilController {

	@RequestMapping("/amigoService.amg")
	public String amigoService() {
		return "amigo_service";
	}
	
	@RequestMapping("/footerInform.amg")
	public String footerInform() {
		return "footer/footer_inform";
	}
	
	@RequestMapping("/footerAgree.amg")
	public String footerAgree() {
		return "footer/footer_agree";
	}
	
	@RequestMapping("/footerEmail.amg")
	public String footerEmail() {
		return "footer/footer_email";
	}
	
	@RequestMapping("/footerLegal.amg")
	public String footerLegal() {
		return "footer/footer_legal";
	}
}
