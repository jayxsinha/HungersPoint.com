package com.niit.HPbackend;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

import com.niit.HPbackend.Config.AppContextConfig;
import com.niit.HPbackend.DAO.CartDAO;
import com.niit.HPbackend.DAO.CategoryDAO;
import com.niit.HPbackend.DAO.ProductDAO;
import com.niit.HPbackend.Model.Cart;
import com.niit.HPbackend.Model.Category;
import com.niit.HPbackend.Model.Product;
import com.niit.HPbackend.Model.Users;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
        context.scan("com.niit");
        context.refresh();
        
       CartDAO cartDAO = (CartDAO)context.getBean("cartDAO");
       Cart cart = (Cart)context.getBean("cart");
       
      Product product = new Product();
      product.setPid(3);
       cart.setPrd(product);
       cart.setPrice(2000);
       cart.setQuantity(2);
        Users users = new Users();
       users.setId(2);
       cart.setUser(users);
       
       cartDAO.addCart(cart);
       
    }
}
