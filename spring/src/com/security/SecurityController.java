package com.security;
 
import java.security.Principal;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller

public class SecurityController {
 
	@RequestMapping(value="/security",method = RequestMethod.GET)	
	public String printWelcome(ModelMap model,Principal principal) {
		
		
		User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	    String name1 = user.getUsername(); //get logged in username
		System.out.println(name1);
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String name2 = auth.getName(); //get logged in username
	    System.out.println(name2);
		String name3 = principal.getName();
		model.addAttribute("message", "Spring Security Hello World");
		model.addAttribute("username", name3);
		System.out.println("OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO");
		return "Security";
 
	}
	
	@RequestMapping(value="/admin",method = RequestMethod.GET)	
	public String adminCall(ModelMap model,Principal principal) {
		String name = principal.getName();
		model.addAttribute("message", "Hello welcome Mr admin !!!!!");
		model.addAttribute("username", name);
		System.out.println("OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO");
		return "Security";
 
	}
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
 System.out.println("loginnnnnnnnnnnnnnnnnnnnnnnnnnnn");
		return "login";
 
	}
	
	@RequestMapping(value="/loginfailed", method = RequestMethod.GET)
	public String loginerror(ModelMap model) {
 
		model.addAttribute("error", "true");
		System.out.println("errrrrrrrrrrrrrrrrrrroooooooooooooooooooooo");
		return "login";
 
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(ModelMap model) {
		System.out.println("logout !!!!!!!!!!!!!!!!!!!!!!");
		return "login";
 
	}
 
}