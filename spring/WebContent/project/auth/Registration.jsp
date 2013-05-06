<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Registration</title>
<!-- <script type="text/javascript" src="../js/jquery-1.9.1.js"></script> -->
<!-- <script type="text/javascript" src="../js/registration.js"></script> -->
<style>
.error {
color: #ff0000;
font-style: italic;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div align="center" style="width: 100%">
	<form:errors path="*" />
		<form:form action="doRegistration" method="post" commandName="user">	
		<form:errors path="*" />	
			<table>
				<tr>
					<td>Name:</td>
					<td><form:input path="username"/></td>
					<td><form:errors path="username" cssClass="error"/></td>
				</tr>
				<tr>
					<td>Gender</td>
					<td>
					<form:radiobutton path="sex" value="Male" label="M"  />
					<form:radiobutton path="sex" value="Female" label="F" />
					</td>
					<td><form:errors path="sex" cssClass="error"/></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><form:input path="email"/></td>
					<td><form:errors path="email" cssClass="error"/></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><form:password path="password"/></td>
					<td><form:errors path="password" cssClass="error"/></td>
				</tr>
				<tr>
					<td>Country</td>
					<td><form:input path="country"/></td>
					<td><form:errors path="country" cssClass="error"/></td>
				</tr>
			</table>
			<input type="submit" value="Register">
		</form:form>
	</div>

</body>
</html>