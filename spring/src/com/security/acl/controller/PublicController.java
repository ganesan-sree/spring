package com.security.acl.controller;

import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.security.acl.domain.PublicPost;
import com.security.acl.service.PublicService;

import javax.annotation.Resource;

/**
 * Handles Public-related requests
 */
@Controller
@RequestMapping("/public")
public class PublicController {

	protected static Logger logger = Logger.getLogger("controller");
	
	@Autowired
	private PublicService publicService;
    
    /**
     * Retrieves the Edit page
     */
    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String getEditPage(Model model) {
    	System.out.println("Public >>>>> Received request to view edit page");
    
    	// Call service. If true, we have appropriate authority
    	if (publicService.edit(new PublicPost()) == true) {
        	// Add result to model
        	model.addAttribute("result", "Entry has been edited successfully!");
    	} else {
        	// Add result to model
        	model.addAttribute("result", "You're not allowed to perform that action!");
    	}

    	// Add source to model to help us determine the source of the JSP page
    	model.addAttribute("source", "Public >> Edit");
    	
    	// Add our current role and username
    	model.addAttribute("role", SecurityContextHolder.getContext().getAuthentication().getAuthorities());
    	model.addAttribute("username", SecurityContextHolder.getContext().getAuthentication().getName());
    	
    	// This will resolve to /WEB-INF/jsp/resultpage.jsp
    	return "acl/resultpage";
	}
    
    /**
     * Retrieves the Add page
     */
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String getAddPage(Model model) {
    	System.out.println("Public >>>>>  Received request to view add page");
    
    	// Call service. If true, we have appropriate authority
    	if (publicService.add(new PublicPost()) == true) {
        	// Add result to model
        	model.addAttribute("result", "Entry has been added successfully!");
    	} else {
        	// Add result to model
        	model.addAttribute("result", "You're not allowed to perform that action!");
    	}
    	
    	// Add source to model to help us determine the source of the JSP page
    	model.addAttribute("source", "Public >> Add");
    	
    	// Add our current role and username
    	model.addAttribute("role", SecurityContextHolder.getContext().getAuthentication().getAuthorities());
    	model.addAttribute("username", SecurityContextHolder.getContext().getAuthentication().getName());
    	
    	// This will resolve to /WEB-INF/jsp/resultpage.jsp
    	return "acl/resultpage";
	}
    
    /**
     * Retrieves the Delete page
     */
    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String getDeletePage(Model model) {
    	System.out.println("Public >>>>>  Received request to view delete page");
    
    	// Call service. If true, we have appropriate authority
    	if (publicService.delete(new PublicPost()) == true) {
        	// Add result to model
        	model.addAttribute("result", "Entry has been deleted successfully!");
    	} else {
        	// Add result to model
        	model.addAttribute("result", "You're not allowed to perform that action!");
    	}
    	
    	// Add source to model to help us determine the source of the JSP page
    	model.addAttribute("source", "Public >> Delete");
    	
    	// Add our current role and username
    	model.addAttribute("role", SecurityContextHolder.getContext().getAuthentication().getAuthorities());
    	model.addAttribute("username", SecurityContextHolder.getContext().getAuthentication().getName());
    	
    	// This will resolve to /WEB-INF/jsp/resultpage.jsp
    	return "acl/resultpage";
	}
}
