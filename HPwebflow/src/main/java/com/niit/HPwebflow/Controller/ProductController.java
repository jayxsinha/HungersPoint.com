package com.niit.HPwebflow.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.HPbackend.DAO.ProductDAO;
import com.niit.HPbackend.Model.Product;

@Controller
public class ProductController {
	@Autowired
	ProductDAO productDAO;
	@RequestMapping("/Product")
	public ModelAndView products()
	{
		ModelAndView model = new ModelAndView("Product");
		List<Product> li =(List<Product>) productDAO.list();
		String json = new Gson().toJson(li);
		model.addObject("list",json);
		model.addObject("msg", "Welcome, to the Products Page!");
		return model;
	}
	@RequestMapping("/Products/{id}")
	public ModelAndView product(@PathVariable("id") int id)
	{
		ModelAndView model = new ModelAndView("ProdDetail");
		model.addObject("msg","Welcome to the Product with ID: " + id);
		Product prod = productDAO.getProductbyid(id);
		model.addObject("product", prod);
		System.out.println(prod.getPname());
		return model;
	}
}
