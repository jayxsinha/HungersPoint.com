package com.niit.HPwebflow.Controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.HPbackend.DAO.CategoryDAO;
import com.niit.HPbackend.DAO.CookDAO;
import com.niit.HPbackend.DAO.ProductDAO;
import com.niit.HPbackend.DAO.UsersDAO;
import com.niit.HPbackend.Model.Category;
import com.niit.HPbackend.Model.Cook;
import com.niit.HPbackend.Model.Product;
import com.niit.HPbackend.Model.Users;

@Controller

public class AdminController {
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	Product prod;
	
	@Autowired
	CookDAO cookDAO;
	
	@Autowired
	UsersDAO usersDAO;
	@RequestMapping("/Explore")
	public ModelAndView explore()
	{
		ModelAndView model = new ModelAndView("Explore");
		return model;
	}
	@RequestMapping("/adminWelcome")
	public ModelAndView adminWelcome()
	{
		ModelAndView model = new ModelAndView("PostAdmin");
		model.addObject("msg","Hello, Welcome to the Admin Page!");
		return model;
	}
	
	@RequestMapping("/adminCategory")
	public ModelAndView adminCategory()
	{
		ModelAndView model = new ModelAndView("AdminCateg");
		model.addObject("category",new Category());
		model.addObject("msg","Hello, Welcome to the Admin Category Page!");
		return model;
	}
	
	@RequestMapping(value = "/adminCategory", method = RequestMethod.POST)
	public String adminCategAdd(@Valid @ModelAttribute("category")Category categ, BindingResult result,Model model)
	{
		
		if(result.hasErrors())
		{
			model.addAttribute("msg","Category cannot be added");
			return "AdminCateg";
		}
		else
		{
			model.addAttribute("msg","Category added successfully");
			categoryDAO.addCategory(categ);
			return "AdminAddCategSuccess";
		}
		
	}
	
	@RequestMapping("/adminCateg/remove//{id}")
	public ModelAndView adminCategRemove(@PathVariable("id")int id)
	{
		ModelAndView model = new ModelAndView("AdminCategTable");
		categoryDAO.deletebyid(id);
		List<Category> li =(List<Category>) categoryDAO.list();
		String json = new Gson().toJson(li);
		model.addObject("list",json);
		model.addObject("category",new Category());
		return model;
	}
	
	@RequestMapping("/adminCateg/edit/{id}")
	public ModelAndView adminCategEdit(@PathVariable("id")int id)
	{
		ModelAndView model = new ModelAndView("AdminCategEdit");
		model.addObject("msg","Hello, Welcome to the Edit Category Controller");
		model.addObject("id",id);
		Category categ1 = categoryDAO.getCategbyid(id);
		model.addObject("categ1",categ1);
		return model;
	}
	
	@RequestMapping("/adminCategUpdate")
	public ModelAndView adminCategUpdate(@Valid @ModelAttribute("category")Category categ,BindingResult result)
	{
		ModelAndView model = new ModelAndView("AdminCateg");
		model.addObject("category",new Category());
		if(result.hasErrors())
		{
			model.addObject("msg","Category cannot be updated!");
		}
		else
		{
			categoryDAO.updatebyid(categ);
			model.addObject("msg","Category updated!");
		}
		return model;
	}
	
	@RequestMapping("/adminCategTable")
	public ModelAndView adminCategTable()
	{
		ModelAndView model = new ModelAndView("AdminCategTable");
		List<Category> li =(List<Category>) categoryDAO.list();
		String json = new Gson().toJson(li);
		model.addObject("list",json);
		return model;
	}
	
	@RequestMapping("/adminProduct")
	public ModelAndView adminProduct()
	{
		ModelAndView model = new ModelAndView("AdminProduct");
		List<Category> list = categoryDAO.list();
		List<Cook> list2 = cookDAO.list();
		model.addObject("msg","Hello, Welcome to the Admin Product Page!");
		model.addObject("product",new Product());
		model.addObject("cook",list2);
		model.addObject("categoryList", list);
		return model;
	}
	
