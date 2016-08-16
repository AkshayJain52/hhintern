/*package com.mkyong.controller;

import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.Validator;
import javax.validation.metadata.BeanDescriptor;

import org.hibernate.validator.constraints.impl.EmailValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;

import com.mkyoug.hibernate.indexService;

@Component
	public class indexFormvalidation  implements Validator {

		@Autowired
		@Qualifier("emailValidator")
		EmailValidator emailValidator;
		
		@Autowired
		indexService indexvalidatorService;
		
		public boolean supports(Class<?> clazz) {
			return indexvalidator.class.equals(clazz);
		}

		public void validate(Object target, Errors errors) {

			indexvalidator indexvalidator = (indexvalidator) target;

			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty.indexvalidatorForm.name");
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty.indexvalidatorForm.email");
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "NotEmpty.indexvalidatorForm.address");
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty.indexvalidatorForm.password");
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "confirmPassword","NotEmpty.indexvalidatorForm.confirmPassword");
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "sex", "NotEmpty.indexvalidatorForm.sex");
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "country", "NotEmpty.indexvalidatorForm.country");

			
			if(indexvalidator.getFirst_name().equalsIgnoreCase("none")){
				errors.rejectValue("country", "NotEmpty.indexvalidatorForm.country");
			}

			if (indexvalidator.getPhone_no() == null){
				errors.rejectValue("skill", "Valid.indexvalidatorForm.skill");
			}

		}

		@Override
		public <T> Set<ConstraintViolation<T>> validate(T object, Class<?>... groups) {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public <T> Set<ConstraintViolation<T>> validateProperty(T object, String propertyName, Class<?>... groups) {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public <T> Set<ConstraintViolation<T>> validateValue(Class<T> beanType, String propertyName, Object value,
				Class<?>... groups) {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public BeanDescriptor getConstraintsForClass(Class<?> clazz) {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public <T> T unwrap(Class<T> type) {
			// TODO Auto-generated method stub
			return null;
		}

	
}
*/