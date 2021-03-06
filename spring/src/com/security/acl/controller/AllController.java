/**
 * 
 */
package com.security.acl.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.security.acl.service.AdminService;
import com.security.acl.service.PersonalService;
import com.security.acl.service.PublicService;

/**
 * Handles authentication related requests
 */
@Controller
@RequestMapping("/all")
public class AllController {
        
	protected static Logger logger = Logger.getLogger("controller");

	@Autowired
	private AdminService adminService;
	
	@Autowired
	private PersonalService personalService;
	
	@Autowired
	private PublicService publicService;
	
	/**
	 * Retrieves the View page. 
	 * <p>
	 * This loads all authorized posts.
	 */
    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public String getViewAllPage(Model model) {
    	System.out.println("Received request to view all page");
    
    	// Retrieve items from service and add to model
    	model.addAttribute("adminposts", adminService.getAll());
    	model.addAttribute("personalposts", personalService.getAll());
    	model.addAttribute("publicposts", publicService.getAll());
    	
    	// Add our current role and username
    	model.addAttribute("role", SecurityContextHolder.getContext().getAuthentication().getAuthorities());
    	model.addAttribute("username", SecurityContextHolder.getContext().getAuthentication().getName());
    	
    	// This will resolve to /WEB-INF/jsp/bulletinpage.jsp
    	return "acl/bulletinpage";
	}
}