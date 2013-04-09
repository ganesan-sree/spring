package com.DAO.util;

import java.sql.Connection;
import javax.naming.InitialContext;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class HibernateUtil {

	private static SessionFactory sessionFactory;

	public HibernateUtil(){
		
	}
	
	static{
		try {
//			InitialContext ctx = new InitialContext();
//			sessionFactory = (SessionFactory) ctx.lookup("java:/hibernate/SessionFactory");
			Configuration configuration = new Configuration();
			 sessionFactory = configuration.configure().buildSessionFactory();
		
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	public static Session getSession() {
		Session s=null;
		try {
			System.out.println("\n\n\n");
			System.out.println(sessionFactory);
			
			s = sessionFactory.openSession();
		//	s = sessionFactory.openSession();
			//System.out.println(s);
		} catch (HibernateException ex) {
			ex.printStackTrace();
		}
		return s;
	}

}
