package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.dao.Cartdao;
import com.niit.model.Cart;
@Repository
public class Cartdaoimpl implements Cartdao {
	@Autowired
	SessionFactory sessionFactory;
	public void addToCart(Cart cartitem)
	{
		try
		{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			session.save(cartitem);
			trans.commit();
			session.flush();
			session.close();
		}
		
		catch(Exception ex)
		{
			System.out.println("Error="+ex);
		}
	}
	public List<Cart> getCartItems(String username)
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Cart where username=:username and ordered='false'");
		query.setParameter("username",username);
		
		List<Cart> list=query.list();
		return list;
	}
	
	public Cart getCartItem(int cartid)
	{
		Session session=sessionFactory.openSession();
		
		Cart cart=(Cart)session.get(Cart.class,cartid);
		return cart;
	}
	
	public void deleteCartItem(Cart cart)
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction(); 
		session.delete(cart);
		trans.commit();
		session.close();
	}
	public void updateCartItem(Cart cart)
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		session.update(cart);
		trans.commit();
		session.flush();
		session.close();
	}

}
