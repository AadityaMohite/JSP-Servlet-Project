package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.servlet.service.Userservice;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  String email = req.getParameter("email");
		  String password = req.getParameter("password");
		  String name = req.getParameter("name");
		  Userservice service = new Userservice();
		  
		  boolean msg = service.loginUser(email, password);
		  
		  
		  if(msg==true) {
			  
			  req.setAttribute("name", name);
			  req.getRequestDispatcher("/Profile.jsp").forward(req, resp);
			  	  
		  }else {
			  req.setAttribute("msg", "Invalid Credentials are filled! please try again");
			  req.getRequestDispatcher("/Login.jsp").include(req, resp);
		  }
				  
		  
		  
	}
}
