package com.resume.validator;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.Scanner;

import com.lowagie.text.DocumentException;

public class Htmlparser {

	public void js() throws DocumentException {

			
			
			try {
				 String url,url2,url3;
			        @SuppressWarnings("resource")
					Scanner inn = new Scanner(System.in);
			        
			       
			        url = request.getRequestURI();

			        
			        url2 = resume.pdf;//url or location of pdf to which it to be stored
					
			      
			    url3 = resume.doc;//url or location of doc to which it to be stored
			        
				
		      
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
	            System.out.println("success...");// display message to console
	          
	            
	            
	         
	            
	            
	            
	  
	            // the module for html page to pdf document;
	            try
	            {
	                String htmlFilePath = url;
	                String pdfFilePath = url2;
	                ProcessBuilder pb = new ProcessBuilder("C:/Users/HHEXUSER/Desktop/hhintern/HTML-TO-doc/wkhtmltopdf.exe", htmlFilePath, pdfFilePath);
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
	                System.out.println("coming-->"+e.getMessage() );
	            }
	                 
                          
	            
	            
	            
			} catch (IOException e) {
				//e.printStackTrace();
			}
			
			
	}
			
}