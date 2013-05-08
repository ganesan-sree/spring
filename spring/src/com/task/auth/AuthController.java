package com.task.auth;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.util.Collection;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.bean.User;
import com.dao.AuthDao;
import com.task.auth.util.StringUtil;
import com.task.auth.validator.RegistrationValidator;

@Controller
public class AuthController {

	@Autowired
	AuthDao authdao;
	
	@Autowired
	private HttpServletRequest httpServletRequest;
	
	@Autowired
	private ServletContext servletContext;

	@Autowired
	private RegistrationValidator registrationValidator;
	
	
	@RequestMapping(value = "login")
	public String login() {		
		return "auth/login";
	}
	
	 
	@RequestMapping(value = "dologin", method = RequestMethod.POST)
	public ModelAndView list(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ModelMap model = new ModelMap();
		String email = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(email);
		System.out.println(password);
		User user = new User();
		user.setEmail(email);
		user.setPassword(StringUtil.getEncryptedPassword(password));
		user =authdao.checkLogin(user);
		String view="dashBoard";
		System.out.println(user);
		if(user==null){
			view="redirect:login";
		}
		
		model.addAttribute("user", user);
		return new ModelAndView(view,model);
	}

	@RequestMapping(value = "registration")
	public String getRegistration() {		
		httpServletRequest.setAttribute("user", new User());	
		return "auth/Registration";
	}
	

	@RequestMapping(value = "doRegistration", method = RequestMethod.POST)
	public String doRegistration(@ModelAttribute("user") User user,BindingResult result,@RequestParam("email") String email) {
		
		System.out.println("httpServletRequest "+httpServletRequest.getParameter("username"));		
		System.out.println("servletContext "+servletContext.getContextPath());
		System.out.println("RequestParam "+email);
		System.out.println(user);		
		System.out.println("user object ,commandName,ModelAttribute"+user.getCountry());
		registrationValidator.validate(user, result);		
		String view="dashBoard";
		if (result.hasErrors()) {
			view ="forward:registration";
		} 
		else{
			user.setRegisteredDate(new Timestamp(new Date().getTime()));
			user.setPassword(StringUtil.getEncryptedPassword(user.getPassword()));
			System.out.println(user);
			authdao.SaveUser(user);
		}
		return view;
	}

	@RequestMapping(value = "forgotPassword", method = {RequestMethod.GET,RequestMethod.POST})
	public String getForgotPassword() {
		User u=new User();
		
		u.setPassword("4444444443333333333333");
		httpServletRequest.setAttribute("forgot", u);	
		return "auth/ForgotPassword";
	}

	
	@RequestMapping(value="doforgotpassword",method={RequestMethod.POST})
	
	public String doForgotPassword(@ModelAttribute() User user,BindingResult result,ModelMap model) throws Exception{
		System.out.println(user);
		if(user !=null){
			System.out.println(user.getPassword());
		}
		
		registrationValidator.validate(user, result);		
		result.reject("user","Hello using ");
		result.reject("test", "hello");
		
		model.addAttribute("statusMessageKey", "password.success");		
		model.addAttribute("error", "got error");		
		model.addAttribute("forgot",user);
		//httpServletRequest.setAttribute("forgot", user);	not working		 	
		return "forward:forgotPassword";
	}
	
	

	@RequestMapping(value="listuser")
	public ModelAndView listuser(){		
		Collection<User> userlist=authdao.listUser();		
		return new ModelAndView("user/listUser","userlist",userlist);
	}
	
	@RequestMapping(value="edituser/{id}")
	public ModelAndView edituser(@PathVariable Integer id){	
		System.out.println("Edit user "+id);
		User user=authdao.findById(id);		
		
		return new ModelAndView("user/editUser","user",user);
	}
	
	
	
/*
	*Below lines ogfcode for Exception handling !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	*
	*
	*
	*
	*/	
	
	
	
	
	


	@RequestMapping(value = "exception/{type}", method = {RequestMethod.GET,RequestMethod.POST})
	public String exceptionCall(@PathVariable String type) throws Exception {

		System.out.println("calling exception type using path variable "+type);

		if (type != null) {

			if(type.equals("null")){
				throw new NullPointerException();
			}
			if(type.equals("general")){
				throw new Exception();
			}
		}
		return  null;
	}
	
	
	@ExceptionHandler(Exception.class)
	public ModelAndView handleIOException(Exception ex, HttpServletRequest request, HttpServletResponse response) throws IOException {	    
	    System.out.println("It worked!!!!!!!!!!!!!!!!!!!");
	    System.out.println(request.getQueryString());
	    
	    System.out.println(request.getContextPath());
	    System.out.println(request.getRequestURI());
	    System.out.println(request.getServletPath());
	    
	    StringWriter errors = new StringWriter();
	    ex.printStackTrace(new PrintWriter(errors));
	    
	    System.out.println(errors.toString());
	    request.setAttribute("error", errors.toString());
	   
	    
	    return new ModelAndView("../exception");
	}
	
	
	@ExceptionHandler(NullPointerException.class)
	@ResponseBody
	public String handleException1(NullPointerException ex)
	{
		System.out.println("Null Point Exception !!!!!!!!!!!!!!!!!! \n\n\n\n");
		System.out.println(ex.getMessage());
	    return ex.getMessage();
	}
	
	
}
