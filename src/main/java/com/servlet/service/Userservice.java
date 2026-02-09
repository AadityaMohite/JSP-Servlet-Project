package com.servlet.service;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.servlet.dao.Userdao;
import com.servlet.entity.User;

public class Userservice {

	Userdao dao = new Userdao();
	
	   public String saveUser(User user) {
		   
		      String msg = dao.saveUser(user);
		   
		        return msg;
	   }
	
	public ResultSet loginUser(String email, String password) {
		
	    ResultSet rs = dao.loginUser(email, password);
		return rs;
		
		
	}
	public ArrayList<User> getallUsers(){
		
		ArrayList<User> users = dao.getallUsers();
		return users;
		
	}
	
}
