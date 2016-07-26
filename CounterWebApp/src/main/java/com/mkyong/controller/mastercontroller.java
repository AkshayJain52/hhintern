package com.mkyong.controller;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import java.util.Map;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class mastercontroller {

	public String url;
	String filename = "Resume.pdf";
	String filename1 = "Resume.docx";
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome() {
			

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "index";

	}
	private static final Logger logger = LoggerFactory.getLogger(mastercontroller.class);
	//private Map<String, indexvalidator> indexs;
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String welcomeName(@Valid indexvalidator indexvalidator,BindingResult bindingResult, Model model,HttpServletRequest request) throws IOException {
		if (bindingResult.hasErrors()) {
		logger.info("Returning index.jsp page");
			return "index";
		}
		//logger.info("Returning welcome.jsp page");
		//model.addAttribute("indexvalidator", indexvalidator);
		url= request.getRequestURL()+"?"+request.getQueryString();
		System.out.println(url);
		
		
		return "welcome";

	}
	@RequestMapping(value= "/downloadpdf",method = RequestMethod.GET)
	public String downloadCSV(HttpServletRequest request,HttpServletResponse response) throws IOException {
      
	//pdf convertor code which need .exe file to run the code but .exe file is inc. the ram consumption 
	ProcessBuilder pb = new ProcessBuilder( "C:/Users/HHEXUSER/Desktop/hhintern/CounterWebApp/wkhtmltopdf.exe",
  		  url,filename);
    pb.redirectErrorStream(true);
    
    BufferedReader inStreamReader = new BufferedReader(new InputStreamReader(pb.start().getInputStream()));
   System.out.println(url);
   
           while(inStreamReader.readLine() != null)
            {
                
               inStreamReader.readLine();
            }
          
           response.setContentType("pdf/docx");  
           PrintWriter out = response.getWriter();  
              
           String filepath = "C:/Users/HHEXUSER/Desktop/";   
           response.setContentType("APPLICATION/OCTET-STREAM");   
           response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");  
             
           FileInputStream fileInputStream = new FileInputStream(filepath + filename);          
           int i1;   
           while ((i1=fileInputStream.read()) != -1) {  
           out.write(i1);   
           }   
           fileInputStream.close();
           out.close();
		return "index";  
           
	} 
          
		@RequestMapping(value= "/downloaddocx",method = RequestMethod.GET)
       	public String downloadCSV2(HttpServletRequest request,HttpServletResponse response) throws IOException {
			
			
			
			// get the html code of the html page;
			 URL yahoo = new URL(url);
			  URLConnection yc = yahoo.openConnection();
			  BufferedReader in1 = new BufferedReader(new InputStreamReader(
			         yc.getInputStream(), "UTF-8"));  //geting the code into buffered reader
			 
			  
			  //geting code into word file
			  String inputLine;
			  StringBuilder a = new StringBuilder();
			  while ((inputLine = in1.readLine()) != null)
			     a.append(inputLine);
			  FileOutputStream fout=new FileOutputStream(filename1);
			  byte b[]=a.toString().getBytes();//converting string into byte array  
			  
			  fout.write(b);
			  fout.close();
			  in1.close();  
           response.setContentType("docx/pdf");  
           PrintWriter out1 = response.getWriter();  
             
           String filepath1 = "C:/Users/HHEXUSER/Desktop/";   
           response.setContentType("APPLICATION/OCTET-STREAM");   
           response.setHeader("Content-Disposition","attachment; filename=\"" + filename1 + "\"");   
             
           FileInputStream fileInputStream1 = new FileInputStream(filepath1 + filename1);  
                       
           int i1;   
           while ((i1=fileInputStream1.read()) != -1) {  
           out1.write(i1);   
           }   
           fileInputStream1.close();   
           out1.close();   

 

		return "index";
	}
	

}