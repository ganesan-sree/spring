<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Registration</title>
<script type="text/javascript" src="../js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="../js/registration.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div align="center" style="width: 100%">
		<form action="doRegistration" method="post">
			<table>
				<tr>
					<td>Name:</td>
					<td><input type="text" name="name" id="name" /></td>
				</tr>
				<tr>
					<td>Gender</td>
					<td><input type="radio" name="gender" id="gender" value="M" /><input
						type="radio" name="gender" id="gender" value="F" /></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="text" name="email" id="email" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" id="password" /></td>
				</tr>
				<tr>
					<td>Country</td>
					<td><input type="text" name="country" id="country" /></td>
				</tr>
			</table>
			<input type="submit" value="Register">
		</form>
	</div>
</body>
</html>