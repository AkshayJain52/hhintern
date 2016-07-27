package com.resume.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import java.net.URL;
import java.net.URLConnection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class mastercontroller {
	
	public String url,First_name;
	String filename,filename1;
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome() {		
		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "index";
	}
	
	
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String welcomeName( HttpServletRequest request) throws IOException {
				
		url= request.getRequestURL()+"?"+request.getQueryString();
		First_name=request.getParameter("First_name");
				
		return "welcome";
	}
	
	
	@RequestMapping(value= "/download_pdf",method = RequestMethod.GET)
	public String downloadCSV(HttpServletRequest request,HttpServletResponse response) throws IOException {

		filename="Resume_"+First_name.toUpperCase()+".pdf";
		
		ClassLoader classLoader = getClass().getClassLoader();
		File file = new File(classLoader.getResource("wkhtmltopdf.exe").getFile());
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

		@RequestMapping(value= "/download_docx",method = RequestMethod.GET)
       	public String downloadCSV2(HttpServletRequest request,HttpServletResponse response) throws IOException {

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