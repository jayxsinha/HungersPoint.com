package com.niit.HPwebflow.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.HPbackend.DAO.CategoryDAO;
import com.niit.HPbackend.DAO.ProductDAO;
import com.niit.HPbackend.DAO.UsersDAO;
import com.niit.HPbackend.Model.Category;
import com.niit.HPbackend.Model.Product;
import com.niit.HPbackend.Model.Users;

@Controller
public class HomeController {
	@Autowired
	UsersDAO usersDAO;
	@Autowired
	Users users;
	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	ProductDAO productDAO;
	@RequestMapping(value={"/","/home"})
	public ModelAndView indexPage()
	{
		ModelAndView model = new ModelAndView("index");
		model.addObject("msg","Hi, I am the controller class index page function!");
		return model;
	}
	
	@RequestMapping("/signup")
	public ModelAndView signUp()
	{
		ModelAndView model = new ModelAndView("SignUp");
		model.addObject("users",new Users());
		model.addObject("msg","Hi, I am the signup function of the controller class!");
		return model;
	}
	@RequestMapping("/postsignup")
	public ModelAndView postSignUp(HttpServletRequest request,@ModelAttribute("users")Users users, BindingResult result)
	{
		//byte[] bytes;
		ModelAndView model = new ModelAndView("UsersList");
		List<Users> li = usersDAO.list();
		String json = new Gson().toJson(li);
		model.addObject("list",json);
		/*if(!users.getImage().isEmpty())
		{
			try
			{
				bytes = users.getImage().getBytes();
				String path = request.getSession().getServletContext().getRealPath("/resources/images");
				File f = new File(path);
				BufferedOutputStream bfs = new BufferedOutputStream(new FileOutputStream(f));
				bfs.write(bytes);
				bfs.close();
				
			}
			catch(Exception e)
			{
			System.out.println("Caught: "+e);
			
			}
		}*/
		if(!result.hasErrors())
		{
			model.addObject("msg","User added successfully!");
			usersDAO.addUsers(users);
		}
		else
		{
			model.addObject("msg","User cannot be added successfully!");
		}
		return model;
	}
	@RequestMapping("/user/remove/{id}")
	public ModelAndView delete(@PathVariable("id")int uid)
	{
		ModelAndView model = new ModelAndView("UsersList");
		usersDAO.deletebyid(uid);
		model.addObject("msg","User deleted successfully!");
		return model;
	}
	@RequestMapping("/user/edit/{id}")
	public ModelAndView edit(@PathVariable("id")int uid,@ModelAttribute("users")Users users,BindingResult result)
	{
		ModelAndView model = new ModelAndView("EditPage");
		if(!result.hasErrors())
		{
		model.addObject("msg","User info successfully updated!");
		usersDAO.addUsers(users);
		}
		else
		{
		model.addObject("msg","User info could not be updated!");
		}
		return model;
	}
@RequestMapping("/login")
public ModelAndView login()
{
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	if(!(auth instanceof AnonymousAuthenticationToken))
{
	return new ModelAndView("index");
}
	ModelAndView model = new ModelAndView("Login");
	model.addObject("msg","Enter login Credentials");
	return model;
}

@RequestMapping("/category/{id}")
public ModelAndView categoryView(@PathVariable("id")int id)
{
	ModelAndView model = new ModelAndView("CategoryView");
	model.addObject("msg","Welcome to the Category View Page");
	List<Product> prodlist = categoryDAO.CategoryProdList(id);
	String json = new Gson().toJson(prodlist);
	model.addObject("list",json );
	model.addObject("prod", new Product());
	return model;
}
}
