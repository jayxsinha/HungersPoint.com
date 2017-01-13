package com.niit.HPbackend.DAO;

import java.util.List;

import com.niit.HPbackend.Model.Category;
import com.niit.HPbackend.Model.Product;

public interface CategoryDAO {
	public void addCategory(Category categ);
	public Category getCategbyid(int id);
	public Category getCategoryByName(String name);
	public List<Category> list();
	public void deletebyid(int id);
	public void updatebyid(Category categ);
	public List<Product> CategoryProdList(int id);
}
