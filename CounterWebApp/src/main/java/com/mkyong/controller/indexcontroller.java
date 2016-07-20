package com.mkyong.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller
public class indexcontroller {
	
	HttpServletRequest req;
	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome() {
			

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "index";

	}
	private static final Logger logger = LoggerFactory.getLogger(indexcontroller.class);
	private Map<String, indexvalidator> indexs = null;
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String welcomeName(@Valid indexvalidator indexvalidator,BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()) {
			logger.info("Returning index.jsp page");
			return "index";
		}
		logger.info("Returning welcome.jsp page");
		model.addAttribute("indexvalidator", indexvalidator);
		indexs.put(indexvalidator.getEmail_id(), indexvalidator);
		return "welcome";

	}

}