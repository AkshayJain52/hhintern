package com.resume.controller;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class downloadcontroller {
	HttpServletRequest request;
	//controller which trace the url and wait for download
	@RequestMapping(value= "/download",method = RequestMethod.POST)
	 public String downloadCSV() throws IOException {
        
        
 
	try {
		 String url,url2,url3;
	        
	        
	       
	        url = request.getRequestURL()+"?"+request.getQueryString();//url of the html page

	        
	        url2 = "Resume.pdf";//url or location of pdf to which it to be stored
			
	      
	    url3 ="Resume.docx";//url or location of doc to which it to be stored
	        
		
     
       //get the html code of the html page;
       URL yahoo = new URL(url);
       URLConnection yc = yahoo.openConnection();
       BufferedReader in = new BufferedReader(new InputStreamReader(
               yc.getInputStream(), "UTF-8"));  //geting the code into buffered reader        
      
       
       
       
       //geting code into word file
       String inputLine;
       StringBuilder a = new StringBuilder();
       while ((inputLine = in.readLine()) != null)
           a.append(inputLine);
       FileOutputStream fout=new FileOutputStream(url3);  
       
       String ar = a.toString();
       
       byte b[]=ar.getBytes();//converting string into byte array  
       
       fout.write(b); 
       fout.close();
       in.close();         
           
       
       
    
       
       
       

       // the module for html page to pdf document;
       try
       {
           String htmlFilePath = url;
           ProcessBuilder pb = new ProcessBuilder("wkhtmltopdf.exe", htmlFilePath, url2);
           pb.redirectErrorStream(true);
           Process process = pb.start();
           BufferedReader inStreamReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
          
           String line = inStreamReader.readLine();
          
                   while(line != null)
                   {
                       
                       line = inStreamReader.readLine();
                   }
                   System.out.println("success");
       }
       catch(Exception e)
       {
          return("download");
       }
            
                 
       
       
       
	} catch (IOException e) {
		//e.printStackTrace();
		}
	return ("welcome");
	
	
	
	}
	
	
	
	
}
	

