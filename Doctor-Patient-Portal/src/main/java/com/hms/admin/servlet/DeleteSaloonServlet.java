package com.hms.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hms.dao.SaloonDAO;
import com.hms.db.DBConnection;

@WebServlet("/deleteSaloon")
public class DeleteSaloonServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//get id(which is coming as string value) and convert into int	
		int id = Integer.parseInt(req.getParameter("id"));
		
		SaloonDAO solDAO = new SaloonDAO(DBConnection.getConn());
		HttpSession session = req.getSession();
		
		boolean f = solDAO.deleteSaloonById(id);
		
		if(f==true) {
			session.setAttribute("successMsg", "Saloon Deleted Successfully.");
			resp.sendRedirect("admin/view_saloon.jsp");
		}
		else {
			session.setAttribute("errorMsg", "Something went wrong on server!");
			resp.sendRedirect("admin/view_saloon.jsp");
		}
	}
	
	

}
