package com.niit.HPbackend.DAO;


import java.util.*;
import com.niit.HPbackend.Model.Users;

public interface UsersDAO {
	public void addUsers(Users us);
	public void getUsers(int id);
	public Users getuser(String name);
	public Users getUsersObj(int id);
	public List<Users> list();
	public void deletebyid(int id);
	public void update(Users user);
}
