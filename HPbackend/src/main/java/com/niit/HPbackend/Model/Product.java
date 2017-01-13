package com.niit.HPbackend.Model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Component
public class Product {
	@Id @GeneratedValue(generator="increment")
	@GenericGenerator(name = "increment", strategy = "increment")
	private int pid;
	
	@NotEmpty(message="Product Name can't be empty!")
	private String pname;
	private String pdes;
	@Transient
	private MultipartFile image;
	
	@NotNull
	private int price;
	private long Calories;
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="id")
	private Cook cook;
	
	public Cook getCook() {
		return cook;
	}

	public void setCook(Cook cook) {
		this.cook = cook;
	}

	private float rating;

	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "cid")
	Category categ;
	public float getRating() {
		return rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
	}

	public Category getCateg() {
		return categ;
	}

	public void setCateg(Category categ) {
		this.categ = categ;
	}

	

	public int getPid() {
		return pid;
	}

	public long getCalories() {
		return Calories;
	}

	public void setCalories(long calories) {
		Calories = calories;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPdes() {
		return pdes;
	}

	public void setPdes(String pdes) {
		this.pdes = pdes;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

}
