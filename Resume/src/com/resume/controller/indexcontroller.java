package com.resume.controller;



import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


//import com.resume.validator.indexvalidator;



//this a controller class use to check the validation using indexvalidation class stored in com.resume.validator package
@Controller
public class indexcontroller {
	// method use to target the url when welcome come to url it will first execute  
	@RequestMapping (value = "/welcome", method = RequestMethod.GET)
	 public String doLogin(/*@Valid indexvalidator user,*/ BindingResult result) {
		if (result.hasErrors()) {
			
			
						
		    return "index";
		} 
		
		return "welcome";
        
}
	}
