package com.mkyong.controller;

import java.util.Hashtable;

public class indexvalidation {
	private Hashtable<String, String> errors;
	
	
	public String validate() {
		indexvalidator iv = new indexvalidator();
		String error="false";
	 if (iv.getFirst_name().equals("")) {
	      errors.put("firstName","Please enter your first name");
	      iv.setFirst_name("");
	      error="true";  
	    }
	    if (iv.getFamily_name().equals("")) {
	      errors.put("Family_name","Please enter your last name");
	      iv.setFamily_name("");
	      error="true";
	    }
	    if (iv.getEmail_id().equals("") || (iv.getEmail_id().indexOf('@') == -1)) {
	      errors.put("email_id","Please enter a valid email_id address");
	      iv.setEmail_id("");
	      error="true";
	    }
	    if (iv.getPhone_no().equals("")) {
	      errors.put("phone_no","Please enter a phone_no");
	      iv.setPhone_no("");
	      error="true";
	    }
		return error;   
	}
	public Hashtable<String, String> getErrors() {
		return errors;
	}
	
}