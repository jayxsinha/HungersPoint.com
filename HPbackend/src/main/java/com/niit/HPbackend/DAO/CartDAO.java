package com.niit.HPbackend.DAO;

import java.util.List;

import com.niit.HPbackend.Model.Cart;



public interface CartDAO {

	 public void addCart(Cart cart);
	  public void deleteCart(int id);
	  public Cart getCart(int id);
	  public void deleteforuser(int uid);
	  public List<Cart> list(int id);
	  
}