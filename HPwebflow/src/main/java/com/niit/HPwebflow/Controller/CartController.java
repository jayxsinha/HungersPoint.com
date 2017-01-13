package com.niit.HPwebflow.Controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.HPbackend.DAO.CartDAO;
import com.niit.HPbackend.DAO.CategoryDAO;
import com.niit.HPbackend.DAO.ProductDAO;
import com.niit.HPbackend.DAO.UsersDAO;
import com.niit.HPbackend.Model.Cart;
import com.niit.HPbackend.Model.Category;
import com.niit.HPbackend.Model.Product;
import com.niit.HPbackend.Model.Users;

@Controller
public class CartController {
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	UsersDAO usersDAO;
	
	@RequestMapping("myCart")
	public ModelAndView mycart(Principal principal)
	{
		ModelAndView model = new ModelAndView("MyCart");
		try
		{
		int id;
		Users user = usersDAO.getuser(principal.getName());
		id = user.getId();
		model.addObject("cart",new Cart());
		model.addObject("cartList",this.cartDAO.list(id));
		model.addObject("category",new Category());
		model.addObject("categoryList",this.categoryDAO.list());
		model.addObject("displayCart","true");
		
		
		int i;
		int s=0;
		int n=cartDAO.list(id).size();
		System.out.println(n);
		for(i=0;i<n;i++)
		{
			s=s+cartDAO.list(id).get(i).getPrice();
		}
		System.out.print(s);
		model.addObject("sum",s);
		
		}
		catch(Exception ex)
		{
			System.out.println("ex.getMessage");
		}
		return model;
	}

	
	@RequestMapping(value = "cart/add/{id}")
	public String addToCart(@PathVariable("id") int id, HttpServletRequest request ,Principal principal)
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if((auth instanceof AnonymousAuthenticationToken))
	    {
		return "redirect:/login";
	    }
		try
		{
		Product product=productDAO.getProductbyid(id);
		Users user = usersDAO.getuser(principal.getName());
		Cart cart=new Cart();   		
		cart.setPrice(product.getPrice());
		cart.setQuantity(1);
		cart.setUser(user);
		cart.setPrd(product);
		cartDAO.addCart(cart);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return "redirect:/myCart";
		
		
		
	}
	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public String checkout(Model model,Principal principal)
	{
		Users user = usersDAO.getuser(principal.getName());
		int id = user.getId();
		int i,j=0;
		int s=0;
		int n=cartDAO.list(id).size();
		System.out.println(n);
		for(i=0;i<n;i++)
		{
			s=s+cartDAO.list(id).get(i).getPrice();
		}
		System.out.print(s);
		model.addAttribute("sum",s);
		model.addAttribute("cart",new Cart());
		model.addAttribute("cartList",this.cartDAO.list(id));
		
		return "/checkout";
	    
	}
	@RequestMapping("/cart/delete/{id}")
	public String deleteCart(@PathVariable("id") int id,Model model)
	{
		cartDAO.deleteCart(id);
		return "redirect:/myCart";
	}
	
	
	
	@RequestMapping("/payment")
	public String getPayment()
	{
		return "payment";
	}
	
	@RequestMapping("/thanks")
	public String getThanks(Principal principal)
	{
		Users user = usersDAO.getuser(principal.getName());
		int uid = user.getId();
		cartDAO.deleteforuser(uid);
		return "thanks";
	}
	
	
}
