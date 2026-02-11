package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import com.servlet.entity.User;
import com.servlet.service.Userservice;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/getFemaleuser")
public class getFemaleuser extends HttpServlet {

	 @Override
 	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
 		Userservice service = new Userservice();
 		
 		String gender = req.getParameter("gender");
 		
 		
 		
 		   ArrayList<User> users = service.getMaleusers(gender);
 		
 		   req.setAttribute("users", users);
 		   
 		req.getRequestDispatcher("/Femaleuser.jsp").forward(req, resp);
 		
 		
 		
 	}
	
	
}
