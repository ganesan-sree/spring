package com.el.core;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App {
	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("SpringBeans.xml");

		UserEL obj = (UserEL) context.getBean("userBean");
		System.out.println(obj);
	}
}
