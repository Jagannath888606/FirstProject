package com.bl.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bl.base.BaseDaoImpl;
import com.bl.model.User;
@SuppressWarnings("serial")
@WebServlet("/registration")
public class Registration extends HttpServlet
{
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		User user=new User();
		user.setUsername(request.getParameter("Username"));
		user.setPassword(request.getParameter("password"));
		user.setFirstName(request.getParameter("firstName"));
		user.setLastName(request.getParameter("lastName"));
		user.setDob(request.getParameter("dob"));
		user.setPhoneNum(request.getParameter("phoneNum"));
		user.setEmail(request.getParameter("email"));
		System.out.println(user.toString());
		BaseDaoImpl.regCustomer(user);
		if(request.getParameter("password").equals(request.getParameter("cpword")))
		{
			System.out.println("Registration successfull");
			request.getRequestDispatcher("LogIn.jsp").include(request, response);
		}
		else
		{
			System.out.println("Enter valid password and conform password");
			request.getRequestDispatcher("Registration.jsp").include(request, response);
		}
		
		}
}
