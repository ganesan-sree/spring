package com.security;
 
import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller

public class SecurityController {
 
	@RequestMapping(value="/security",method = RequestMethod.GET)	
	public String printWelcome(ModelMap model,Principal principal) {
		String name = principal.getName();
		model.addAttribute("message", "Spring Security Hello World");
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
		System.out.println("logout");
		return "login";
 
	}
 
}