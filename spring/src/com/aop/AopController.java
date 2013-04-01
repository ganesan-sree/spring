package com.aop;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aop.services.CustomerService;

@Controller("/controller")
public class AopController {

	@Autowired
	CustomerService customerServiceProxy;
	@RequestMapping(method = RequestMethod.GET)	
	public String printWelcome(ModelMap model,Principal principal) {
		System.out.println("Aoppppppppppppppppppp");
		
		System.out.println("*************************");
		customerServiceProxy.printName();
		System.out.println("*************************");
		customerServiceProxy.printURL();
		System.out.println("*************************");
		try {
			customerServiceProxy.printThrowException();
		} catch (Exception e) {

		}

		return "aop/welcome";
 
	}
	
}
