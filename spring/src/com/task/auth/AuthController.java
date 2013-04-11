package com.task.auth;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;

import com.bean.UserTest;
import com.dao.AuthDao;

@Controller
public class AuthController {

	@Autowired
	AuthDao authdao;
	
	@Autowired
	private HttpServletRequest httpServletRequest;
	
	@Autowired
	private ServletContext servletContext;

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
		UserTest user = new UserTest();
		user.setEmail(email);
		user.setPassword(getEncryptedPassword(password));
		user =authdao.checkLogin(user);
		String view="dashBoard";
		System.out.println(user);
		if(user==null){
			view="redirect:login";
		}
		model.addAttribute("user", user);
		return new ModelAndView(view,model);
	}

	@RequestMapping(value = "registration", method = RequestMethod.GET)
	public String getRegistration() {
		return "auth/Registration";
	}
	
	@RequestMapping(value = "doRegistration", method = RequestMethod.POST)
	public String doRegistration(@RequestParam("email") String email ,BindingResult result) {
		System.out.println(httpServletRequest.getParameter("name"));		
		System.out.println(servletContext.getContextPath());
		System.out.println(email);
		String view="dashboard";
		if (result.hasErrors()) {
			view ="auth/Registration";
		} 			
		return view;
	}

	@RequestMapping(value = "forgotPassword", method = RequestMethod.GET)
	public String getForgotPassword() {
		return "auth/ForgotPassword";
	}

	// @RequestMapping(value="dologin",method = RequestMethod.POST)
	// public String postLogin(ModelMap model) {
	//
	// System.out.println(model);
	//
	// System.out.println(model.size());
	// Set<Entry<String, Object>> s = model.entrySet();
	// Iterator<Entry<String, Object>> itr = s.iterator();
	// while (itr.hasNext()) {
	// Entry<String, Object> e = itr.next();
	// System.out.println(e.getKey() + "       " + e.getValue());
	// }
	//
	// System.out.println(model.get("username"));
	// System.out.println(model.get("password"));
	//
	// return "dashBoard";
	// }

	private String getEncryptedPassword(String plainText) {
		StringBuilder sb = new StringBuilder();
		try {
			MessageDigest message = MessageDigest.getInstance("MD5");
			message.update(plainText.getBytes());
			byte[] encodedString = message.digest();
			for (int i = 0; i < encodedString.length; i++) {
				if ((encodedString[i] & 0xff) < 0x10) {
					sb.append("0");
				}
				sb.append(Long.toString(encodedString[i] & 0xff, 16));
			}
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		System.out.println("password "+sb.toString());
		return sb.toString();
	}
}
