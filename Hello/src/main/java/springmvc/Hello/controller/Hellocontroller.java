package springmvc.Hello.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Hellocontroller {
@RequestMapping("/")
public String print(Model mode1){
	mode1.addAttribute("message", "hello");
	return "hello";
	
}
}
