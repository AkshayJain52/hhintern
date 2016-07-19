package HTML_todoc.HTML_TO_doc;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.Scanner;

import org.jsoup.Jsoup;
import org.jsoup.examples.HtmlToPlainText;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import com.lowagie.text.DocumentException;

public class Htmlparser {

	public static void main(String[] args) throws DocumentException {

			Document doc;
			final String selector = args.length == 2 ? args[1] : null;
			try {
				 String url;
			        @SuppressWarnings("resource")
					Scanner inn = new Scanner(System.in);
			        
			        System.out.println("Enter a url");
			        url = inn.nextLine();

			/*	// connect the page 
				doc = Jsoup.connect(url).get();

				// get page title
				String title = doc.title();
				System.out.println("title : " + title);

				// get all links
				Elements links = doc.select("a[href]");
				for (Element link : links) {

					// get the value from href attribute
					System.out.println("\nlink : " + link.attr("href"));
					System.out.println("text : " + link.text());
					}
				
				
				
				
				
				
				
				
				HtmlToPlainText formatter = new HtmlToPlainText();

		        if (selector != null) {
		            Elements elements = doc.select(selector); // get each element that matches the CSS selector
		            for (Element element : elements) {
		                String plainText = formatter.getPlainText(element); // format that element to plain text
		               System.out.println(plainText);
		            }
		        } else { // format the whole doc
		            String plainText = formatter.getPlainText(doc);
		            System.out.println(plainText);
		        
		            //get the detail of the page into doc 
		            FileOutputStream fout=new FileOutputStream("hh.doc");  
		            byte b[]=plainText.getBytes();//converting string into byte array  
		            fout.write(b);  
		            fout.close();  
		            System.out.println("success...");  
		        }
		       
		        
		      */
		        //get the source code of the page
		        URL yahoo = new URL(url);
	            URLConnection yc = yahoo.openConnection();
	            BufferedReader in = new BufferedReader(new InputStreamReader(
	                    yc.getInputStream(), "UTF-8"));          
	            String inputLine;
	            StringBuilder a = new StringBuilder();
	            while ((inputLine = in.readLine()) != null)
	                a.append(inputLine);
	            in.close();
	            String ar = a.toString(); // converting string buffer into  string 
	            System.out.println(a.toString());
	            
	            // get the html page to doc 
	            FileOutputStream fout=new FileOutputStream("hd.docx");  
	            byte b[]=ar.getBytes();//converting string into byte array  
	            fout.write(b);  
	            fout.close();
	            System.out.println("success...");
	          
	            
	            
	            
	            
	            
	            
	            
	            /*
	            FileInputStream fis = null;
	            try   
	            {  
	               fis = new FileInputStream("C:/Users/HHEXUSER/Downloads/New folder (4)/New folder (3)/application-confirmation-inliner");  
	            }  
	            catch (java.io.FileNotFoundException e)   
	            {  
	                System.out.println("File not found: ");  
	            }  
	                Tidy tidy = new Tidy(); 
	                tidy.setShowWarnings(false);
	                tidy.setXmlTags(false);
	                tidy.setXHTML(true);// 
	                tidy.setMakeClean(true);
	                Document xmlDoc = (Document) tidy.parseDOM(fis, null);  
	            try  
	            {  
	                tidy.pprint((org.w3c.dom.Document) xmlDoc,new FileOutputStream("C:/Users/HHEXUSER/Downloads/New folder (4)/New folder (3)/application-confirmation-inliner"));  
	            }  
	            catch(Exception e)  
	            {  
	            }
	            
	            String inputFile = "C:/Users/HHEXUSER/Downloads/New folder (4)/New folder (3)/application-confirmation-inliner";
	            String url2 = new File(inputFile).toURI().toURL().toString();
	            String outputFile = "C:/Users/HHEXUSER/Downloads/New folder (4)/New folder (3)/pdf.pdf";
	            OutputStream os = new FileOutputStream(outputFile);

	            ITextRenderer renderer = new ITextRenderer();
	            renderer.setDocument(url2);
	            renderer.layout();
	            renderer.createPDF(os);

	            os.close();
	            
	            */
	            
	            
	            
	            
	            
	            //processbuilder C:/Program Files/wkhtmltopdf/bin/wkhtmltopdf.exe
	            
	            try
	            {
	                String htmlFilePath = url;
	                String pdfFilePath = "C:/Users/HHEXUSER/Downloads/New folder (4)/New folder (3)/application-confirmation-inliner.pdf";
	                ProcessBuilder pb = new ProcessBuilder("", htmlFilePath, pdfFilePath);
	                pb.redirectErrorStream(true);
	                Process process = pb.start();
	                BufferedReader inStreamReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
	               
	                String line = inStreamReader.readLine();
	               
	                        while(line != null)
	                        {
	                            System.out.println(line);
	                            line = inStreamReader.readLine();
	                        }
	            }
	            catch(Exception e)
	            {
	                System.out.println("coming-->"+e.getMessage() );
	            }
	        
	            
	            
	            
	            
	           
                          
	            
	            
	            
			} catch (IOException e) {
				e.printStackTrace();
			}

		  }

}
