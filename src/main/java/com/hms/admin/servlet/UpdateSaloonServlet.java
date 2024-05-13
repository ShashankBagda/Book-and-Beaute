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
import com.hms.entity.Saloon;

@WebServlet("/updateSaloon")
public class UpdateSaloonServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			// get all data which is coming from doctor.jsp doctor details
			String fullName = req.getParameter("fullName");
			String dateOfBirth = req.getParameter("dateOfBirth");
			String email = req.getParameter("email");
			String phone = req.getParameter("phone");
			String password = req.getParameter("password");
			
			//here need to get id also...for updating the doctor details
			//doctors will update based on respective doctor's id
			int id = Integer.parseInt(req.getParameter("id"));

			Saloon doctor = new Saloon(id, fullName, dateOfBirth,email, phone, password);

			SaloonDAO docDAO = new SaloonDAO(DBConnection.getConn());

			boolean f = docDAO.updateSaloon(doctor);

			HttpSession session = req.getSession();

			if (f == true) {
				session.setAttribute("successMsg", "Barber Data update Successfully");
				resp.sendRedirect("admin/view_saloon.jsp");

			} else {
				session.setAttribute("errorMsg", "Something went wrong on server!");
				resp.sendRedirect("admin/view_saloon.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
