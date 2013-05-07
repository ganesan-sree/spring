package org.webservice.example;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

@WebService
public class ApacheCxfWebserviceImpl implements ApacheCxfWebservice {

	@Override	
	public String getGreetMessage(String name) {
		return "Hello welcome to chennai !!!!!!!  "+name;
	}
}
