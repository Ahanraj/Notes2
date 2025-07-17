package com.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.DAO.DAO;
import com.Db.DBConnect;
import com.User.UserDetails;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//To get details from Register.jsp form
		String name = request.getParameter("fname");
		String email = request.getParameter("uemail");
		String password = request.getParameter("upassword");
		
		//Set the details with help of Setter and getter method in UserDetails.java
		UserDetails us = new UserDetails();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);
		
		//Connect DB and add User
		DAO dao = new DAO(DBConnect.getConn());
		boolean f = dao.addUser(us);
		HttpSession session;
		
		//Display the result after adding user
		PrintWriter out = response.getWriter();
		if (f)
		{
			out.print("Registered Successfully...!!!");
		} else 
		{
			out.print("Not Registered");
		}

	}

}