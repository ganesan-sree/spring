package com.aop;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aop.aspectJ.customer.bo.CustomerBo;


@Controller("/aspectJcontroller")
public class AopAspectJController {

	@Autowired
	CustomerBo customerBo;
	@RequestMapping(method = RequestMethod.GET)	
	public String printWelcome(ModelMap model,Principal principal) {
		CustomerBo customer = (CustomerBo) customerBo;
		customer.addCustomer();
		
		//customer.addCustomerReturnValue();
		
		//customer.addCustomerThrowException();
		
		customer.addCustomerAround("mkyong");

		return "aop/welcome";
 
	}
	

}
