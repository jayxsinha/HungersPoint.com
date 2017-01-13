package com.niit.HPbackend.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.HPbackend.Model.Cook;

@EnableTransactionManagement
@Repository("cookDAO")

public class CookDAOImpl implements CookDAO {
	@Autowired
	SessionFactory sessionFactory;

	
	public CookDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void addCook(Cook cook) {
		sessionFactory.getCurrentSession().saveOrUpdate(cook);
	}

	@Transactional
	public Cook getCookById(int id) {
		Cook cook = (Cook) sessionFactory.getCurrentSession().createQuery("from Cook where id="+id).getSingleResult();
		return cook;
	}

	@Transactional
	public void deleteCookById(int id) {
		Session sess = sessionFactory.getCurrentSession();
		Cook cook = (Cook) sessionFactory.getCurrentSession().createQuery("from Cook where id="+id).getSingleResult();
		sess.delete(cook);
	}

	@Transactional
	public List<Cook> list() {
		List<Cook> li =(List<Cook>) sessionFactory.getCurrentSession().createQuery("from Cook").getResultList();
		return li;
	}

	@Transactional
	public void update(Cook cook) {
		Session sess = sessionFactory.getCurrentSession();
		sess.update(cook);
		
	}
	@Transactional
	public Cook getCookbyname(String name) {
		Cook cook = (Cook) sessionFactory.getCurrentSession().createQuery("from Cook where fname='"+name+"'").getSingleResult();
		return cook;
	}	
}
