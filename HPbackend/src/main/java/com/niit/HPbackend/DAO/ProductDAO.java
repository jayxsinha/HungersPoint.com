package com.niit.HPbackend.DAO;

import java.util.List;

import com.niit.HPbackend.Model.Product;

public interface ProductDAO {
	public void addProduct(Product prod);
	public void deletebyid(int id);
	public List<Product> list();
	public Product getProductbyid(int id);
	public void update(Product prod);
}
