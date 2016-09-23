package com.alacriti.rentalbookportal.utilities;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class EmailPassword {
	public static void generatePassword(String email,int userid)
	{
		 String to=email;//change accordingly  
		 Properties props = new Properties();  
		  props.put("mail.smtp.host","smtp.gmail.com");  
		  props.put("mail.smtp.socketFactory.port", "465");  
		  props.put("mail.smtp.socketFactory.class",  
		            "javax.net.ssl.SSLSocketFactory");  
		  props.put("mail.smtp.auth", "true");  
		  props.put("mail.smtp.port", "25");  
		  Session session = Session.getDefaultInstance(props,  
				   new javax.mail.Authenticator() {  
				   protected PasswordAuthentication getPasswordAuthentication() {  
				   return new PasswordAuthentication("prempradeep72@gmail.com","Prem!123");//change accordingly  
				   }  
				  });
		  try {  
			   MimeMessage message = new MimeMessage(session);  
			   message.setFrom(new InternetAddress("prempradeep72@gmail.com"));//change accordingly  
			   message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
			   message.setSubject("Your Credentials for Login");  
			   message.setText("your Login credentials are EmailId:: "+email+" and Password::customer and userid::"+userid);  
			     
			   //send message  
			   Transport.send(message);  
			  
			   System.out.println("message sent successfully");  
			   
			  } catch (MessagingException e) {
				  
				  throw new RuntimeException(e);}  
			   
			 }  
			  
	}
 