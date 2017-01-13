package com.niit.HPbackend.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.HPbackend.Model.Category;
import com.niit.HPbackend.Model.Product;

@EnableTransactionManagement
@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	public CategoryDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	public void addCategory(Category categ) {
		sessionFactory.getCurrentSession().saveOrUpdate(categ);
	}
	
	@Transactional
	public Category getCategbyid(int id) {
		return (Category)sessionFactory.getCurrentSession().createQuery("from Category where cid="+id).getSingleResult();
	}
	
	@Transactional
	public List<Category> list() {
		List<Category> li = (List<Category>) sessionFactory.getCurrentSession().createQuery("from Category").getResultList();
		return li;
	}
	
	@Transactional
	public void deletebyid(int id) {
		Category categ = (Category)sessionFactory.getCurrentSession().createQuery("from Category where cid="+id).getSingleResult();
		Session sess = sessionFactory.getCurrentSession();
		sess.delete(categ);
	}

	@Transactional
	public void updatebyid(Category categ) {
		Session sess = sessionFactory.getCurrentSession();
		sess.update(categ);
	}
	@Transactional
	public Category getCategoryByName(String name) {
		Category categ = (Category) sessionFactory.getCurrentSession().createQuery("from Category where cname='"+name+"'").getSingleResult();
		return categ;
	}
	@Transactional
	public List<Product> CategoryProdList(int id) {
		return (List<Product>) sessionFactory.getCurrentSession().createQuery("from Product where cid="+id).getResultList();
	}
}
