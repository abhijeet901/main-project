package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.dao.Userdao;
import com.niit.model.user;


@Repository
public class Userdaoimpl implements Userdao {
	
	@Autowired
	SessionFactory sessionFactory;

	public void adduser(user user) {
		// TODO Auto-generated method stub
		
		try
		{
			Session session=sessionFactory.openSession();//Creating session factory object
			Transaction trans=session.beginTransaction();//Creating transaction object
			session.save(user);
			trans.commit();//transaction is committed
			session.flush();
			session.close();
		}
		
		catch(Exception ex)
		{
			System.out.println("Error="+ex);
		}
		
}
//Read
	@SuppressWarnings("unchecked")
	public List<user> getUserlist()
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		List<user> showuser=session.createQuery("from user").list();
		trans.commit();
		session.close();
		return showuser;
		
	}
//delete
	public void deleteuser(String username)
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		user user=(user)session.get(user.class, username); //to know user name of particular user (typecasting)
		session.delete(user);
		trans.commit();
		session.close();
		
	}
	//update
	public user getuser(String id)
	{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			user user=(user)session.get(user.class,id);
			trans.commit();
			session.flush();
			session.close();
			return user;
		}
		
	public void edituser(user user)
	{
		if(user!=null)
		try{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			session.save(user);
			session.update(user);
			trans.commit();
			session.flush();
			session.close();
		}catch(Exception ex)
		{
			System.out.println("Error="+ex);
		
		
		}

	}
}

