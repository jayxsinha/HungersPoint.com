package com.niit.HPbackend.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

@Entity
@Component
@Table(name = "Cook")
public class Cook {
	
	@Id @GeneratedValue(generator="increment")
	@GenericGenerator(name = "increment", strategy = "increment")
	private int id;
	
	@NotEmpty(message="First Name can't be empty!")
	private String fname;
	
	@NotEmpty(message="Last Name can't be empty!")
	private String lname;
	
	@NotNull
	@Column(name="phone", unique = true, nullable = false)
	private long phone;
	private float rating;
	private int nproducts;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public float getRating() {
		return rating;
	}
	public void setRating(float rating) {
		this.rating = rating;
	}
	public int getNproducts() {
		return nproducts;
	}
	public void setNproducts(int nproducts) {
		this.nproducts = nproducts;
	}
	
}
