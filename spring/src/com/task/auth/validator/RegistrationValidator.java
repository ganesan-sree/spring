package com.task.auth.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import com.bean.User;


public class RegistrationValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return User.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "name.required","DefaultHellooooooooo");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "password.required" ,"DefaultHellooooooooo");	
		ValidationUtils.rejectIfEmpty(errors, "sex", "gender.required","DefaultHellooooooooo");
		ValidationUtils.rejectIfEmpty(errors, "country", "country.required","DefaultHellooooooooo");
		System.out.println("$$$$$$$$$$$$$$$validate$$$$$$$$$$$$$$$$$$");
		User user = (User) target;
		if(user.getEmail()==null || user.getEmail().length()==0)
		{
			errors.rejectValue("email","email.required","DefaultHellooooooooo");
		}
		System.out.println(errors.getErrorCount());
	}

}
