package com.niit.HPbackend.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.HPbackend.Model.Users;

@EnableTransactionManagement
@Repository("usersDAO")
public class UsersDAOImpl implements UsersDAO {
	@Autowired
	SessionFactory sessionFactory;
	
	
	
	public UsersDAOImpl(SessionFactory sessionFactory) {
		
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	public void addUsers(Users us)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(us);
	}
	@Transactional
	public void getUsers(int id) {
		Users us =(Users) sessionFactory.getCurrentSession().createQuery("from Users where id="+id);
		System.out.println(us.getAddress());
		System.out.println(us.getDOB());
		System.out.println(us.getEmail());
		System.out.println(us.getFname());
		System.out.println(us.getLname());
		System.out.println(us.getPassword());
		System.out.println(us.getPhone());
	}
	@Transactional
	public Users getUsersObj(int id) {
		Users us = (Users)sessionFactory.getCurrentSession().createQuery("from Users where id="+id).getSingleResult();
		return us;
	}
	
	@Transactional
	public List<Users> list()
	{
		List<Users> li = sessionFactory.getCurrentSession().createQuery("from Users").getResultList();
		return li;
	}
	@Transactional
	public void deletebyid(int id)
	{
		Session sess = sessionFactory.getCurrentSession();
		Users us = (Users) sess.createQuery("from Users where id="+id).getSingleResult();
		sess.delete(us);
		
		
	}

	@Transactional
	public void update(Users user) {
		Session sess = sessionFactory.getCurrentSession();
		sess.update(user);
		
	}
	@Transactional
	public Users getuser(String name) {
		return (Users) sessionFactory.getCurrentSession().createQuery("from Users where email='"+name+"'").getSingleResult();
	}
}
