package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import com.servlet.entity.User;
import com.servlet.service.Userservice;

/**
 * Servlet implementation class getallusers
 */
@WebServlet("/getallusers")
public class getallusers extends HttpServlet {
	
	
	   
	     @Override
	    	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    		// TODO Auto-generated method stub
	    		Userservice service = new Userservice();
	    		ArrayList<User> users = service.getallUsers();
	    		
	    		req.setAttribute("users", users);
	    		
	    		req.getRequestDispatcher("/allusers.jsp").forward(req, resp);
	    		
	    		
	    		
	    		
	    	}
	

}
