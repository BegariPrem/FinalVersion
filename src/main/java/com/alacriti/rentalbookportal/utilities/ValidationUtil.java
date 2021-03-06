package com.alacriti.rentalbookportal.utilities;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.log4j.Logger;

public class ValidationUtil {
	///name validation/////
	static Logger logger=Logger.getLogger(ValidationUtil.class);
			public static boolean validateName(String fname) {
				String regex = "[a-zA-Z ]*";
				String name = fname;
				return name.matches(regex);
			}

			// ///email validation/////
			public static boolean validateEmailAddress(String Email) {
				
				String ePattern = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
				String email = Email;
				java.util.regex.Pattern p = java.util.regex.Pattern.compile(ePattern);
				java.util.regex.Matcher m = p.matcher(email);
				 logger.info("in Validatioon Util"+ m.matches());
				return m.matches();
				
			}

			// /contact validation//////
			public static boolean validatePhoneNumber(String Phone) {
				String regex = "^((\\+|00)(\\d{1,3})[\\s-]?)?(\\d{10})$";
				String phone = Phone;
				Pattern p = Pattern.compile(regex);
				Matcher m = p.matcher(phone);
				 
				return m.matches();

			}
}
