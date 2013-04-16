package com.spring;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.dao.BeanInjection;

public class HelloWorldController extends AbstractController {

	private String message;
	
	
	protected ModelAndView handleRequestInternal(HttpServletRequest request,HttpServletResponse response) throws Exception {
					
		ServletContext servletContext =this.getServletContext();
		WebApplicationContext context = WebApplicationContextUtils.getRequiredWebApplicationContext(servletContext);
		BeanInjection bean = (BeanInjection)context.getBean("beanInjection");		
		bean.Create();
		System.out.println(1);
		WebApplicationContext context1 = ContextLoader.getCurrentWebApplicationContext();		
		BeanInjection bean1 = (BeanInjection) context1.getBean("beanInjection"); 
		bean1.Create();
		System.out.println(2);		
		// Loading from servlet bean config
		ClassPathXmlApplicationContext context2 = new ClassPathXmlApplicationContext("applicationContext.xml");
		BeanInjection bean2 = (BeanInjection) context2.getBean("beanInjection");
		bean2.Create();
		System.out.println(3);
		return new ModelAndView("welcomePage","welcomeMessage", message);
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
