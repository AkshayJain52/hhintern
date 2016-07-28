package com.mkyong.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;
//import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class mastercontroller{

	public String url,First_name,email_id;
	String filename,filename1;
	//Response body for handling the first page
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome() {
		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "index";
	}
	
	private static final Logger logger = LoggerFactory.getLogger(mastercontroller.class);
	//private Map<String, indexvalidator> indexs;
	//response body for handling the page coming from first page
	@ModelAttribute
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String welcomeName(@Valid indexvalidator indexvalidator,BindingResult bindingResult, Model model,HttpServletRequest request) throws IOException {
		if (bindingResult.hasErrors()) {
		logger.info("Returning index.jsp page");
			return "index";
		}
		logger.info("Returning welcome.jsp page");
		model.addAttribute("indexvalidator", indexvalidator);
		url= request.getRequestURL()+"?"+request.getQueryString();
		First_name=request.getParameter("First_name");
		//indexDaoImpl im = new indexDaoImpl();
		//im.save(indexvalidator);
		
		//Validation code start
        boolean error = false;
         
        System.out.println(indexvalidator); //Verifying if information is same as input by user
         
        if(indexvalidator.getFirst_name().isEmpty()){
            bindingResult.rejectValue("First_name", "error.firstName");
            error = true;
        }
         
        if(indexvalidator.getFamily_name().isEmpty()){
            bindingResult.rejectValue("Family_name", "error.lastName");
            error = true;
        }
         
        if(indexvalidator.getEmail_id().isEmpty()){
            bindingResult.rejectValue("email_id", "error.email");
            error = true;
        }
         
		
		if(error){
			return "index";
		}
		//email_id = request.getParameter("email_id");
		//indexvalidation iv = new indexvalidation();
		//String error = iv.validate();
		/*try{
		indexs.put(indexvalidator.getEmail_id(),indexvalidator);
		}
		catch (Exception e) {
		}
		if(First_name.equals(null)||First_name.equals(""))
		{
			return"index";
		}
		if(error.equals(true))
		{
			return"index";
		}*/
		return "welcome";
	}
	//response body for handling the download of pdf
	@RequestMapping(value= "/download_pdf",method = RequestMethod.GET)
	public String downloadpdf(HttpServletRequest request,HttpServletResponse response) throws IOException  {

		filename="Resume_"+First_name.toUpperCase()+".pdf";
		ClassLoader classLoader = getClass().getClassLoader();
		File file = new File(classLoader.getResource("pdf.exe").getFile());
		String absolutePath = file.getAbsolutePath();
		
	ProcessBuilder pb = new ProcessBuilder( absolutePath,url,filename);
    pb.redirectErrorStream(true);
    
    BufferedReader inStreamReader = new BufferedReader(new InputStreamReader(pb.start().getInputStream()));
   
    while(inStreamReader.readLine() != null)
            {            
               inStreamReader.readLine();
            }
    		
    		//give the user downloaded file
          
           response.setContentType("pdf/docx");
           PrintWriter out = response.getWriter();     
           response.setContentType("APPLICATION/OCTET-STREAM");   
           response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");  
           System.out.println(filename + " is created!");
           FileInputStream fileInputStream = new FileInputStream(filename);
           int i1;
           while ((i1=fileInputStream.read()) != -1) {  
           out.write(i1);
           }
           fileInputStream.close();
           out.close();
                  
           // delete the file by giving the file to user
           try{
       		
       		File file1 = new File(filename);
       		if(file1.delete()){
       			System.out.println(file1.getName() + " is deleted!");
       		}else{
       			System.out.println("Delete operation is failed.");
       		}
       	   
       	}catch(Exception e){
       		
       		e.printStackTrace();
       		}
		return "index";

	}

		// response body for handling the download of docx
		@RequestMapping(value= "/download_docx",method = RequestMethod.GET)
       	public String downloaddocx(HttpServletRequest request,HttpServletResponse response) throws IOException {

			filename1="Resume_"+First_name.toUpperCase()+".docx";	
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
			  System.out.println(filename1 + " is created!");
			  FileOutputStream fout=new FileOutputStream(filename1);
			  byte b[]=a.toString().getBytes();//converting string into byte array
			  fout.write(b);
			  fout.close();
			  in1.close(); 

			  //give the user downloaded file
		   response.setContentType("docx/pdf");
           PrintWriter out1 = response.getWriter();
           response.setContentType("APPLICATION/OCTET-STREAM");
           response.setHeader("Content-Disposition","attachment; filename=\"" + filename1 + "\"");   

           FileInputStream fileInputStream1 = new FileInputStream(filename1);

           int i1;
           while ((i1=fileInputStream1.read()) != -1) {
           out1.write(i1);
           }
           fileInputStream1.close();
           out1.close();
           
           
        // delete the file by giving the file to user
           try{
          		
          		File file = new File(filename1);
          		if(file.delete()){
          			System.out.println(file.getName() + " is deleted!");
          		}else{
          			System.out.println("Delete operation is failed.");
          		}
          	  }catch(Exception e){
          		  						e.printStackTrace();
          						 }
		return "index";
	}
	
}