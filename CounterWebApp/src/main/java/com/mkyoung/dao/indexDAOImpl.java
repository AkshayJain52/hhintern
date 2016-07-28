package com.mkyoung.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.mkyong.controller.indexvalidator;

@Repository
public class indexDAOImpl  {

	public List<indexvalidator> getAllEmployees() 
	{
		List<indexvalidator> employees = new ArrayList<indexvalidator>();
		indexvalidator iv = new indexvalidator();
		indexvalidator vo1 = new indexvalidator();
		vo1.setEmail_id(iv.getEmail_id());
		vo1.setFirst_name(iv.getFirst_name());
		vo1.setFamily_name(iv.getFamily_name());
		employees.add(vo1);
		return employees;
	}
}