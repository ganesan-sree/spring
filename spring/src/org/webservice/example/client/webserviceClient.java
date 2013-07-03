package org.webservice.example.client;

import java.net.URL;

import javax.xml.namespace.QName;
import javax.xml.ws.Service;

import org.webservice.example.ApacheCxfWebservice;

public class webserviceClient  {

	public static void main(String[] args) throws Exception {

		URL url = new URL("http://192.168.1.230:8080/spring/ws/ex?wsdl");

		// 1st argument service URI, refer to wsdl document above
		// 2nd argument is service name, refer to wsdl document above
		QName qname = new QName("http://example.webservice.org/","ApacheCxfWebserviceImplService");

		Service service = Service.create(url, qname);

		 System.out.println(service);
		ApacheCxfWebservice hello = service.getPort(ApacheCxfWebservice.class);

		System.out.println(hello.getGreetMessage("Ganesan"));

	}
}
