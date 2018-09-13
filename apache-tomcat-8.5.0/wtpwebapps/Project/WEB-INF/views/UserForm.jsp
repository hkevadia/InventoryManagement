<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap core CSS-->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="resources/vendor/bootstrap/css/datepicker.css"
	rel="stylesheet" />
<!-- Page level plugin CSS-->
<link href="resources/vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="resources/css/sb-admin.css" rel="stylesheet">


<style>
.card-header {
	background-color: rgb(0, 123, 255);
}

.dropdown-menu {
	background-color: #ececec !important;;
	border: 1px solid #0067CC !important;
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
					<i class="fa fa-user"></i> User Form
				</div>
				<div class="card-body">

					<form:form action="UserCreationSave" method="post"
						modelAttribute="user">

						<div class="table-responsive">
							<table class="" width="100%" cellspacing="0">


								<tr>
									<td><label for="userid">User Name</label></td>
									<td><form:input path="userid" id="userid" type="text" /></td>
								</tr>
								<tr>
									<td><label for="epassword">Password</label></td>
									<td><form:input path="epassword" id="epassword"
											type="password" /></td>
								</tr>
								<tr>
									<td><label for="epassword">Re-Type Password</label></td>
									<td><input type="password" /></td>
								</tr>
								<tr>
									<td><label for="firstname">First Name</label></td>
									<td><form:input path="firstname" id="firstname"
											type="text" /></td>
								</tr>
								<tr>
									<td><label for="dob">Date of Birth</label></td>
									<td><form:input path="dob" id="dob" name="dob" type="text"
											placeholder="DD/MM/YYYY" /></td>
								</tr>
								<tr>
									<td><label for="gender">Gender</label></td>
									<td><form:select path="gender">
											<form:option value="MALE" label="Male" />
											<form:option value="FEMALE" label="Female" />
										</form:select></td>
								</tr>
								<tr>
									<td><label for="email">Email</label></td>
									<td><form:input path="email" id="email" type="text" /></td>
								</tr>
								<tr>
									<td><label for="tel">Telephone</label></td>
									<td><form:input path="tel" id="tel" type="text" /></td>
								</tr>
								<tr>
									<td><label for="gender">Address</label></td>
									<td><form:input path="address" id="address" type="text" /></td>
								</tr>
								<tr>
									<td><label for="city">City</label></td>
									<td><form:input path="city" id="city" type="text" /></td>
								</tr>
								<tr>
									<td><label for="province">Province</label></td>
									<td><form:input path="province" id="province" type="text" /></td>
								</tr>
								<tr>
									<td><label for="country">Country</label></td>
									<td><form:input path="country" id="country" type="text" /></td>
								</tr>
								<tr>
									<td><label for="pincode">Pincode</label></td>
									<td><form:input path="pincode" id="pincode" type="text" /></td>
								</tr>
								<tr>
									<td><label for="ecategory">Category</label></td>
									<td><form:select path="ecategory">
											<form:option value="NONE" label="--- Select ---" />
											<form:option value="ADMIN" label="Admin" />
											<form:option value="REGIONALMANAGER" label="Regional Manager" />
											<form:option value="PROJECTMANAGER" label="Project Manager" />
											<form:option value="SUPERVISOR" label="Supervisor" />
											<form:option value="EMPLOYEE" label="Employee" />
										</form:select></td>
								</tr>
								<tr>
									<td colspan="2" align="center"><form:button
											class="btn btn-primary">Save</form:button></td>
								</tr>





							</table>
						</div>
						<form:input path="id" id="id" type="hidden" />
						<form:input path="version" id="version" type="hidden" />
					</form:form>
				</div>
			</div>



		</div>
		<!-- /.container-fluid-->
		<!-- /.content-wrapper-->

		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fa fa-angle-up"></i>
		</a>

		<!-- Bootstrap core JavaScript-->
		<script src="resources/vendor/jquery/jquery.min.js"></script>
		<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="resources/vendor/bootstrap/js/bootstrap-datepicker.js">
		<!-- Core plugin JavaScript-->
			<script src="resources/vendor/jquery-easing/jquery.easing.min.js">
		</script>
		<!-- Page level plugin JavaScript-->
		<script src="resources/vendor/chart.js/Chart.min.js"></script>
		<script src="resources/vendor/datatables/jquery.dataTables.js"></script>
		<script src="resources/vendor/datatables/dataTables.bootstrap4.js"></script>
		<!-- Custom scripts for all pages-->
		<script src="resources/js/sb-admin.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$('#dob').datepicker({
					format : 'dd/mm/yyyy',
				});
			})
		</script>

	</div>

</body>
</html>