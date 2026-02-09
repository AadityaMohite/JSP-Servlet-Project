package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.servlet.entity.User;
import com.servlet.service.Userservice;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  String email = req.getParameter("email");
		  String password = req.getParameter("password");
		 
		  Userservice service = new Userservice();
		  
		  ResultSet rs = service.loginUser(email, password);
		  
		       try {
				if(rs.next()) {
					   
					
					
					String username = rs.getString("name");
					String useremail = rs.getString("email");
					String userpassword = rs.getString("password");
					String usergender = rs.getString("gender");
					String usercity = rs.getString("city");
					
					User user = new User(username,useremail,userpassword,usergender,usercity);
					  
					req.setAttribute("user", user);
					req.getRequestDispatcher("/Profile.jsp").forward(req, resp);
					
					
				   }else {
					   System.out.println("Data is empty");
				   }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		  
		  
		  
		  
		 
		  
		  
	}
}
