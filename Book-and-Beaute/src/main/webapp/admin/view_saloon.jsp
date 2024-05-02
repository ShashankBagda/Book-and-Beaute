<%@page import="com.hms.entity.Saloon"%>
<%@page import="com.hms.dao.SaloonDAO"%>
<%@page import="com.hms.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.hms.db.DBConnection"%>
<%@page import="com.hms.dao.SpecialistDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- for jstl tag -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- end of jstl tag -->

<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Saloon page</title>
<%@include file="../component/allcss.jsp"%>

<!-- customs css for this page -->
<style type="text/css">
.my-card {
	box-shadow: 0px 0px 10px 1px maroon;
	/*box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.3);*/
}
</style>
<!-- end of customs css for this page -->

</head>
<body>
	<%@include file="navbar.jsp"%>


	<div class="container-fluid p-3 wrapper-container">
		<div class="row">
			
			<div class="col-md-12">
				<div class="card my-card">
					<div class="card-body">
						<p class="fs-3 text-center text-danger">List of Barber</p>

						<!-- message print -->
						<!-- for success msg -->
						<c:if test="${not empty successMsg }">
							<p class="text-center text-success fs-3">${successMsg}</p>
							<c:remove var="successMsg" scope="session" />
						</c:if>

						<!-- for error msg -->
						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-3">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<!-- End of message print -->

						<!-- table for saloon list -->

						<table class="table table-striped">
							<thead>
								<tr class="table-info">
									<!-- <th scope="col">ID</th> -->
									<th scope="col">Full Name</th>
									<th scope="col">Email</th>
									<th scope="col">Phone</th>
									<th colspan="2" class="text-center" scope="col">Action</th>
								</tr>
							</thead>
							<tbody>

								<%
								SaloonDAO solDAO2 = new SaloonDAO(DBConnection.getConn());
								List<Saloon> listOfDoc = solDAO2.getAllSaloon();
								for (Saloon saloonLst : listOfDoc) {
								%>
								<tr>
									<%-- <th scope="row"><%= saloonLst.getId()%></th> --%>
									<th><%=saloonLst.getFullName()%></th>
									<td><%=saloonLst.getEmail()%></td>
									<td><%=saloonLst.getPhone()%></td>


									<td><a class="btn btn-sm btn-primary"
										href="edit_saloon.jsp?id=<%=saloonLst.getId()%>">Edit</a></td>
									<td><a class="btn btn-sm btn-danger" href="../deleteSaloon?id=<%= saloonLst.getId() %>">Delete</a></td>



								</tr>
								<%
								}
								%>


							</tbody>
						</table>

						<!-- end table for saloon list -->


					</div>

				</div>
			</div>
		</div>
	</div>









</body>
</html>