	@RequestMapping(value = "/adminProduct", method = RequestMethod.POST)
	public String adminAddProduct( Model model,HttpServletRequest request,@Valid @ModelAttribute("product")Product prod,BindingResult result)
	{
		byte[] bytes;
		Category categ = categoryDAO.getCategoryByName(prod.getCateg().getCname());
		categ.setNproducts(categ.getNproducts()+1);
		categoryDAO.updatebyid(categ);
		Cook cook = cookDAO.getCookbyname(prod.getCook().getFname());
		cook.setNproducts(cook.getNproducts()+1);
		prod.setCook(cook);
		prod.setCateg(categ);
		if(!prod.getImage().isEmpty())
		{
			try
			{
				bytes = prod.getImage().getBytes();
				String path = request.getSession().getServletContext().getRealPath("/resources/"+prod.getPname()+".jpg");
				File f = new File(path);
				BufferedOutputStream bfs = new BufferedOutputStream(new FileOutputStream(f));
				bfs.write(bytes);
				bfs.close();
				
			}
			catch(Exception e)
			{
			System.out.println("Caught: "+e);
			
			}
		}
		
		if(result.hasErrors())
		{
			System.out.println("Product cannot be added.....");
			model.addAttribute("msg","Product cannot be added");
			return "AdminProduct";
		}
		else
		{
			model.addAttribute("msg","Product added successfully");
			productDAO.addProduct(prod);
			return "AdminAddProdSuccess";
		}
	}
	
	@RequestMapping("/adminProd/remove/{id}")
	public ModelAndView adminProdRemove(@PathVariable("id")int id)
	{
		ModelAndView model = new ModelAndView("AdminProdTable");
		productDAO.deletebyid(id);
		List<Product> li =(List<Product>) productDAO.list();
		String json = new Gson().toJson(li);
		model.addObject("product", new Product());
		model.addObject("list",json);
		return model;
	}
	
	@RequestMapping("/adminProd/edit/{id}")
	public ModelAndView adminProdEdit(@PathVariable("id")int id)
	{
		ModelAndView model = new ModelAndView("AdminProdEdit");
		model.addObject("msg","Hello, Welcome to the Edit Product Controller");
		model.addObject("id",id);
		model.addObject("product", new Product());
		Product prod1 = (Product) productDAO.getProductbyid(id);
		model.addObject("prod1",prod1);
		return model;
	}
	
	@RequestMapping("/adminProdUpdate")
	public ModelAndView adminProdUpdate(@Valid @ModelAttribute("prod1")Product prod,BindingResult result)
	{
		ModelAndView model = new ModelAndView("AdminProduct");
		if(result.hasErrors())
		{
			model.addObject("msg","Product cannot be updated!");
		}
		else
		{
			productDAO.update(prod);
			model.addObject("msg","Product updated!");
		}
		return model;
	}
	
	@RequestMapping("/adminProdTable")
	public ModelAndView adminProdTable()
	{
		ModelAndView model = new ModelAndView("AdminProdTable");
		List<Product> li =(List<Product>) productDAO.list();
		String json = new Gson().toJson(li);
		model.addObject("list",json);
		return model;
	}
	
	@RequestMapping("/adminChef")
	public ModelAndView adminChef()
	{
		ModelAndView model = new ModelAndView("AdminChef");
		model.addObject("cook",new Cook());
		model.addObject("msg","Hello, Welcome to the Admin Chef Page!");
		return model;
	}
	
	@RequestMapping(value = {"/adminChef"}, method = RequestMethod.POST)
	public String adminChefAdd(Model model, @Valid @ModelAttribute("chef")Cook cook, BindingResult result)
	{
		if(result.hasErrors())
		{
			model.addAttribute("msg","Chef cannot be added");
			return "AdminChef";
		}
		else
		{
			model.addAttribute("msg","Chef added successfully");
			cookDAO.addCook(cook);
			return "AdminAddChefSuccess";
		}
	}
	
