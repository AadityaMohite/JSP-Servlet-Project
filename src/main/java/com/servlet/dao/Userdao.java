package com.servlet.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.servlet.entity.User;
import com.servlet.utility.JdbcConnection;

public class Userdao {
       
	
		
		Connection con = JdbcConnection.getConnection();
		
		public String saveUser(User user) {
			
			PreparedStatement ps = null;
			
			try {
				
				ps  =  con.prepareStatement("insert into User values (?,?,?,?,?);");
				ps.setString(1, user.getname());
				ps.setString(2, user.getemail());
				ps.setString(3,user.getpassword());
				ps.setString(4, user.getgender());
				ps.setString(5, user.getcity());
				
				ps.executeUpdate();
				
			}catch(Exception e) {
				System.out.println(e.getMessage());
			}
			
			return "User Registerd Sucessfully";
			
		}
		
		
		
		
	
	
	
}
