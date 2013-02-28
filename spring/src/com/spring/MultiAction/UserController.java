package com.spring.MultiAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class UserController extends MultiActionController{
	
	public ModelAndView calladdCustomer(HttpServletRequest request,
		HttpServletResponse response) throws Exception {
		
		return new ModelAndView("multi/welcomePage", "msg","add() method");
			
	}
	
	public ModelAndView calldeleteCustomer(HttpServletRequest request,
		HttpServletResponse response) throws Exception {
			
		return new ModelAndView("multi/welcomePage", "msg","delete() method");
				
	}
	
	public ModelAndView callupdateCustomer(HttpServletRequest request,
		HttpServletResponse response) throws Exception {
			
		return new ModelAndView("multi/welcomePage", "msg","update() method");
				
	}
	
	public ModelAndView calllistCustomer(HttpServletRequest request,
		HttpServletResponse response) throws Exception {
				
		return new ModelAndView("multi/welcomePage", "msg","list() method");
					
	}
	
}