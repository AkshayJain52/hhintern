package com.mkyong.controller;

import java.util.Hashtable;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class indexvalidation {
	private Hashtable<String, String> errors;
	@NotNull
	@Size(min=2, max=30)
	private String First_name;
	@NotNull
	private String Family_name;
	@NotEmpty(message = " plz enter the email_id id")
	@Email
	private String email_id ;
	@NotNull
	private String phone_no ;
	String error="false";
	public String validate() {
	 if (First_name.equals("")) {
	      errors.put("firstName","Please enter your first name");
	      First_name="";
	      error="true";  
	    }
	    if (Family_name.equals("")) {
	      errors.put("Family_name","Please enter your last name");
	      Family_name="";
	      error="true";
	    }
	    if (email_id.equals("") || (email_id.indexOf('@') == -1)) {
	      errors.put("email_id","Please enter a valid email_id address");
	      email_id="";
	      error="true";
	    }
	    if (phone_no.equals("")) {
	      errors.put("phone_no","Please enter a phone_no");
	      phone_no="";
	      error="true";
	    }
		return error;
	   
	    
	}

}
