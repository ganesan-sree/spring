package com.el.core;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aop.services.CustomerService;

@Controller
public class ElController {

	@Autowired
	UserEL userBean;
	
	
	@RequestMapping(value="/controller",method = RequestMethod.GET)	
	public String printWelcome(ModelMap model,Principal principal) {
		System.out.println("Start   ");

		System.out.println(userBean);
		System.out.println("\n\n\n");
		System.out.println(userBean.toString1());
		System.out.println("\n\n\n");
		System.out.println(userBean.toString2());
		System.out.println("\n\n\n");
		System.out.println(userBean.toString3());
		
		System.out.println("\n\n\n");
		System.out.println(userBean.toString4());
		
		return "el/welcome";
 
	}
}
