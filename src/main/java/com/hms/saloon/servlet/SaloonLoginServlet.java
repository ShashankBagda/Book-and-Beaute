package com.hms.saloon.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hms.dao.SaloonDAO;
import com.hms.dao.UserDAO;
import com.hms.db.DBConnection;
import com.hms.entity.Saloon;


@WebServlet("/saloonLogin")
public class SaloonLoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//get email and password which is coming from doctor_login.jsp page
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		//create session
		HttpSession session = req.getSession();

		//create DB connection
		SaloonDAO solDAO = new SaloonDAO(DBConnection.getConn());
		
		//call loginSaloon() method for doctor login which method declared in SaloonDAO 
		Saloon saloon = solDAO.loginSaloon(email, password);
		if (saloon != null) {
			//means doctor is valid or exist
			//then store particular logged in doctor object in session
			session.setAttribute("saloonObj", saloon);
			//and redirect the particular doctor index page which is reside doctor folder
			resp.sendRedirect("saloon/index.jsp");//doctor index means dashboard of doctors
		} else {
			session.setAttribute("errorMsg", "Invalid email or password");
			resp.sendRedirect("saloon_login.jsp");
		}

	}

}
