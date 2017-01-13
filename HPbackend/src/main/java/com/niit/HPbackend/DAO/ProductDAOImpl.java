package com.niit.HPbackend.DAO;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.HPbackend.Model.Product;

@EnableTransactionManagement
@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO{
	@Autowired
	SessionFactory sessionFactory;
	
	public ProductDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void addProduct(Product prod) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(prod);
	}
	
	@Transactional
	public void deletebyid(int id) {
		Product prod = (Product) sessionFactory.getCurrentSession().createQuery("from Product where pid="+id).getSingleResult();
		Session sess = sessionFactory.getCurrentSession();
		sess.delete(prod);
		
	}
	
	@Transactional
	public List<Product> list() {
		List<Product> li = (List<Product>)sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
		return li;
	}
	
	@Transactional
	public Product getProductbyid(int id) {
		Product prod = (Product)sessionFactory.getCurrentSession().createQuery("from Product where pid="+id).getSingleResult();
		return prod;
	}

	@Transactional
	public void update(Product prod) {
		Session sess = sessionFactory.getCurrentSession();
		sess.update(prod);	
	}
}
