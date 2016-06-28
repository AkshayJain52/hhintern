package com.test;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class HomeController {
 
	    @Autowired
	    private EmployeeDao EmployeeDao;
	     
	    @RequestMapping(value="/")
	    public ModelAndView home() {
	        List<Employee> listUsers = EmployeeDao.list();
	        ModelAndView model = new ModelAndView("home");
	        model.addObject("userList", listUsers);
	        return model;
	    }
	     
	}

