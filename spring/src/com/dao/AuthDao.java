package com.dao;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import com.bean.UserTest;
import com.dao.util.SpringintegrationHibernateUtil;

public class AuthDao {

	public UserTest checkLogin(UserTest user) {
		Session session = SpringintegrationHibernateUtil.getSession();
		Transaction tx = session.beginTransaction();
		Criteria c = session.createCriteria(UserTest.class);
		c.add(Restrictions.eq("email", user.getEmail()));
		c.add(Restrictions.eq("password", user.getPassword()));
		List<UserTest> list = c.list();
		if (list.size() > 0){
			tx.commit();
			return list.get(0);
		}
		tx.commit();
		session.clear();
		session.flush();
		return null;
	}
	
	
	public UserTest findByUsername(String  userName) {
		Session session = SpringintegrationHibernateUtil.getSession();
		Transaction tx = session.beginTransaction();
		Criteria c = session.createCriteria(UserTest.class);
		c.add(Restrictions.eq("username", userName));		
		List<UserTest> list = c.list();
		if (list.size() > 0)	{
			tx.commit();
			return list.get(0);	
		}
		tx.commit();
		session.clear();
		session.flush();
		return null;
	}
}
