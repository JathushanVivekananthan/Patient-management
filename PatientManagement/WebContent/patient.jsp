<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.patient"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/patient.js"></script>
<style>

</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-4">

				<h1>Online patient Registation</h1>

				<form id="formItem" name="formItem">

					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">patient Name:
							</span>
						</div>
						<input id="pName" name="pName" type="text"
							class="form-control form-control-sm">
					</div>


					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Gender: </span>
						</div>
						&nbsp;&nbsp;Male <input type="radio" id="genderm"
							name="gender" value="Male"> &nbsp;&nbsp;Female <input
							type="radio" id="genderf" name="gender" value="Female">
					</div>
					
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName"> phone: </span>
						</div>
						<input id="phone" name="phone" type="text"
							class="form-control form-control-sm">

					</div>



					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Address: </span>
						</div>
						<input id="address" name="address" type="text"
							class="form-control form-control-sm">

					</div>


					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Age: </span>
						</div>
						<input id="age" name="age" type="text"
							class="form-control form-control-sm">

					</div>

						<div class="input-group input-group-sm mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="lblName">Blood Group: </span>
							</div>
							<select id="bloodGroup" name="bloodGroup">
								<option value="0">--Select BloodGroup--</option>
								<option value="A_positive">A positive</option>
								<option value="A_negative">A negative</option>
								<option value="B_positive">B positive</option>
								<option value="B_negative">B negative</option>
								<option value="AB_positive">AB positive</option>
								<option value="AB_negative">AB negative</option>
								<option value="O_positive">O positive</option>
								<option value="O_negative">O negative</option>
						
							</select>
						</div>


					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">NextOfKin: </span>
						</div>
						<input id="nextOfKin" name="nextOfKin" type="text"
							class="form-control form-control-sm">

					</div>



					<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">
						
						<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>

				<div id="alertError" class="alert alert-danger"></div>


			</div>
			<div class='col-12'>
				<div id="divItemsGrid">

					<%
						patient Patient = new patient();
					out.print(Patient.getPatientDetails());
					%>
				</div>

			</div>
		</div>
	</div>

</body>
</html>