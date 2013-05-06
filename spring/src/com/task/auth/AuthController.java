package com.task.auth;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.bean.UserTest;
import com.dao.AuthDao;
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

	@RequestMapping(value = "registration")
	public String getRegistration() {		
		httpServletRequest.setAttribute("user", new UserTest());	
		return "auth/Registration";
	}
	

	@RequestMapping(value = "doRegistration", method = RequestMethod.POST)

	public String doRegistration(@ModelAttribute("user") UserTest user,BindingResult result,@RequestParam("email") String email) {		
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
		return view;
	}

	@RequestMapping(value = "forgotPassword", method = {RequestMethod.GET,RequestMethod.POST})
	public String getForgotPassword() {
UserTest u=new UserTest();
		
		u.setPassword("4444444443333333333333");
		httpServletRequest.setAttribute("forgot", u);	
		return "auth/ForgotPassword";
	}

	
	@RequestMapping(value="doforgotpassword",method={RequestMethod.POST})
	
	public String doForgotPassword(@ModelAttribute() UserTest user,BindingResult result,ModelMap model) throws Exception{
		System.out.println(user);
		if(user !=null){
			System.out.println(user.getPassword());
		}
	
		registrationValidator.validate(user, result);		
		result.reject("user","Hello using ");
		result.reject("test", "hello");
		
		model.addAttribute("statusMessageKey", "person.form.msg.success");
		
		
		
		model.addAttribute("forgot",user);
		//httpServletRequest.setAttribute("forgot", user);	
		
		if(true){
			
				throw new Exception();
		
		}
 			
		return "forward:forgotPassword";
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

	@ExceptionHandler(Exception.class)
	public ModelAndView handleIOException(IOException ex, HttpServletRequest request, HttpServletResponse response) throws IOException {
	    
	    System.out.println("It worked!!!!!!!!!!!!!!!!!!!");
	    
	    
	    return new ModelAndView("/403.jsp");
	}
	
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
	
	
	private String getSHAEncryptedPassword(String plainText) {

		MessageDigest md=null;
		try {
			md = MessageDigest.getInstance("SHA");
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		byte[] dataBytes = new byte[1024];

		int nread = 0;

		md.update("admin".getBytes());

		byte[] mdbytes = md.digest();

		// convert the byte to hex format method 1
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < mdbytes.length; i++) {
			sb.append(Integer.toString((mdbytes[i] & 0xff) + 0x100, 16)
					.substring(1));
		}

		System.out.println("Digest(in hex format):: " + sb.toString());

		// convert the byte to hex format method 2
		StringBuffer hexString = new StringBuffer();
		for (int i = 0; i < mdbytes.length; i++) {
			String hex = Integer.toHexString(0xff & mdbytes[i]);
			if (hex.length() == 1)
				hexString.append('0');
			hexString.append(hex);
		}
		System.out.println("Digest(in hex format):: " + hexString.toString());
		return hexString.toString();
	}
}