	@RequestMapping("/adminChef/remove/{id}")
	public ModelAndView adminChefRemove(@PathVariable("id")int id)
	{
		ModelAndView model = new ModelAndView("AdminChefTable");
		cookDAO.deleteCookById(id);;
		List<Cook> li =(List<Cook>) cookDAO.list();
		String json = new Gson().toJson(li);
		model.addObject("list",json);
		return model;
	}
	
	@RequestMapping("/adminChef/edit/{id}")
	public ModelAndView adminChefEdit(@PathVariable("id")int id)
	{
		ModelAndView model = new ModelAndView("AdminChefEdit");
		model.addObject("msg","Hello, Welcome to the Edit Chef Controller");
		model.addObject("id",id);
		Cook chef1 = (Cook) cookDAO.getCookById(id);
		model.addObject("chef1",chef1);
		return model;
	}
	
	@RequestMapping("/adminChefUpdate")
	public ModelAndView adminChefUpdate(@Valid @ModelAttribute("chef")Cook cook,BindingResult result)
	{
		ModelAndView model = new ModelAndView("AdminChef");
		if(result.hasErrors())
		{
			model.addObject("msg","Chef cannot be updated!");
		}
		else
		{
			cookDAO.update(cook);
			model.addObject("msg","Chef updated!");
		}
		return model;
	}
	
	@RequestMapping("/adminChefTable")
	public ModelAndView adminChefTable()
	{
		ModelAndView model = new ModelAndView("AdminChefTable");
		List<Cook> li =(List<Cook>) cookDAO.list();
		String json = new Gson().toJson(li);
		model.addObject("list",json);
		return model;
	}
	
	@RequestMapping("/adminUsers")
	public ModelAndView adminUsers()
	{
		ModelAndView model = new ModelAndView("AdminUsers");
		model.addObject("msg","Welcome to the Admin Users Page!");
		model.addObject("users",new Users());
		return model;
	}
	
	@RequestMapping(value = "/adminUsers",method =  RequestMethod.POST)
	public String adminAddUsers(@Valid @ModelAttribute("users") Users users, BindingResult result, Model model)
	{
		users.setEnable(false);
		users.setRole("ROLE_USER");	
		if(result.hasErrors())
		{
			model.addAttribute("msg","User cannot be added");
			return "AdminUsers";
		}
		else
		{
			model.addAttribute("msg","User added successfully!");
			usersDAO.addUsers(users);
			return "AdminAddUserSuccess";
		}
	}
	
	@RequestMapping("/adminUsers/remove/{id}")
	public ModelAndView adminUsersRemove(@PathVariable("id")int id)
	{
		ModelAndView model = new ModelAndView("AdminUsersTable");
		usersDAO.deletebyid(id);
		List<Users> li =(List<Users>) usersDAO.list();
		String json = new Gson().toJson(li);
		model.addObject("list",json);
		return model;
	}
	
	@RequestMapping("/adminUsers/edit/{id}")
	public ModelAndView adminUsersEdit(@PathVariable("id")int id)
	{
		ModelAndView model = new ModelAndView("AdminUserEdit");
		model.addObject("msg","Hello, Welcome to the Edit User Controller");
		model.addObject("id",id);
		Users user1 = (Users) usersDAO.getUsersObj(id);
		model.addObject("user1",user1);
		return model;
	}
	
	@RequestMapping("/adminUsersTable")
	public ModelAndView adminUsersTable()
	{
		ModelAndView model = new ModelAndView("AdminUsersTable");
		List<Users> li =(List<Users>) usersDAO.list();
		String json = new Gson().toJson(li);
		model.addObject("list",json);
		return model;
	}
	
	@RequestMapping("/adminUsersUpdate")
	public ModelAndView adminUsersUpdate(@Valid @ModelAttribute("user")Users user,BindingResult result)
	{
		ModelAndView model = new ModelAndView("AdminUsers");
		if(result.hasErrors())
		{
			model.addObject("msg","User cannot be updated!");
		}
		else
		{
			usersDAO.update(user);
			model.addObject("msg","User updated!");
		}
		return model;
	}
}
