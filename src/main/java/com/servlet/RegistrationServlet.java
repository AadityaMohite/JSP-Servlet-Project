package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.servlet.entity.User;
import com.servlet.service.Userservice;

@WebServlet("/do-RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
	    String city = request.getParameter("city");
		
		User user = new User(name,email,password,gender,city);
		
		   Userservice service = new Userservice();
		   
		      String msg = service.saveUser(user);
		      
		      response.getWriter().println(msg);
		
		
		
	}

}
