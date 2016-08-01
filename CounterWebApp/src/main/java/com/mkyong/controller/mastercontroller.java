package com.mkyong.controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.validation.Valid;

import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;
import org.jdom2.output.XMLOutputter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.pdf.PdfWriter;

import com.itextpdf.tool.xml.XMLWorkerHelper;

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
		
		
		//Validation code start
		
		
		/*indexDaoImpl im = new indexDaoImpl();
		im.save(indexvalidator);
		
		
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
		
		email_id = request.getParameter("email_id");
		indexvalidation iv = new indexvalidation();
		String error = iv.validate();
		try{
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
	// validation cod 2 start
	/*
	@RequestMapping(method = RequestMethod.GET)
	public String displayCustomerForm(ModelMap model) {

		model.addAttribute("indexvalidator", new indexvalidator());
		return "index";

	}
	*/
	//response body for handling the download of pdf
	@RequestMapping(value= "/download_pdf",method = RequestMethod.GET)
	public String downloadpdf(HttpServletRequest request,HttpServletResponse response) throws JDOMException, DocumentException, IOException{

		filename="Resume_"+First_name.toUpperCase()+".pdf";
    		
    		//give the user downloaded file
          
    try {
		   //----------------------- HTML CREATTION ------------------------
		   // get URL content
    		URL yahoo = new URL(url);
		   URLConnection conn = yahoo.openConnection();
		   
		   // open the stream and put it into BufferedReader
		   BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		   String inputLine;
		 
		   //save to this filename
		   String f1 = "temp.html";
		   File file1 = new File(f1);
		   if (!file1.exists()) {
		    file1.createNewFile();
		   }
		   //use FileWriter to write file
		   FileWriter fw = new FileWriter(file1.getAbsoluteFile());
		   BufferedWriter bw = new BufferedWriter(fw);
		   while ((inputLine = br.readLine()) != null) {
		    bw.write(inputLine);
		   }
		   bw.close();
		   br.close();
		   //----------------------- HTML CREATTION ------------------------
		   
		   //----------------------- HTML TO XML CREATTION ------------------------   
		   FileWriter fwOutXml =null;
		   FileReader frInHtml=null;
		   BufferedWriter bwOutXml =null;
		   BufferedReader brInHtml=null;
		   frInHtml = new FileReader("temp.html");
		      brInHtml = new BufferedReader(frInHtml);
			@SuppressWarnings("deprecation")
			SAXBuilder saxBuilder = new SAXBuilder("org.ccil.cowan.tagsoup.Parser", false);
		      org.jdom2.Document jdomDocument = saxBuilder.build(brInHtml);
		      XMLOutputter outputter = new XMLOutputter();
		   
		      outputter.output(jdomDocument, System.out);
		         fwOutXml = new FileWriter("xml.xml");
		         bwOutXml = new BufferedWriter(fwOutXml);
		         outputter.output(jdomDocument, bwOutXml);
		         System.out.flush();
		         fwOutXml.flush();
		         fwOutXml.close();
		         bwOutXml.close();
		           //----------------------- HTML TO XML CREATTION ------------------------   
		       
		         //----------------------- XML TO PDF CREATTION ------------------------   
		         Document document = new Document();
		         PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(filename));
		         document.open();
		         XMLWorkerHelper.getInstance().parseXHtml(writer, document,new FileInputStream("xml.xml"));        
		         document.close();
		        
		         //----------------------- XML TO PDF CREATTION ------------------------ 
		         
		         File xml_temp_file = new File("xml.xml");
		         xml_temp_file.delete();
		         File html_temp_file = new File("temp.html");
		         if(html_temp_file.delete()){
		        	 System.out.println("ok");
		         }
		         else{
		        	 System.out.println("noooo");
		         }
		   
		 
		  } catch (MalformedURLException e1) {
		   e1.printStackTrace();
		  } catch (IOException e) {
		   e.printStackTrace();
		  }
		 
    response.setContentType("pdf/docx");
    PrintWriter out1 = response.getWriter();
    response.setContentType("APPLICATION/OCTET-STREAM");
    response.setHeader("Content-Disposition","attachment; filename=\"" +filename+ "\"");   

    FileInputStream fileInputStream1 = new FileInputStream(filename);

    int i1;
    while ((i1=fileInputStream1.read()) != -1) {
    out1.write(i1);
    }
    fileInputStream1.close();
    out1.close();
    
    
 // delete the file by giving the file to user
    try{
   		
   		File file1 = new File(filename);
   		if(file1.delete());
   	  }catch(Exception e)
    {
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
          		if(file.delete());
          	  }catch(Exception e){
          		  						e.printStackTrace();
          						 }
		return "index";
	}
	
}