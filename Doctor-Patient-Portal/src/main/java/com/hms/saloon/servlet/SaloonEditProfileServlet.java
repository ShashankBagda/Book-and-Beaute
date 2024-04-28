package com.hms.saloon.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hms.dao.SaloonDAO;
import com.hms.db.DBConnection;
import com.hms.entity.Saloon;

@WebServlet("/saloonEditProfile")
public class SaloonEditProfileServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			// get all data which is coming from doctor.jsp doctor details
			String fullName = req.getParameter("fullName");
			String dateOfBirth = req.getParameter("dateOfBirth");
			String email = req.getParameter("email");
			String phone = req.getParameter("phone");
			//String password = req.getParameter("password");

			
			int id = Integer.parseInt(req.getParameter("saloonId"));

			Saloon saloon = new Saloon(id, fullName, dateOfBirth,email, phone, "");

			SaloonDAO solDAO = new SaloonDAO(DBConnection.getConn());

			boolean f = solDAO.editSaloonProfile(saloon);

			HttpSession session = req.getSession();

			if (f == true) {
				Saloon updateSaloonObj = solDAO.getSaloonById(id);
				session.setAttribute("successMsgForD", "Saloon update Successfully");
				session.setAttribute("saloonObj", updateSaloonObj); // over ride or update old session value to new updated doctor value.
				resp.sendRedirect("saloon/edit_profile.jsp");

			} else {
				session.setAttribute("errorMsgForD", "Something went wrong on server!");
				resp.sendRedirect("saloon/edit_profile.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
