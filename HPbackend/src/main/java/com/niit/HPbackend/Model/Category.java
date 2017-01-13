	package com.niit.HPbackend.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

@Entity
@Component
public class Category {
	@Id
	 @GeneratedValue(generator="increment")
	@GenericGenerator(name = "increment", strategy = "increment")
	private int cid;
	
	
	@NotEmpty(message="Category Name can't be empty!")
	private String cname;
	
	@NotEmpty(message="Category Description can't be empty!")
	private String cdes;
	
	
	private long nproducts;
	public long getNproducts() {
		return nproducts;
	}
	public void setNproducts(long nproducts) {
		this.nproducts = nproducts;
	}
	private long popularity;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCdes() {
		return cdes;
	}
	public void setCdes(String cdes) {
		this.cdes = cdes;
	}
	public long getPopularity() {
		return popularity;
	}
	public void setPopularity(long popularity) {
		this.popularity = popularity;
	}
}
