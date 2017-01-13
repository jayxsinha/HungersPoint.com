package com.niit.HPbackend.DAO;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.HPbackend.Model.Cart;

@EnableTransactionManagement
@Repository("cartDAO")
public class CartDAOImpl implements CartDAO{
	
	@Autowired
	SessionFactory sessionFactory;

	
	public CartDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	@Transactional
	public void addCart(Cart cart) {
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
		
	}
	@Transactional
	public void deleteCart(int id) {
		Cart cart = (Cart)sessionFactory.getCurrentSession().createQuery("from Cart where cartId="+id).getSingleResult();
		Session sess = sessionFactory.getCurrentSession();
		sess.delete(cart);
	}
	@Transactional
	public Cart getCart(int id) {
		Cart cart = (Cart) sessionFactory.getCurrentSession().createQuery("from Cart where cartId="+id).getSingleResult();
		return cart;
	}
	@Transactional
	public List<Cart> list(int id) {
		List<Cart> list = (List<Cart>) sessionFactory.getCurrentSession().createQuery("from Cart where user_id="+id).getResultList();
		return list;
	}
	
	@Transactional
	public void deleteforuser(int uid)
	{
		Session sess = sessionFactory.getCurrentSession();
		List<Cart> list = sessionFactory.getCurrentSession().createQuery("from Cart where user_id="+uid).getResultList();
		for (Cart cart: list)
		{
			sess.delete(cart);
		}
	}

}
