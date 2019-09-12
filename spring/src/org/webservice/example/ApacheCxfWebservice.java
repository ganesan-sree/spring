package org.webservice.example;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

@WebService
public interface ApacheCxfWebservice {
	
	@WebMethod
	public String getGreetMessage(@WebParam String name);

}
