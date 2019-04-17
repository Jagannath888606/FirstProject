package com.bl.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bl.services.BaseService;
import com.bl.services.BaseServiceImpl;

/**
 * Servlet implementation class ForgotPassword
 */
@WebServlet("/forgotpassword")
public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPassword() {
        super();
        
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String userName=request.getParameter("uname");
		String password=request.getParameter("password");
		System.out.println(userName + "::" +password);
		if(request.getParameter("password").equals(request.getParameter("cpword")))
		{
			BaseService loginService = new BaseServiceImpl();
			boolean bool = loginService.forgot(userName, password);
			PrintWriter pw =response.getWriter();
			pw.print("<body>");
			pw.print("<a href ='LogIn.jsp'>Back</a><br>");
			pw.print("</body>");
			if(bool)
			{
				pw.print("Password is successfully updated");
				System.out.println("Password is successfully updated");
				
			}
			else
			{
				System.out.println("Wrong details you have enter please try again!!");
				request.getRequestDispatcher("ForgotPassword.jsp").include(request, response);
			}
		
		}
		else
		{
			System.out.println("password and confrompassword is wrong ");
		}
		
	}

}
