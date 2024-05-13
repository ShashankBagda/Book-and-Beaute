package com.hms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

//import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpSession;

import com.hms.entity.Saloon;

public class SaloonDAO {

	private Connection conn;

	public SaloonDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean registerSaloon(Saloon saloon) {

		boolean f = false;

		try {

			String sql = "insert into saloon(fullName,dateOfBirth,email,phone,password) values(?,?,?,?,?)";

			PreparedStatement pstmt = this.conn.prepareStatement(sql);
			pstmt.setString(1, saloon.getFullName());
			pstmt.setString(2, saloon.getDateOfBirth());
			pstmt.setString(3, saloon.getEmail());
			pstmt.setString(4, saloon.getPhone());
			pstmt.setString(5, saloon.getPassword());

			pstmt.executeUpdate();
			// if query inserted or all ok than
			f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	// getAllSaloons list
	public List<Saloon> getAllSaloon() {

		Saloon saloon = null;
		List<Saloon> solList = new ArrayList<Saloon>();

		try {

			String sql = "select * from saloon order by id desc";
			PreparedStatement pstmt = this.conn.prepareStatement(sql);

			ResultSet resultSet = pstmt.executeQuery();

			while (resultSet.next()) {
				saloon = new Saloon();

				saloon.setId(resultSet.getInt("id"));
				saloon.setFullName(resultSet.getString("fullName"));
				saloon.setDateOfBirth(resultSet.getString("dateOfBirth"));
				saloon.setEmail(resultSet.getString("email"));
				saloon.setPhone(resultSet.getString("phone"));
				saloon.setPassword(resultSet.getString("password"));
				solList.add(saloon);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return solList;
	}

	// get saloon by id
	public Saloon getSaloonById(int id) {

		Saloon saloon = null;

		try {

			String sql = "select * from saloon where id=?";
			PreparedStatement pstmt = this.conn.prepareStatement(sql);
			pstmt.setInt(1, id);

			ResultSet resultSet = pstmt.executeQuery();

			while (resultSet.next()) {
				saloon = new Saloon();

				saloon.setId(resultSet.getInt("id"));
				saloon.setFullName(resultSet.getString("fullName"));
				saloon.setDateOfBirth(resultSet.getString("dateOfBirth"));
				saloon.setEmail(resultSet.getString("email"));
				saloon.setPhone(resultSet.getString("phone"));
				saloon.setPassword(resultSet.getString("password"));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return saloon;
	}

	// update saloons by id
	public boolean updateSaloon(Saloon saloon) {

		boolean f = false;

		try {

			String sql = "update saloon set fullName=?,dateOfBirth=?,email=?,phone=?,password=? where id=?";

			PreparedStatement pstmt = this.conn.prepareStatement(sql);
			pstmt.setString(1, saloon.getFullName());
			pstmt.setString(2, saloon.getDateOfBirth());
			pstmt.setString(3, saloon.getEmail());
			pstmt.setString(4, saloon.getPhone());
			pstmt.setString(5, saloon.getPassword());
			// need to set id also for update
			pstmt.setInt(6, saloon.getId());

			pstmt.executeUpdate();
			// if query updated or all ok than
			f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	// delete saloons by id
	public boolean deleteSaloonById(int id) {

		boolean f = false;

		try {

			String sql = "delete from saloon where id=?";
			PreparedStatement pstmt = this.conn.prepareStatement(sql);
			pstmt.setInt(1, id);

			pstmt.executeUpdate();

			f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	// saloon login
	public Saloon loginSaloon(String email, String password) {

		Saloon saloon = null;

		try {

			String sql = "select * from saloon where email=? and password=?";
			PreparedStatement pstmt = this.conn.prepareStatement(sql);

			pstmt.setString(1, email);
			pstmt.setString(2, password);

			ResultSet resultSet = pstmt.executeQuery();
			System.out.println(pstmt);
			while (resultSet.next()) {
				saloon = new Saloon();

				/*
				 * saloon.setId(resultSet.getInt("id"));
				 * saloon.setFullName(resultSet.getString("fullName"));
				 * saloon.setDateOfBirth(resultSet.getString("dateOfBirth"));
				 * saloon.setQualification(resultSet.getString("qualification"));
				 * saloon.setSpecialist(resultSet.getString("specialist"));
				 * saloon.setEmail(resultSet.getString("email"));
				 * saloon.setPhone(resultSet.getString("phone"));
				 * saloon.setPassword(resultSet.getString("password"));
				 */
				// we can write above commented code or
				// or
				// the below way [here 1 2 3..serially are the column index number of saloon
				// table]

				saloon.setId(resultSet.getInt(1));
				saloon.setFullName(resultSet.getString(2));
				saloon.setDateOfBirth(resultSet.getString(3));
				saloon.setEmail(resultSet.getString(4));
				saloon.setPhone(resultSet.getString(5));
				saloon.setPassword(resultSet.getString(6));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return saloon;

	}

	// show total number of dynamic value in admin panel

	// create all count method here to reduce code line...
	// Count total Saloon Number
	public int countTotalSaloon() {

		int i = 0;

		try {

			String sql = "select * from saloon";
			PreparedStatement pstmt = this.conn.prepareStatement(sql);

			ResultSet resultSet = pstmt.executeQuery();
			while (resultSet.next()) {

				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

	// Count total Appointment Number
	public int countTotalAppointment() {

		int i = 0;

		try {

			String sql = "select * from appointment";
			PreparedStatement pstmt = this.conn.prepareStatement(sql);

			ResultSet resultSet = pstmt.executeQuery();
			while (resultSet.next()) {

				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

	// Count total number of Appointment for a specific saloon
	public int countTotalAppointmentBySaloonId(int saloonId) {

		int i = 0;

		try {

			String sql = "select * from appointment where saloonId=?";
			PreparedStatement pstmt = this.conn.prepareStatement(sql);
			pstmt.setInt(1, saloonId);

			ResultSet resultSet = pstmt.executeQuery();
			while (resultSet.next()) {

				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

	// Count total User Number
	public int countTotalUser() {

		int i = 0;

		try {

			String sql = "select * from user_details";
			PreparedStatement pstmt = this.conn.prepareStatement(sql);

			ResultSet resultSet = pstmt.executeQuery();
			while (resultSet.next()) {

				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

	// Count total Specialist Number
	public int countTotalSpecialist() {

		int i = 0;

		try {

			String sql = "select * from specialist";
			PreparedStatement pstmt = this.conn.prepareStatement(sql);

			ResultSet resultSet = pstmt.executeQuery();
			while (resultSet.next()) {

				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

	// check old password
	public boolean checkOldPassword(int saloonId, String oldPassword) {

		boolean f = false;

		try {

			String sql = "select * from saloon where id=? and password=?";
			PreparedStatement pstmt = this.conn.prepareStatement(sql);
			pstmt.setInt(1, saloonId);
			pstmt.setString(2, oldPassword);

			ResultSet resultSet = pstmt.executeQuery();

			while (resultSet.next()) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	// change password
	public boolean changePassword(int saloonId, String newPassword) {

		boolean f = false;

		try {

			String sql = "update saloon set password=? where id=?";
			PreparedStatement pstmt = this.conn.prepareStatement(sql);
			pstmt.setString(1, newPassword);
			pstmt.setInt(2, saloonId);

			pstmt.executeUpdate();

			f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	// edit saloon profile in saloon panel edit profile
	public boolean editSaloonProfile(Saloon saloon) {

		boolean f = false;

		try {

			//String sql = "update saloon set fullName=?,dateOfBirth=?,qualification=?,specialist=?,email=?,phone=?,password=? where id=?";
			String sql = "update saloon set fullName=?,dateOfBirth=?,email=?,phone=? where id=?";

			PreparedStatement pstmt = this.conn.prepareStatement(sql);
			pstmt.setString(1, saloon.getFullName());
			pstmt.setString(2, saloon.getDateOfBirth());
			pstmt.setString(3, saloon.getEmail());
			pstmt.setString(4, saloon.getPhone());
			//pstmt.setString(7, saloon.getPassword());
			// need to set id also for update
			pstmt.setInt(5, saloon.getId());

			pstmt.executeUpdate();
			// if query updated or all okay than
			f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

}
