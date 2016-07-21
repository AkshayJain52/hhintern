package com.resume.controller;



import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.resume.validator.indexvalidator;

//this a controller class use to check the validation using indexvalidation class stored in com.resume.validator package
@Controller
public class indexcontroller {
	HttpServletRequest request;
	// method use to target the url when welcome come to url and will first execute  
	@RequestMapping (value = "/welcome", method = RequestMethod.POST)
	 public String doLogin(@Valid indexvalidator user, BindingResult result) {
		if (result.hasErrors()) {
			
		    return "index";
		} 
		
		String url =request.getRequestURL()+"?"+request.getQueryString();
		System.out.println(url);
		
		return "welcome";
        
}
	}
