package com.niit.HPbackend.Model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import javax.persistence.OneToOne;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.stereotype.Component;

@Entity
@Component
public class Cart {
	@Id @GeneratedValue(generator="increment")
	@GenericGenerator(name = "increment", strategy = "increment")
	private int cartId;
	@ManyToOne
	private Users user;
	int price;
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@OneToOne
	private Product prd;
	
	
	public Product getPrd() {
		return prd;
	}
	public void setPrd(Product prd) {
		this.prd = prd;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	int quantity;
	
	
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	
}
