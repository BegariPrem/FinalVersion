package com.alacriti.rentalbookportal.utilities;

import java.io.StringWriter;
import java.util.HashMap;

import org.apache.log4j.Logger;

import freemarker.template.Configuration;
import freemarker.template.Template;

public  class AccessDeniedFtl {
	
	public static String AccessDenied(){
		Logger logger=Logger.getLogger(AccessDeniedFtl.class);
		StringWriter stringWriter=new StringWriter();
		try{
			
			HashMap<String,Object> input=new HashMap<String, Object>();
			
			Template tmp=null;
			 
					Configuration configuration=new Configuration();
					configuration.setClassForTemplateLoading(FtlProcessClass.class,"/templates");
					tmp=configuration.getTemplate("AccessDenied.ftl");
				 
					tmp.process(input, stringWriter);
					return stringWriter.toString();
			 
		}
		catch(Exception e)
		{
			logger.info(e.getMessage());
		}
		return "error in AceessDeniedFtl AccessDenied()";
	}
	public static String notAllowed(){
		StringWriter stringWriter=new StringWriter();
		try{
			
			HashMap<String,Object> input=new HashMap<String, Object>();
			
			Template tmp=null;
			 
					Configuration configuration=new Configuration();
					configuration.setClassForTemplateLoading(FtlProcessClass.class,"/templates");
					tmp=configuration.getTemplate("AccessDenied.ftl");
				 
					tmp.process(input, stringWriter);
					return stringWriter.toString();
			 
		}
		catch(Exception e)
		{
			
		}
		return "error in AceessDeniedFtl notAllowed()";
	}
}
