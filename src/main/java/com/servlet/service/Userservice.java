package com.servlet.service;

import com.servlet.dao.Userdao;
import com.servlet.entity.User;

public class Userservice {

	Userdao dao = new Userdao();
	
	   public String saveUser(User user) {
		   
		      String msg = dao.saveUser(user);
		   
		        return msg;
	   }
	
	
	
}
