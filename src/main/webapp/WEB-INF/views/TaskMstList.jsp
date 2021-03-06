<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Inventory system</title>
<!-- Bootstrap core CSS-->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Page level plugin CSS-->
<link href="resources/vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="resources/css/sb-admin.css" rel="stylesheet">


<style>
.card-header {
	background-color: rgb(23, 162, 184);
}
</style>
</head>
<body>

	<div class="content-wrapper">
		<div class="container-fluid">
			<!-- <ol class="breadcrumb">
				<li class="breadcrumb-item">User Form</li>
			</ol> -->

			<div class="card mb-3">
				<div class="card-header">
					<i class="fa fa-table"></i> ${titleMSG}
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>Task Name</th>
									<th>Task Category</th>
									<th>Task Goal</th>
									<th>Start Date</th>
									<th>End Date</th>
									<th>Link</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>Task Name</th>
									<th>Task Category</th>
									<th>Task Goal</th>
									<th>Start Date</th>
									<th>End Date</th>
									<th>Link</th>
								</tr>
							</tfoot>
							<tbody>


								<c:forEach var="taskmst" items="${taskmstList}">
									<tr>

										<td>${taskmst.taskname}</td>
										<td>${taskmst.taskcategory}</td>
										<td>${taskmst.taskgoal}</td>
										<td>${taskmst.startdate}</td>
										<td>${taskmst.enddate}</td>
										<td><c:choose>
												<c:when test="${from == 'creator'}">
													<a href="deleteTaskMst?id=${taskmst.id}">Delete</a>
											&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="TaskDETStatusView?id=${taskmst.id}">View Status</a>
											&nbsp;&nbsp;&nbsp;&nbsp;
												</c:when>
												<c:otherwise>
													<a href="TaskDETCreation?id=${taskmst.id}">Add Status</a>
											&nbsp;&nbsp;<a href="TaskDETViewList?id=${taskmst.id}">Status
														Submitted</a>
											&nbsp;&nbsp;
											<a href="TaskDETStatusView?id=${taskmst.id}">View Status</a>

												</c:otherwise>
											</c:choose></td>

									</tr>
								</c:forEach>



							</tbody>
						</table>
					</div>
				</div>
				<c:set var="now" value="<%=new java.util.Date()%>" />
				<div class="card-footer small text-muted">
					Updated at
					<fmt:formatDate type="time" value="${now}" />
				</div>
			</div>
		</div>


		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fa fa-angle-up"></i>
		</a>

		<!-- Bootstrap core JavaScript-->
		<script src="resources/vendor/jquery/jquery.min.js"></script>
		<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- Core plugin JavaScript-->
		<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
		<!-- Page level plugin JavaScript-->
		<script src="resources/vendor/chart.js/Chart.min.js"></script>
		<script src="resources/vendor/datatables/jquery.dataTables.js"></script>
		<script src="resources/vendor/datatables/dataTables.bootstrap4.js"></script>
		<!-- Custom scripts for all pages-->
		<script src="resources/js/sb-admin.min.js"></script>
		<!-- Custom scripts for this page-->
		<script src="resources/js/sb-admin-datatables.min.js"></script>
		<!-- <script src="resources/js/sb-admin-charts.min.js"></script> -->

	</div>

</body>
</html>