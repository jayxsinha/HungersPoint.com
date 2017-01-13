package com.niit.HPbackend.DAO;

import java.util.List;

import com.niit.HPbackend.Model.Cook;

public interface CookDAO {

	public void addCook(Cook cook);
	public Cook getCookById(int id);
	public void deleteCookById(int id);
	public List<Cook> list();
	public void update(Cook cook);
	public Cook getCookbyname(String name);
}
