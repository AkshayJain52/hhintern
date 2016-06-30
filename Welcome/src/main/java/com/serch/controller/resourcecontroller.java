package com.serch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;

@Controller
public class resourcecontroller {
@RequestMapping("/hello")
	public ModelAndView hello(){
	String sh = " ";
	System.out.println(" ");
		return new ModelAndView(sh);
}	
}
