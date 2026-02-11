package com.servlet.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

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
		
		public ResultSet loginUser(String email,String password) {
			
			
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			try {
				ps = con.prepareStatement("select * from user where email=? and password=?; ");
				ps.setString(1, email);
				ps.setString(2, password);
				
				rs = ps.executeQuery();
				
			}catch(Exception e) {
				System.out.println(e.getMessage());
			}
		
			
			
		return rs;
			
			
			
			
		}
		
		
		public ArrayList<User> getallUsers() {
			ResultSet rs = null;
			ArrayList<User> users = new ArrayList<User>();
			try {
				Statement stm = con.createStatement();
			 rs =stm.executeQuery("Select * from user;");
				while(rs.next()) {
					
					String name = rs.getString("name");
					String email = rs.getString("email");
					String password = rs.getString("password");
					String gender = rs.getString("gender");
					String city = rs.getString("city");
					
					User user = new User(name,email,password,gender,city);
					users.add(user);
					
				}
			 
				
				
			}catch(Exception e) {
				System.out.println(e.getMessage());
			}
			
			return users;
			
			
		}
		
		public ArrayList<User> getMaleusers(String gender) {
			PreparedStatement ps = null;
			ResultSet rs = null;
			ArrayList<User> users = new ArrayList<User>();
			try {
				
				ps = con.prepareStatement("Select * from user where gender=?;");
				ps.setString(1, gender);
				
				rs = ps.executeQuery();
				
				while(rs.next()) {
					
					String name = rs.getString("name");
					String email = rs.getString("email");
					String password = rs.getString("password");
					String gender2 = rs.getString("gender");
					String city = rs.getString("city");
					
					User user = new User(name,email,password,gender2,city);
					users.add(user);
				}
				
				
				
				
			}catch(Exception e) {
				System.out.println(e.getMessage());
			}
			
			
			return users;
		}
		
		public ArrayList<User> getFemaleuser(String gender) {
			PreparedStatement ps = null;
			ResultSet rs = null;
			ArrayList<User> users = new ArrayList<User>();
			try {
				
				ps = con.prepareStatement("Select * from user where gender=?");
				ps.setString(1, gender);
				
			rs = ps.executeQuery();
			
			while(rs.next()) {
				String name = rs.getString("name");
				String email = rs.getString("email");
				String password = rs.getString("password");
				String gender2 = rs.getString("gender");
				String city = rs.getString("city");
				
				User user = new User(name,email,password,gender2,city);
				users.add(user);
							
			}
				
				
				
				
				
				
			}catch(Exception e) {
				System.out.println(e.getMessage());
			}
			
			return users;
		}
		
	
	
	
}
