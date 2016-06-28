package mail;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Sendmail {  
	String to="akshayjain308@gmail.com";//change accordingly  
	  
	  //Get the session object  
	  Properties props1 = new Properties();  
	 public void setProps1(Properties props1) {
		this.props1 = props1;
	}
	  props.put("mail.smtp.host"+"smtp.gmail.com");  
	  props.put("mail.smtp.socketFactory.port", "465");  
	  props.put("mail.smtp.socketFactory.class",  
	            "javax.net.ssl.SSLSocketFactory");  
	  props.put("mail.smtp.auth", "true");  
	  props.put("mail.smtp.port", "465");  
	   
	  Session session = Session.getDefaultInstance(props,  
	   new javax.mail.Authenticator() {  
	   protected PasswordAuthentication getPasswordAuthentication() {  
	   return new PasswordAuthentication("yourgmailid@gmail.com","password");//change accordingly  
	   }  
	  });  
	   
	  //compose message  
	  try {  
	   MimeMessage message = new MimeMessage(session);  
	   message.setFrom(new InternetAddress("yourgmailid@gmail.com"));//change accordingly  
	   message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
	   message.setSubject("Hello");  
	   message.setText("Testing.......");  
	     
	   //send message  
	   Transport.send(message);  
	  
	   System.out.println("message sent successfully");  
	   
	  } catch (MessagingException e) {throw new RuntimeException(e);}  
	   
	 }  
	}  

