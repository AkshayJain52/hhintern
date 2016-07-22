package com.mkyong.controller;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class downloadcontroller {
	
	HttpServletResponse response;
	// Spring uses InternalResourceViewResolver and return back download.jsp
	@RequestMapping(value= "/download",method = RequestMethod.GET)
	/*public void foo(@PathVariable("id") int id, HttpServletRequest request) {
	    String restOfTheUrl = (String) request.getAttribute(
	        HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
	    
	}*/
		
	public String downloadCSV(HttpServletRequest request) throws IOException {

		String url,url2,url3;
	 url = request.getRequestURL().toString()+ "?" + request.getQueryString();//url of the html page

    url2 = "resume.pdf";//url or location of pdf to which it to be stored
		
     url3 = "resume.doc";//url or location of doc to which it to be stored
      
	
  
  //get the html code of the html page;
  URL yahoo = new URL(url);
  URLConnection yc = yahoo.openConnection();
  BufferedReader in = new BufferedReader(new InputStreamReader(
          yc.getInputStream(), "UTF-8"));  //geting the code into buffered reader
 
 /* 
  //geting code into word file
  String inputLine;
  StringBuilder a = new StringBuilder();
  //while ((inputLine = in.readLine()) != null)
   //   a.append(inputLine);
  FileOutputStream fout=new FileOutputStream(url3);
  
  String ar = a.toString();
  
  byte b[]=ar.getBytes();//converting string into byte array  
  
  fout.write(b);
  fout.close();
  in.close();
 /* try {
      String fileName = request.getParameter("fileName");
      File file = new File("C:/Users/HHEXUSER/Desktop/"+"resume.doc");
      InputStream in1 = new BufferedInputStream(new FileInputStream(file));

      response.setContentType("application/xlsx");
      response.setHeader("Content-Disposition", "attachment; filename="+fileName+".xlsx"); 


      ServletOutputStream out = response.getOutputStream();
      IOUtils.copy(in1, out);
      response.flushBuffer();
  } catch (Exception e) {
      e.printStackTrace();
  }
  //code for download the word file
 /* File file = new File("C:/Users/HHEXUSER/Desktop/Resume.doc");
  InputStream is = new FileInputStream(file);

  // MIME type of the file
  response.setContentType("application/octet-stream");
  // Response header
  response.setHeader("Content-Disposition", "attachment; filename=\""
          + file.getName() + "\"");
  // Read from the file and write into the response
  OutputStream os = response.getOutputStream();
  byte[] buffer = new byte[1024];
  int len;
  while ((len = is.read(buffer)) != -1) {
      os.write(buffer, 0, len);
  }
  os.flush();
  os.close();
  is.close();
  //System.out.println("success...");// display message to console

 
  
 */

  
 /* 
  

  // the module for html page to pdf document;
  try
{
      String htmlFilePath = url;
      String pdfFilePath = url2;
      ProcessBuilder pb = new ProcessBuilder( "C:/Users/HHEXUSER/Desktop/hhintern/CounterWebApp/wkhtmltopdf.exe",
    		     htmlFilePath, pdfFilePath);
      pb.redirectErrorStream(true);
      Process process = pb.start();
      BufferedReader inStreamReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
     
      String line = inStreamReader.readLine();
     
              while(line != null)
              {
                  
                  line = inStreamReader.readLine();
              }
              //System.out.println("success");
}
catch(Exception e)
{
      //System.out.println("coming-->"+e.getMessage() );
  return "welcome";
}

*/
		return "download";
	}
}