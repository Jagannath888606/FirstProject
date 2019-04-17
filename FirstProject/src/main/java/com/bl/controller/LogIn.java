package com.bl.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bl.services.BaseService;
import com.bl.services.BaseServiceImpl;

@SuppressWarnings("serial")
@WebServlet("/login")
public class LogIn extends HttpServlet 
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		String username = request.getParameter("uname");
		String password = request.getParameter("password");
		System.out.println(username + " :: " + password);
		if (username.trim().length() >= 0 && username != null && password.trim().length() >= 0 && password != null) {
			BaseService loginService = new BaseServiceImpl();
			boolean bool = loginService.login(username, password);
			if (bool) 
			{
				System.out.println("***Login is successfull!***");
				request.setAttribute("username", username);
				request.setAttribute("msg", "Login Success....");
				request.getRequestDispatcher("index.jsp").include(request, response);
			}
			else 
			{
				System.out.println("Enter valid data");
				request.getRequestDispatcher("LogIn.jsp").include(request, response);
			}
		} 
		else 
		{
			System.out.println("Enter valid data");
		}
		
	}
}
