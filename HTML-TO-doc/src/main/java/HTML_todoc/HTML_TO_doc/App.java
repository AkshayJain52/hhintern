package HTML_todoc.HTML_TO_doc;

public class App 
{
	public static class PDFTextReader
	{
		/*
		
		// code for getting plain text on doc file
		  
		  
		 
		 final String selector = args.length == 2 ? args[1] : null;
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
            
            
            
            
            
            // connect the page 
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
				
        }
       
        */
		 /*  
	       
        byte [] d = new byte[1];
        
        try {
            DataInputStream di = null;
            FileOutputStream fo = null;
           

            // PROXY
           /* System.setProperty("http.proxyHost","proxy.mydomain.local") ;
            System.setProperty("http.proxyPort", "80") ;

            Authenticator.setDefault(new Authenticator() {
              protected PasswordAuthentication getPasswordAuthentication() {
                return new
                   PasswordAuthentication("mydomain\\username","password".toCharArray());
            }});

            URL u = new URL(url);
            HttpURLConnection con = (HttpURLConnection) u.openConnection();
            di = new DataInputStream(con.getInputStream());
            while(-1 != di.read(d,0,1)) {
               System.out.print(new String(d));
            }
          }
          catch (Exception e) {
                  e.printStackTrace();
          }
        FileOutputStream fou=new FileOutputStream("hg.docx");  
        fout.write(d);  
        fout.close();
        in.close();
        System.out.println("success...as");
        
        
      // tidy code which not doing well and unknown thing on console is: Tidy (vers 4th August 2000) Parsing "stdin" 
        FileInputStream fis = null;
          
            Tidy tidy = new Tidy(); 
            tidy.setShowWarnings(false);
            tidy.setXmlTags(false);
            tidy.setXHTML(true);// 
            tidy.setMakeClean(true);
            Document xmlDoc = (Document) tidy.parseDOM(fis, null);  
         
         
            tidy.pprint((org.w3c.dom.Document) xmlDoc,new FileOutputStream("C:/Users/HHEXUSER/Downloads/New folder (4)/New folder (3)/application-confirmation-inliner"));  
        
        
        
        String inputFile = url;
        String url2 = new File(inputFile).toString();
        String outputFile = "C:/Users/HHEXUSER/Downloads/New folder (4)/New folder (3)/application-confirmation-inliner.pdf";
        OutputStream os = new FileOutputStream(outputFile);

        ITextRenderer renderer = new ITextRenderer();
        renderer.setDocument(url2);
        renderer.layout();
        renderer.createPDF(os);
        os.close();
        
	   */
}}




  
