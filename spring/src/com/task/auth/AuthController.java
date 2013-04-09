package com.task.auth;

import java.util.Map.Entry;
import java.util.Iterator;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.util.HibernateUtil;


@Controller
public class AuthController {

	
	@RequestMapping(value="getlogin",method = RequestMethod.GET)
	public String getLogin() {		
		
		HibernateUtil util = new HibernateUtil();
		System.out.println(util.getSession());
		return "auth/login";
	}
	
//	@RequestMapping(value="dologin",method = RequestMethod.POST)
//	public String postLogin(ModelMap model) {
//
//		System.out.println(model);
//
//		System.out.println(model.size());
//		Set<Entry<String, Object>> s = model.entrySet();
//		Iterator<Entry<String, Object>> itr = s.iterator();
//		while (itr.hasNext()) {
//			Entry<String, Object> e = itr.next();
//			System.out.println(e.getKey() + "       " + e.getValue());
//		}
//
//		System.out.println(model.get("username"));
//		System.out.println(model.get("password"));
//		
//		return "dashBoard";
//	}
	
	@RequestMapping(value="dologin",method = RequestMethod.POST)
	public ModelAndView list(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ModelMap modelMap = new ModelMap();
		System.out.println(request.getParameter("username"));
		System.out.println(request.getParameter("password"));
		return new ModelAndView("dashBoard", modelMap);
	}
	
	
	
	@RequestMapping(value="getRegistration",method = RequestMethod.GET)
	public String getRegistration() {		
		return "auth/Registration";
	}
	
	@RequestMapping(value="getForgotPassword",method = RequestMethod.GET)
	public String getForgotPassword() {		
		return "auth/ForgotPassword";
	}
}
